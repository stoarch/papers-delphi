unit factory_receiver;

interface
  uses
     //--[ common ]--
     ActiveX, classes, sysUtils
     ;
     
  type
    receiver_factory = class
      class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
    end;//class

implementation
  uses
    //--[ constants ]--
    const_sql_documentMessageReceiver_Compound,
    const_sql_documentMessageReceiver,
    //--[ tools ]--
    tool_sql_documentMessageReceiver,
    tool_sql_documentMessageReceiver_ArrivalChecker,
    tool_sql_documentMessageReceiver_Compound
    ;

{ receiver_factory }

class function receiver_factory.createInstance(
                 clsid: TGUID;
                 iid: TGUID
               ): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  //*make an object
  if( IsEqualGUID( clsid, CLSID_sql_documentMessageReceiver ))then
    obj := Tsql_documentMessageReceiver.create()
  else if ( IsEqualGUID( clsid, CLSID_sql_documentMessageReceiver_ArrivalChecker ))then
    obj := Tsql_documentMessageReceiver_ArrivalChecker.create()
  else if ( IsEqualGUID( clsid, CLSID_sql_documentMessageReceiver_Compound ))then
    obj := Tsql_documentMessageReceiver_Compound.create()
  else
    //nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'receiver_factory.createInstance>>Объект такого типа не поддерживается!' );
  end;//if

 intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 if( failed( hr ))then
  begin
    raise Exception.create( 'receiver_factory.createInstance>>Интерфейс не поддерживается!' );
  end;//if
end;

end.
 