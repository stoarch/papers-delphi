unit factory_journals;

interface
  uses
   //--[ common ]--
   activex, classes, sysUtils
   ;

  type
    journals_factory = class
      public
        class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
    end;//class utility

implementation
  uses
    //--[ constants ]--
    const_journal,
    const_journalPack,
    //--[ data ]--
    data_journal,
    //--[ lists ]--
    list_journalPack
    ;




{ journals_factory }

class function journals_factory.createInstance(clsid,
  iid: TGUID): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  //*make an object
  if( IsEqualGUID( clsid, CLSID_JournalPack ))then
    obj := TJournalPack.Create()
  else if ( IsEqualGUID( clsid, CLSID_Journal ) ) then
    obj := TJournal.Create()
  else
    //nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'journals_factory.createInstance>>Объект такого типа не поддерживается! CLSID:' + GuidToString( clsid ) );
  end;//if

 intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 if( failed( hr ))then
  begin
    raise Exception.create( 'journals_factory.createInstance>>Интерфейс не поддерживается! IID:' + GuidToString( iid ) );
  end;//if
end;

end.
 