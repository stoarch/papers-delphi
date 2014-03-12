unit interface_journalLoader;

interface
   uses
     //--[ common ]--
     classes,
     //--[ interfaces ]--
     interface_journal,
     interface_userInfo,
     //--[ types ]--
     type_journals
     ;

   const
     IID_IJournalLoader : TGUID = '{FFAC44DA-6686-4F8C-9D6C-29AAB1C67556}';

   type
     IJournalLoader = interface( IInterface )
                     ['{FFAC44DA-6686-4F8C-9D6C-29AAB1C67556}']
       //--[ accessors ]--
       function get_journal(): IJournal;
       function get_nextJournalKind() : TJournalKind;

       //--[ modifiers ]--
       procedure set_nextJournalKind( value : TJournalKind );

       //--[ properties ]--
       property journal : IJournal read get_journal;           //return the journal, that loaden at last time, nil - if none
       property nextJournalKind : TJournalKind read get_nextJournalKind write set_nextJournalKind;

       //--[ methods ]--
       function execute() : boolean;
       procedure setUserInfo( data : IUserInfo );
     end;//interface


implementation

end.
 