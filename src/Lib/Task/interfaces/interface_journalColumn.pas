unit interface_journalColumn;

interface
  uses
    //--[ common ]--
    classes
    ;

  const
    IID_IJournalColumn : TGUID = '{8B3D1B5C-3503-44C0-911A-E5200CB8090E}';

  type
    IJournalColumn = interface( IInterface )
                   ['{8B3D1B5C-3503-44C0-911A-E5200CB8090E}']
      //--[ accessors ]--
      function get_caption() : string;
      function get_width()   : integer;

      //--[ modifiers ]--
      procedure set_caption( value : string );
      procedure set_width( value : integer );

      //--[ properties ]--
      property caption : string read get_caption write set_caption;
      property width   : integer read get_width write set_width;
    end;//interface

implementation

end.
 