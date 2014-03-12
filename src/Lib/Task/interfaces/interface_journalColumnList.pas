unit interface_journalColumnList;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_journalColumn
    ;

  const
    IID_IJournalColumnList : TGUID = '{19244060-E49A-4C61-91A4-BC994E6FF0A7}';

  type
    IJournalColumnList = interface( IInterfaceList )
                     ['{19244060-E49A-4C61-91A4-BC994E6FF0A7}']
       //--[ accessors ]--
       function get_column( index : integer ) : IJournalColumn;

       //--[ modifiers ]--

       //--[ properties ]--
       property columns[ index : integer ] : IJournalColumn read get_column;default;

       //--[ methods ]--
       procedure add( column : IJournalColumn );overload;
    end;//interface

implementation

end.
 