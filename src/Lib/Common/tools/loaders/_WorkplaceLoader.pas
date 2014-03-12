unit _WorkplaceLoader;

interface
  uses
       //--[ common ]--
       classes, sysutils, variants,
       //--[ frames ]--
       Frame_UserWorkplace,
       //--[ interfaces ]--
       Interface_IProgressDisplayer,
       //--[ types ]--
       type_userInfo,
       //--[ tools ]--
       tool_StreamHandler
       ;

type
  WorkplaceLoader = class
  private
  public
    class function getWorkplace_Version( role : TUserRole ) : integer;  //-1 if not found
    class function loadWorkplace( role : TUserRole; var export_class_name : string ) : TFileStream;     //nil if unable

    class procedure setProgressDisplayer( displayer : IProgressDisplayer );
  end;//class utility

implementation

uses Paperwork_DataModule, windows;

var
  g_progress_displayer : IProgressDisplayer;


procedure next_task( caption : string; curr, total : integer );
begin
  if( g_progress_displayer = nil )then
    exit;

  g_progress_displayer.setTaskCaption( caption );
  g_progress_displayer.setTaskProgress( curr, total );
end;//proc

procedure next_subtask( caption : string; curr, total : integer );
begin
  if( g_progress_displayer = nil )then
    exit;

  g_progress_displayer.setSubTaskCaption( caption );
  g_progress_displayer.setSubTaskProgress( curr, total );
end;//proc

{ WorkplaceLoader }

class function WorkplaceLoader.getWorkplace_Version(
  role: TUserRole): integer;

  var
    version : variant;
begin
  with Paperwork_DM do
  begin
    work_query.SQL.Clear();
    work_query.SQL.Add( 'select * from paperwork.user_workplace_info where ' +
      'role_ind = ' + IntToStr( ord( role ) ) );

    work_query.Open();

    version := work_query.FieldByName( 'version' ).AsInteger;
  end;//with

  result := version;
end;

class function WorkplaceLoader.loadWorkplace( role: TUserRole; var export_class_name : string ): TFileStream;

  var
    path    : string;
    localStream : TFileStream;
    remoteStream : TFileStream;
    sTempFileName : string;
begin
  export_class_name := '';

  next_task( 'Загрузка рабочего места', 0, 3 );
  next_subtask( 'Определяю расположение...', 1, 1 );

  with Paperwork_DM do
  begin
    work_query.SQL.Clear();
    work_query.SQL.Add( 'select * from paperwork.user_workplace_info where ' +
      'role_ind = ' + IntToStr( ord( role ) ) );
    work_query.Open();

    path := work_query.FieldByName( 'path_to_file'  ).AsString;
    export_class_name := work_query.FieldByName( 'export_class_name'  ).AsString;
  end;//with

  SetLength( sTempFileName, 255 );
  FillChar( sTempFileName[1], 255, ' ' );

  next_subtask( 'Подготовка к копированию...', 1, 1 );

  GetTempFileName('.\garbage', 'workplace-', 0, pChar( sTempFileName ) );

  localStream  := TFileStream.Create( sTempFileName, fmCreate, fmShareExclusive );
  remoteStream := TFileStream.Create( path, fmOpenRead, fmShareDenyWrite );

  try
    StreamHandler.setProgressDisplayer( g_progress_displayer );
    StreamHandler.copy_stream( remoteStream, localStream );
  finally
    if( assigned( remoteStream ) )then
      FreeAndNil( remoteStream );

    if( assigned( localStream ))then
      FreeAndNil( localStream );
  end;//try--finally

  localStream := TFileStream.Create( sTempFileName, fmOpenRead, fmShareDenyWrite );

  result := localStream;
end;//proc




class procedure WorkplaceLoader.setProgressDisplayer(
  displayer: IProgressDisplayer);
begin
  g_progress_displayer := displayer;
end;

initialization
  g_progress_displayer := nil;

finalization
  g_progress_displayer := nil;
end.
