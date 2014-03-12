unit interface_journal;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_journalColumnList,
    interface_journalRowList
    ;

  const
    IID_IJournal : TGUID = '{CC36FF56-18DF-438E-ACEA-DD7932C3F5F5}';

  type
   IJournal = interface( IInterface )
               ['{CC36FF56-18DF-438E-ACEA-DD7932C3F5F5}']

     //--[ accessors ]--
     function get_col_count() : integer;
     function get_columns() :IJournalColumnList;
     function get_row_count() : integer;
     function get_rows()    : IJournalRowList;

     //--[ mutators ]--

     //--[ properties ]--
     property columns : IJournalColumnList read get_columns;
     property rows    : IJournalRowList read get_rows;

     property col_count : integer read get_col_count;
     property row_count : integer read get_row_count;
   end;//interface

implementation

end.
