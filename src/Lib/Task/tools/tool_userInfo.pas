//##[ tool_userInfo ]########################################
// kind: tool unit
// goal: provide functions for work with user info
// protocol:
//  [1] initialization
//     1. When you have a connection and query in Environment
//       call "initialize()" on this unit
unit tool_userInfo;

interface
  uses
      //--[ common ]--
      sysutils, myAccess,
      //--[ constants ]--
      const_string,
      //--[ pool ]--
      pool_query,
      //--[ tools ]--
      tool_Environment,
      //--[ types ]--
      type_userInfo
      ;

procedure initialize();
function get_caption_for( role : TUserRole ): string;

implementation
  uses
    //--[ storage ]--
    storage_stringHashTable
    ;

  var
    g_role_captions : TStringHashTable;

function get_caption_for( role : TUserRole ): string;
begin
  result := g_role_captions.get( IntToStr( ord( role )));
end;//func

procedure initialize();
  var
    query : TMyQuery;
begin
  query := QueryPool.capture_query();
  try
    query.SQL.clear();
    query.sql.add(
      'select * from roles'
    );
    query.open();

    while( not query.eof )do
    begin
      g_role_captions.put(
        query.fieldByName( 'key_ind' ).asString,
        query.fieldByName( 'caption' ).asString
        )
      ;
      query.next();
    end;//while
    query.close();
  finally
    QueryPool.release_query( query );
  end;//try-finally
end;//func


initialization
  g_role_captions := TStringHashTable.Create();

finalization
  g_role_captions.Free;
  g_role_captions := nil;
end.
