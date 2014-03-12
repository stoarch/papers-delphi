unit interface_sql_documentMessageReceiver_Compound;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_compoundMessage,
    interface_sql_documentMessageReceiver,
    //--[ types ]--
    type_Message
    ;

  const
    IID_Isql_documentMessageReceiver_Compound : TGUID = '{B307A7A6-B20D-4CAB-931D-5605E72667ED}';

  type
    Isql_documentMessageReceiver_Compound = interface( Isql_documentMessageReceiver )
                                   ['{B307A7A6-B20D-4CAB-931D-5605E72667ED}']
      //--[ accessors ]--
      function get_compound_msg() : ICompoundMessage;

      //--[ mutators ]--
      procedure set_compound_msg( value : ICompoundMessage );

      //--[ properties ]--
      property CompoundMessage : ICompoundMessage read get_compound_msg write set_compound_msg;
    end;//interface

implementation

end.
