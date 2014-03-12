unit factory_message;

interface
  uses
    //--[ common ]--
    activex, classes, sysutils
    ;

  type
    messages_factory = class
      public
        class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
    end;//class


implementation
   uses
     //--[ constants ]--
     const_documentMessage,
     const_message,
     const_messageScaner,
     //--[ data ]--
     data_documentMessage,
     data_message,
     //--[ scaners ]--
     tool_messageScaner
     ;

{ messages_factory }

class function messages_factory.createInstance(clsid,
  iid: TGUID): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  if( IsEqualGUID( clsid, CLSID_Message ))then
    obj := TDocumentMessage.create()
  else if( IsEqualGUID( clsid, CLSID_DocumentMessage ))then
    obj := TDocumentMessage.create()
  else if ( IsEqualGUID( clsid, CLSID_MessageScaner )) then
    obj := TMessageScaner.create()
  else
    // do nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'message_factory.createInstance>>Объект такого типа не поддерживается!' );
  end;//if

  intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 if( failed( hr ))then
  begin
    raise Exception.create( 'message_factory.createInstance>>Интерфейс не поддерживается!' );
  end;//if
end;

end.
 