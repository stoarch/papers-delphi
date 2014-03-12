unit interface_documentAttachment;

interface
 uses
     //--[ common ]--
     classes
     ;
     
 const
   IID_IDocumentAttachment : TGUID = '{B9D82FE5-7F00-417D-8516-D09A17CDAADF}';

 type
   IDocumentAttachment = interface( IInterface )
                           ['{B9D82FE5-7F00-417D-8516-D09A17CDAADF}']

     //--[ accessors ]--
     function get_doc_ind() : integer;
     function get_doc_file() : string;                   //which file to attach
     function get_caption() : string;
     function get_URN()     : string;                    //archive URN where attachment is stored

     //--[ mutators ]--
     procedure set_doc_ind( value : integer );
     procedure set_doc_file( value : string );
     procedure set_caption( value : string );
     procedure set_URN( value : string );

     //--[ property ]--
     property doc_ind : integer read get_doc_ind write set_doc_ind;
     property doc_file : string read get_doc_file write set_doc_file;
     property caption : string read get_caption write set_caption;
     property URN : string read get_URN write set_URN;
   end;//interface

implementation

end.
 