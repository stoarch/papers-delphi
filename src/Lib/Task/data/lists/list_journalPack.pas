unit list_journalPack;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_journal,
    interface_journalPack
    ;


  type
    TJournalPack = class( TInterfaceList, IJournalPack )
      public
        //--[ accessors ]--
        function get_journal( index : integer ) : IJournal;

        //--[ mutators ]--
        procedure set_journal( index : integer; journal : IJournal );

        //--[ properties ]--
        property journals[ index : integer ] : IJournal read get_journal write set_journal; default;
    end;//class



implementation

{ TJournalPack }

function TJournalPack.get_journal(index: integer): IJournal;
begin
  result := ( inherited items[ index ] )as IJournal;
end;

procedure TJournalPack.set_journal(index: integer; journal: IJournal);
begin
  inherited items[ index ] := journal;
end;

end.
 