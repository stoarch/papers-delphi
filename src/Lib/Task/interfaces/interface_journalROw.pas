unit interface_journalROw;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_list
    ;

  const
    IID_IJournalRow : TGUID = '{1564E556-5DEB-4A55-A0C8-22A1FFD2FA59}';

  type
    IJournalRow = interface( IList )
                ['{1564E556-5DEB-4A55-A0C8-22A1FFD2FA59}']
      //--[ accessors ]--
      function get_value( index : integer ) : variant;

      //--[ modifiers ]--
      procedure set_value( index : integer; value : variant );

      //--[ properties ]--
      property value[ index : integer ] : variant read get_value write set_value;default;
    end;//interface

implementation

end.
 