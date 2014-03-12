{$A8,B+,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit _WorkplacePool;

interface
  uses
       //--[ common ]--
       classes, forms, sysutils,  windows,
       //--[ constants ]--
       const_workplaceInfoList,
       //--[ frames ]--
       Frame_UserWorkplace,
       //--[ interfaces ]--
       interface_IProgressDisplayer,
       interface_userInfo,
       interface_workplaceInfoList,
       //--[ tools ]--
       tool_StreamHandler,
       tool_userInfo,
      //--[ types ]--
      type_userInfo
       ;

type
  EWorkplacePool = class( Exception )
  end;//class
  
  WorkplacePool = class
  private
  public
    //--[ class methods ]--
    class procedure clear_workplaces_list;
    class procedure store_workplaces_list;

    class function getWorkplace_Version( role : TUserRole ) : integer;  //-1 if not found

    class function getWorkplace( role : TUserRole ) : TUserWorkplace;
    class procedure release_workplace(role: TUserRole);
    class procedure storeWorkplace( role: TUserRole; stream : TFileStream; export_workplace_name : string );


    class procedure load_workplaces_list();

    class procedure setProgressDisplayer( displayer : IProgressDisplayer );

    class procedure setWorkplacesOwner( aowner : TComponent );

    class procedure initialize();
  end;//class utility

implementation
  uses inifiles, Paperwork_ClassFactory;

{ WorkplacePool }
var
  g_workplaces : IWorkplaceInfoList;
  g_settings   : TMemIniFile;
  g_progress   : IProgressDisplayer;
  g_owner      : TComponent;


procedure next_task( caption : string; curr, total : integer );
begin
  if( g_progress = nil )then
    exit;

  g_progress.setTaskCaption( caption );
  g_progress.setTaskProgress( curr, total );
end;//proc

procedure next_subtask( caption : string; curr, total : integer );
begin
  if( g_progress = nil )then
    exit;

  g_progress.setSubTaskCaption( caption );
  g_progress.setSubTaskProgress( curr, total );
end;//proc

procedure adjust_workplace( path, export_workplace_name : string;
                            role : TUserRole;
                            index : integer );
  var
    workplace : TUserWorkplace;
    module     : HMODULE;
    workplace_class : TWorkplaceClass;
begin
  module := LoadPackage( path );
  if( module = 0 )then
    exit;

  InitializePackage( module );

  g_workplaces.Package[ index ] := module;

  workplace_class := TWorkplaceClass(GetProcAddress(module, pchar( export_workplace_name ) ));
  workplace       := workplace_class.Create( g_owner );

  g_workplaces.Workplaces[ index ] := workplace;
  g_workplaces.Workplace_Path[ index ] := path;
  g_workplaces.ExportWorkplaceName[ index ] := export_workplace_name;
  g_workplaces.Role[ index ] := role;
  g_workplaces.InUse[ index ] := false;
end;

procedure add_workplace( role       : TUserRole;
                         src_stream : TStream;
                         index      : integer = -1;
                         export_workplace_name : string = '' );
  var
    path : string;
    dst_stream : TStream;
begin
  StreamHandler.setProgressDisplayer( g_progress );

  if( index = -1 )then //new workplace
  begin
    path := '.\workplaces\' + get_caption_for( role )  + '.bpl';
    index := g_workplaces.Add( nil, '' );
  end
  else
  begin
     path := g_workplaces.Workplace_path[ index ];
     if( not DeleteFile( pChar( path ) ) )then
       exit;
  end;//if--else

  dst_stream := TFileStream.Create( path, fmCreate, fmShareExclusive );
  try
    StreamHandler.copy_stream( src_stream, dst_stream );
  finally
    if( assigned( dst_stream ))then
      FreeAndNil( dst_stream );
  end;//try--finally


  adjust_workplace( path, export_workplace_name, role, index );
end;


class function WorkplacePool.getWorkplace(role: TUserRole): TUserWorkplace;
  var
    index : integer;
begin
  result := g_workplaces.findby( role );

  index := g_workplaces.findBy( result );

  g_workplaces.InUse[ index ] := true;
end;

class procedure WorkplacePool.release_workplace( role : TUserRole );
  var
    workplace : tUserWorkplace;
    index     : integer;
begin
  workplace := g_workplaces.findby( role );

  if( workplace = nil )then
    exit;

  index     := g_workplaces.findby( workplace );

  g_workplaces.InUse[ index ] := false;
end;//proc

class function WorkplacePool.getWorkplace_Version(role: TUserRole): integer;
  var
    workplace : TUserWorkplace;
begin
  result := -1;
  workplace := g_workplaces.findby( role );

  if( workplace = nil )then
    exit;

  result := workplace.getVersion();
end;

class procedure WorkplacePool.setProgressDisplayer(
  displayer: IProgressDisplayer);
begin
  g_progress := displayer;
end;

class procedure WorkplacePool.setWorkplacesOwner(aowner: TComponent);
begin
  g_owner := aowner;
end;

class procedure WorkplacePool.storeWorkplace(role : TUserRole; stream: TFileStream; export_workplace_name : string);
  var
    workplace : TUserWorkplace;
    path      : string;
    index     : integer;
    module    : HMODULE;
begin
  if( not assigned( g_workplaces ))then
    exit;


  workplace := g_workplaces.findBy( role );
  if( workplace = nil )then//add new
  begin
    add_workplace( role, stream, -1, export_workplace_name );
    exit;
  end;//if

  index := g_workplaces.findBy( workplace );

  if( g_workplaces.InUse[ index ] )then
    raise EWorkplacePool.Create( 'Unable to delete old version. In use!!' );

  path := g_workplaces.Workplace_Path[ index ];
  module := g_workplaces.Package[ index ];

  FreeAndNil( workplace );

  g_workplaces.Workplaces[ index ] := nil;

  UnloadPackage( module );
  g_workplaces.Package[ index ] := 0;

  add_workplace( role, stream, index, export_workplace_name );
end;//proc




class procedure WorkplacePool.load_workplaces_list();
   var
     i, count : integer;
     export_name, path     : string;
     workplace_section     : string;
     role                  : TUserRole;
     index                 : integer;
     str_index             : string;
begin
   count := g_settings.ReadInteger( 'workspaces', 'ws_count', -1 );

   next_task( 'Загрузка рабочих мест', 0, count );

   if( count = -1 )then //nothing found, exit
     exit;

   g_workplaces.Capacity := count;
   for i := 0 to count - 1 do
   begin
     str_index := IntToStr( i );

     next_task( 'Загрузка рабочих мест', i, count );
     next_subtask( 'Загрузка рабочего места ' + str_index, 0, 0 );
     
     workplace_section := 'workplace_' + IntToStr( i );

     export_name := g_settings.ReadString( workplace_section, 'export_name', '' );
     path        := g_settings.ReadString( workplace_section, 'path', '' );
     role        := TUserRole( g_settings.ReadInteger( workplace_section, 'role', 0 ) );

     index := g_workplaces.add( nil, '' );
     adjust_workplace( path, export_name, role, index );
   end;//for
end;

class procedure WorkplacePool.store_workplaces_list();
  var
    i : integer;
    workplace_section     : string;
begin
  g_settings.WriteInteger( 'workspaces', 'ws_count', g_workplaces.Count );
  
  for i := 0 to g_workplaces.Count - 1 do
  begin
     workplace_section := 'workplace_' + IntToStr( i );

     g_settings.WriteInteger( workplace_section, 'role', ord( g_workplaces.Role[ i ] ) );
     g_settings.WriteString( workplace_section, 'path', g_workplaces.Workplace_Path[ i ] );
     g_settings.WriteString( workplace_section, 'export_name', g_workplaces.ExportWorkplaceName[ i ] );
  end;//for
end;//proc

class procedure WorkplacePool.clear_workplaces_list();
  var
    i : integer;
    workplace : TUserWorkplace;
begin
  for i := 0 to g_workplaces.Count - 1 do
  begin
    if( assigned( g_workplaces.Workplaces[ i ] ))then
    begin
      workplace := g_workplaces.Workplaces[ i ];
      FreeAndNil( workplace );
      g_workplaces.Workplaces[ i ] := nil;
    end;//if

    UnloadPackage( g_workplaces.Package[ i ] );
  end;//for
end;//proc

class procedure WorkplacePool.initialize;
  var
    intf : IInterface;
begin
  intf := paperwrk_classFactory.createInstance( CLSID_WORKPLACE_INFO_LIST, IID_IWorkplaceInfoList );
  if( intf <> nil )then
   intf.QueryInterface( IID_IWorkplaceInfoList, g_workplaces );
end;

initialization
  g_progress := nil;

  pointer( g_workplaces ) := nil;

  g_settings := TMemIniFile.Create('.\workplaces\settings.ini');

  g_owner := nil;

  //load_workplaces_list();

finalization

  //g_progress := nil;

  if( assigned( g_settings ))then
  begin
    g_settings.UpdateFile();
    g_settings.Free;

    g_settings := nil;
  end;//if

  g_workplaces := nil;
end.
