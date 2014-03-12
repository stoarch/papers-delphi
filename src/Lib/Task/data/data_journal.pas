unit data_journal;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_journal
    ;

  type
    TJournal = class( TInterfacedObject, IJournal )
      public
    end;//class

implementation

end.
 