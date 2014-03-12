unit interface_documentKindInfo;

interface

const
  IID_IDocumentKindInfo : TGUID = '{1A91E19E-FD5B-461E-9954-2F500706B437}';

type
  IDocumentKindInfo = interface( IInterface )
                      ['{1A91E19E-FD5B-461E-9954-2F500706B437}']
      //--[ accessors ]--
      function get_caption() : string;
      function get_kind_index() : integer;

      //--[ mutators ]--
      procedure set_caption( value : string );
      procedure set_kind_index( value : integer );

      //--[ properties ]--
      property caption : string read get_caption write set_caption;
      property kind_index : integer read get_kind_index write set_kind_index;
  end;//interface

implementation

end.
 