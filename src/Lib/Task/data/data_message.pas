unit data_message;

interface
  uses
    //--[ common ]--
    classes,
    //--[ constants ]--
    const_message,
    //--[ interfaces ]--
    interface_message,
    //--[ types ]--
    type_message
    ;

  type
    TMessage = class( TInterfacedObject, IMessage )
    private
      m_msg_key_ind,
      m_from_user,
      m_to_user       : integer;
      m_message       : string;
      m_kind          : TMessageKind;
    public
      destructor Destroy();override;

      //--[ accessors ]--
      function get_msg_key_ind() : integer;
      function get_from_user()   : integer;
      function get_to_user()     : integer;
      function get_msg_kind()    : TMessageKind;
      function get_message()     : string;

      //--[ mutators ]--
      procedure set_msg_key_ind( value : integer );
      procedure set_from_user( value : integer );
      procedure set_to_user( value : integer );
      procedure set_msg_kind( value : TMessageKind );
      procedure set_message( value : string );

      //--[ properties ]--
      property msg_key_ind : integer read get_msg_key_ind write set_msg_key_ind;
      property from_user   : integer read get_from_user   write set_from_user;
      property to_user     : integer read get_to_user     write set_to_user;
      property message     : string  read get_message     write set_message;
      property message_kind : TMessageKind read get_msg_kind write set_msg_kind;
    end;//class

implementation

{ TMessage }

destructor TMessage.Destroy;
begin

  inherited;
end;

function TMessage.get_from_user: integer;
begin
  result := m_from_user;
end;

function TMessage.get_message: string;
begin
  result := m_message;
end;

function TMessage.get_msg_key_ind: integer;
begin
  result := m_msg_key_ind;
end;

function TMessage.get_msg_kind: TMessageKind;
begin
  result := m_kind;
end;

function TMessage.get_to_user: integer;
begin
  result := m_to_user;
end;

procedure TMessage.set_from_user(value: integer);
begin
  m_from_user := value;
end;

procedure TMessage.set_message(value: string);
begin
  m_message := value;
end;

procedure TMessage.set_msg_key_ind(value: integer);
begin
  m_msg_key_ind := value;
end;

procedure TMessage.set_msg_kind(value: TMessageKind);
begin
  m_kind := value;
end;

procedure TMessage.set_to_user(value: integer);
begin
  m_to_user := value;
end;

end.
