unit WorkplacePool;

interface
  uses classes,
       data_userInfo,
       Frame_UserWorkplace,
       sysutils;

type
  WorkplacePool = class
  public
    class function getWorkplace_Version( role : TUserRole ) : integer;  //-1 if not found
    class procedure storeWorkplace( stream : TFileStream );
    class function getWorkplace( role : TUserRole ) : TUserWorkplace;
  end;//class utility

implementation

{ WorkplacePool }
var
  g_workplaces : TWorkplaceInfoList;

class function WorkplacePool.getWorkplace(role: TUserRole): TUserWorkplace;
begin
  result := g_workplaces.findby( role );
end;

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

class procedure WorkplacePool.storeWorkplace(stream: TFileStream);
begin

end;


initialization
  g_workplaces := TWorkplaceInfoList.Create();


finalization
  if( assigned( g_workplaces ) )then
    FreeAndNil( g_workplaces );
end.
