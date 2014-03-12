unit loader_journal;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_journal,
    interface_journalLoader,
    interface_userInfo,
    //--[ types ]--
    type_journals
    ;

  type
    TJournalLoader = class( TInterfacedObject, IJournalLoader )
      private
      protected
        m_journal : IJournal;
        m_user    : IUserInfo;
        m_nextJournalKind : TJournalKind;

      public
         //--[ accessors ]--
         function get_journal(): IJournal;
         function get_nextJournalKind() : TJournalKind;

         //--[ modifiers ]--
         procedure set_nextJournalKind( value : TJournalKind );

         //--[ properties ]--
         property journal : IJournal read get_journal;           //return the journal, that loaden at last time, nil - if none
         property nextJournalKind : TJournalKind read get_nextJournalKind write set_nextJournalKind;

         //--[ methods ]--
         function execute() : boolean;virtual;
         procedure setUserInfo( data : IUserInfo );
    end;//class

implementation

{ TJournalLoader }

function TJournalLoader.execute: boolean;
begin
  //implement this in childs
  result := false;
end;

function TJournalLoader.get_journal: IJournal;
begin
 result := m_journal;
end;

function TJournalLoader.get_nextJournalKind: TJournalKind;
begin
  result := m_nextJournalKind;
end;


procedure TJournalLoader.set_nextJournalKind(value: TJournalKind);
begin
  m_nextJournalKind := value;
end;

procedure TJournalLoader.setUserInfo(data: IUserInfo);
begin
  m_user := data;
end;

end.
