unit WorkplaceLoader;

interface
  uses classes,
       data_userInfo,
       Frame_UserWorkplace;

type
  WorkplaceLoader = class
  public
    class function getWorkplace_Version( role : TUserRole ) : integer;  //-1 if not found
    class function loadWorkplace( role : TUserRole ) : TFileStream;     //nil if unable
  end;//class utility

implementation

uses Paperwork_DataModule;

{ WorkplaceLoader }

class function WorkplaceLoader.getWorkplace_Version(
  role: TUserRole): integer;

  var
    version : variant;
begin
  with Paperwork_DM do
  begin
    version := user_workplace_info.Lookup( 'role_ind', ord( role ), 'version'  );

    if( not VarIsNull( version ))then
      result := version;
  end;//with

  result := -1;
end;

class function WorkplaceLoader.loadWorkplace(role: TUserRole): TFileStream;
begin
  result := nil;
end;

end.
 