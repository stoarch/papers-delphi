//##[ tool_documentInfo ]########################################
// kind: tool unit
// goal: provide functions for work with document info
// protocol:
//  [1] initialization
//     1. When you have a connection and query in Environment
//       call "initialize()" on this unit
unit tool_documentInfo;

interface
  uses
      //--[ common ]--
      sysUtils, myAccess,
      //--[ constants ]--
      const_string,
      //--[ tools ]--
      tool_Environment,
      //--[ types ]--
      type_documentInfo
      ;

  procedure initialize();

  function getCaptionFor( kind : TDocumentKind ) : string;
  function get_caption_for( kind : TDocumentSubKind ): string;

  function getFlagSign( flag : TDocumentFlag ) : string;

  function get_state_caption( state : TdocumentState ) : string;
implementation
  uses
    //--[ pool ]--
    pool_query,
    //--[ storage ]--
    storage_stringHashTable
    ;

  var
    g_doc_sub_kind_captions : TStringHashTable;

   function get_state_caption( state : TdocumentState ) : string;
   begin
     //todo: implement state caption retrieval
     result := ' ';
   end;//func


   procedure initialize();
     var
       query : TMyQuery;
   begin
     query := QueryPool.capture_query();

     try
       query.sql.clear();
       query.sql.add(
        'select * from document_sub_kinds'
       );

       query.open();

       while( not query.eof )do
       begin
         g_doc_sub_kind_captions.put(
            query.fieldByName( 'key_ind' ).asString,
            query.fieldByName( 'caption' ).asString
         )
         ;
         query.next();
       end;//while
       query.close();
     finally
       QueryPool.release_query( query );
     end;//try--finally
   end;//proc

   function get_caption_for( kind : TDocumentSubKind ): string;
   begin
     result := g_doc_sub_kind_captions.get( IntToStr( ord( kind )));
   end;//func

   function getFlagSign( flag : TDocumentFlag ) : string;
   begin
     //todo: implement flag sign retrieval
     result := '';
   end;//func

  function getCaptionFor( kind : TDocumentKind ) : string;
  begin
    case kind of
      DOCUMENT_KIND_COMMUNICATION : result := 'Коммуникационные';
      DOCUMENT_KIND_INTERNAL      : result := 'Черновики';
      DOCUMENT_KIND_ORGANIZATING : result := 'Организационные';
      DOCUMENT_KIND_ORDERS       : result := 'Распорядительные';
      DOCUMENT_KIND_INCOMING     : result := 'Входящие';
      DOCUMENT_KIND_OUTGOING     : result := 'Исходящие';

      else
        result := '';
    end;//case
  end;//func

initialization
  g_doc_sub_kind_captions := TStringHashTable.Create();


finalization
  g_doc_sub_kind_captions.Free();
  g_doc_sub_kind_captions := nil;
end.
 