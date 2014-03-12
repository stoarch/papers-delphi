unit interface_message;

interface
  uses
    //--[ common ]--
    classes,
    //--[ types ]--
    type_message
    ;

  const
    IID_IMessage : TGUID = '{5425BC63-0472-4513-91D6-6901FEA76C65}';

  type
    IMessage = interface( IInterface )
               ['{5425BC63-0472-4513-91D6-6901FEA76C65}']
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
      property message_kind: TMessageKind read get_msg_kind write set_msg_kind;
    end;//interface

implementation

end.
