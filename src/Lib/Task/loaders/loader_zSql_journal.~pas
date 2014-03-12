unit loader_zSql_journal;

interface
  uses
    //--[ common ]--
    sysUtils, zDataset,
    //--[ constants ]--
    const_journal,
    const_journalColumn,
    const_journalRow,
    //--[ interfaces ]--
    interface_journal,
    interface_journalColumn,
    interface_journalColumnList,
    interface_journalRow,
    interface_journalRowList,
    //--[ factories ]--
    factory_journals,
    //--[ loaders ]--
    loader_journal,
    //--[ pools ]--
    pool_query
    ;

  type
    TZSql_JournalLoader = class( TJournalLoader )
      public
        function execute() : boolean;override;
    end;//class


implementation

{ TZSql_JournalLoader }

function TZSql_JournalLoader.execute: boolean;
  const
    STR_VAL  = 1;
    INT_VAL  = 2;
    DBL_VAL  = 3;
    DATE_VAL = 4;
  var
    query : TZQuery;
    cols  : IJournalColumnList;
    column: IJournalColumn;
    rows  : IJournalRowList;
    arow  : IJournalRow;
    journal_id : integer;
begin
  result := false;

  query := QueryPool.capture_query();
  try
    m_journal := journals_factory.createInstance( CLSID_Journal, IID_IJournal ) as IJournal;

    //load the journal base structure
    query.sql.clear();
    query.sql.add(
      'select ' +
      '  journal_columns.journal_id, '+
      '  journal_columns.caption, ' +
      '  journal_columns.width '+
      '  journal.key_ind as journal_key, '+
      '  journal.kind,  '+
      'from journal_columns, journal ' +
      'where journal_id = journal_key ' +
      ' and journal.kind = ' + intToStr( ord( m_nextJournalKind ) )
    );
    query.open();

    cols := m_journal.columns;
    while not query.eof do
     begin
       column := journals_factory.createInstance( CLSID_JournalColumn, IID_IJournalColumn ) as IJournalColumn;

       column.caption := query.fieldByName( 'caption' ).asString;
       column.width   := query.fieldByName( 'width' ).asInteger;

       cols.add( column );
       query.next;
     end;//while

     journal_id := query.fieldByName( 'journal_key' ).asInteger;

    //and load all the data from db
    query.sql.clear();
    query.sql.add(
      'select '+
      ' journal_rows.key_ind as journal_row_key, ' +
      ' journal_rows.journal_id, '+
      ' journal_rows_values.*'+
      'from journal, journal_rows, journal_rows_values '+
      'where '+
      '  journal_id = '+ IntToStr( journal_id ) +
      ' and journal_row_id = journal_row_key ' +
      ' group by journal_row_key'
    );
    query.open();

    rows := journal.rows;

    old_row_id := 0;
    while not query.eof do
     begin
       row_id := query.fieldByName( 'journal_row_id' ).asInteger;
       if( row_id <> old_row_id )then //find new row - fill it with values
       begin
         arow := journals_factory.createInstance( CLSID_JournalRow, IID_IJournalRow ) as IJournalRow;
         old_row_id := row_id;
       end;//if

       row_kind := query.fieldByName( 'value_kind' ).asInteger;
       case row_kind of
         STR_VAL : value := query.fieldByName( 'str_val' ).asString;
         INT_VAL : value := query.fieldByName( 'int_val' ).asInteger;
         DBL_VAL : value := query.fieldByName( 'dbl_val' ).asDouble;
         DATE_VAL: value := query.fieldByName( 'date_val' ).asDateTime;
       end;//case

       arow.values.add(

       rows.add( arow );
       query.next();
     end;//while


    result := true;
  finally
    QueryPool.release_query( query );
  end;//try--finally
end;

end.
