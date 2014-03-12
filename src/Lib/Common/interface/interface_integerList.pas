unit interface_integerList;

interface
  uses
    //--[ common ]--
    //--[ interfaces ]--
    interface_list
    ;

  const
    IID_IIntegerList : TGUID = '{4ED82E6C-C4D4-43F6-B7C7-F3706E2D22B4}';

  type
    IIntegerList = interface( IList )
                 ['{4ED82E6C-C4D4-43F6-B7C7-F3706E2D22B4}']
      //--[ accessors ]--
      function get_value( index : integer ) : integer; overload;

      //--[ mutators ]--
      procedure set_value( index : integer; value : integer );overload;

      //--[ properties ]--
      property values[ index : integer ] : integer read get_value write set_value;default;
    end;//interface

implementation

end.
 