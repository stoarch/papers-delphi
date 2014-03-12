unit interface_documentStorage;

interface
  uses
    //--[ interfaces ]--
    interface_document
    ;

  const
    IID_IDocumentStorage : TGUID = '{5C4445A7-AB22-43A4-965D-C700E7099D4E}';

  type
    IDocumentStorage = interface
                      ['{5C4445A7-AB22-43A4-965D-C700E7099D4E}']
      function add( document : IDocument ) : boolean;
      function add_copy( document : IDocument ) : boolean;
      
      procedure delete( index : integer );

      procedure update( document : IDocument );      //... with all document internal structure: attachments, e.t.c
      procedure fast_update( document : IDocument ); //only document info

      function get_user_id() : integer;
      procedure set_user_id( value : integer );

      //--[ properties ]--
      property user_id : integer read get_user_id write set_user_id;
    end;//interface

implementation

end.
 