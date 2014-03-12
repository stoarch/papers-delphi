unit Paperwork_ClassFactory;

interface
  uses //--[ common ]--
       ActiveX, SysUtils
       ;


type
  paperwrk_ClassFactory = class
    public
      class function createInstance( clsid : TGUID; iid : TGUID ) : IInterface;
  end;//-class-

implementation

uses Classes, dialogs,
     //-- consts --
     const_authentificator,
     const_workplaceInfo,
     const_workplaceInfoList,
     //-- data --
     authentificator
     ;

{ Paperwork_ClassFactory }
class function Paperwrk_ClassFactory.createInstance(
                 clsid: TGUID;
                 iid  : TGUID
     ): IInterface;
  var
    obj : TInterfacedObject;
    intf : IInterface;
    hr  : HRESULT;
begin
  obj := nil;
  result := nil;

  if ( IsEqualGUID( clsid, CLSID_AUTHENTIFICATOR ) ) then
    obj := TAuthentificator.Create()
  else
    // do nothing
  ;//end if

  if( obj = nil )then
  begin
    raise Exception.create( 'Paperwrk_ClassFactory.createInstance>>Объект такого типа не поддерживается!' );
  end;//if

  intf := obj as IInterface;

 hr := intf.queryInterface( iid, result );

 intf := nil;

 //DEBUG: check that objects used in normal way
 assert( obj.refcount = 1, 'Unable to use object. Refcount is invalid!' );

 if( failed( hr ))then
  begin
    raise Exception.create( 'Paperwrk_ClassFactory.createInstance>>Интерфейс не поддерживается!' );
  end;//if
end;//function



initialization
finalization
end.
