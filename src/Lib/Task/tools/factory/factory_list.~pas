unit factory_list;

interface
  uses
    //--[ common ]--
    activex, classes, sysUtils
    ;

  type
    list_factory = class
      class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
    end;//class factory

implementation

  uses
    //--[ constants ]--
    const_MessagesList,
    //--[ lists ]--
    list_messages
    ;
{ list_factory }

class function list_factory.createInstance(clsid, iid: TGUID): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  //*make an object
  if( IsEqualGUID( clsid, CLSID_MessagesList ))then
    obj := TMessagesList.create()
  else
    //nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'list_factory.createInstance>>Объект такого типа не поддерживается!' );
  end;//if

 intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 if( failed( hr ))then
  begin
    raise Exception.create( 'list_factory.createInstance>>Интерфейс не поддерживается!' );
  end;//if
end;

end.
