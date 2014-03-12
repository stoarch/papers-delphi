unit tool_messageReceiver;

interface
  uses
    //--[ class factories ]--
    paperwork_classFactory,
    //--[ common ]--
    classes, sysUtils,
    //--[ constants ]--
    const_message,
    const_messageReceiver,
    const_user,
    //--[ interfaces ]--
    interface_message,
    interface_messageReceiver,
    interface_userData,
    //--[ factories ]--
    factory_message,
    factory_users
    ;

  type
    TMessageReceiver = class( TInterfacedObject, IMessageReceiver )
    protected
      m_message   : IMessage;
      m_user_data : IUserData;

      function make_message() : IMessage;virtual;
    public
      constructor Create();
      destructor Destroy();override;

      function execute() : boolean;virtual;abstract;

      function get_message() : IMessage;
      procedure set_user_data( data : IUserData );
    end;//class

implementation

{ TMessageReceiver }

constructor TMessageReceiver.Create;
begin
  inherited;

  m_user_data := users_factory.createInstance( CLSID_USERDATA, IID_IUserData ) as IUserData;
  m_message   := make_message();
end;

destructor TMessageReceiver.Destroy;
begin
  try
    m_message := nil;
    m_user_data := nil;
  except
    on e:exception do
     raise Exception.Create( 'TMessageReceiver.Destroy->' + e.message );
  end;//try-except

  inherited;
end;

function TMessageReceiver.get_message: IMessage;
begin
  result := m_message;
end;

function TMessageReceiver.make_message: IMessage;
begin
 result := messages_factory.createInstance( CLSID_Message, IID_IMessage ) as IMessage
end;

procedure TMessageReceiver.set_user_data(data: IUserData);
begin
  m_user_data := ( data );
end;

end.
 