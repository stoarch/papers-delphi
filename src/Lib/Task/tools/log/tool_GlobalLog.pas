unit tool_GlobalLog;

{.$define DEBUG}
interface
  uses
    sysutils,
    //--[ pools ]--
    pool_query
    ;

  type
     GlobalLog = class
     public
       class procedure Write( message : string );
     end;//class utility

implementation

uses myAccess, winsock, tool_Environment, const_string, syncObjs,
     windows
   {$ifdef DEBUG}
     ,jclDebug, dialogs
   {$endif}
;


var
  g_host_ip : string;
  g_section : TCriticalSection;

function getHostIp() : string;
var
  wsdata : TWSAData;
  hostName : array [0..255] of char;
  hostEnt : PHostEnt;
  addr : PChar;
  ip   : string;
begin
  WSAStartup ($0101, wsdata);
  try
    gethostname (hostName, sizeof (hostName));
    //StrPCopy(hostName, Name);
    hostEnt := gethostbyname (hostName);
    if Assigned (hostEnt) then
      if Assigned (hostEnt^.h_addr_list) then begin
        addr := hostEnt^.h_addr_list^;
        if Assigned (addr) then begin
          IP := Format ('%d.%d.%d.%d', [byte (addr [0]),
          byte (addr [1]), byte (addr [2]), byte (addr [3])]);
          Result := ip;
        end
        else
          Result := '';
      end
      else
        Result := ''
    else begin
      Result := '';
    end;
  finally
    WSACleanup;
  end
end;

{ GlobalLog }

class procedure GlobalLog.Write(message : string);
  var query : TMyQuery;
begin
  g_section.Enter();
  try
    query := QueryPool.capture_query();

    if( query = nil )then exit;

    try
      query.SQL.Clear;
      query.SQL.Add(
        'insert into system_log (message,msg_ip,msg_datetime)'+
        ' values (' +
        '"' + message + '",' +
        '"' + g_host_ip + '",' +
        '"' + FormatDateTime( 'yyyy-mm-dd hh:nn:ss', now() ) + '"' +
        ')'
      );
      query.Execute();
    finally
      QueryPool.release_query( query );
    end;//try-finally
  finally
    g_section.Leave();
  end;//try--finally
end;


initialization
  g_host_ip := getHostIP();
  g_section := TCriticalSection.Create();

finalization
  FreeAndNil( g_section );
end.
