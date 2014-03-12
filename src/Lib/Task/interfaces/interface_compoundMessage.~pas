unit interface_compoundMessage;

interface
  uses
    //--[ common ]--
      classes,
    //--[ interfaces ]--
      interface_message
    ;

  const
    IID_ICompoundMessage : TGUID = '{5AFED955-26F4-48B5-B07D-889196CF9DD3}';

  type
    //##[ ICompoundMessage ]###############################################
    // pattern: composite
    // kind:    interface
    // goal: provide storing multiple messages in one
    ICompoundMessage = interface( IMessage )
                     ['{5AFED955-26F4-48B5-B07D-889196CF9DD3}']

     //--[ mutators ]--
      procedure set_message( index : integer; const value : IMessage );

     //--[ accessors ]--
      function get_message( index : integer ) : IMessage;
      function get_count()   : integer;

     //--[ properties ]--
      property Messages[ index : integer ] : IMessage read get_message write set_message;
      property count : integer read get_count;
    end;//interface

implementation

end.
 