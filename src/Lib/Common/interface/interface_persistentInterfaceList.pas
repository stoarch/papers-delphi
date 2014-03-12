unit interface_persistentInterfaceList;

interface
   uses
      //--[ common ]--
      classes
      ;

const
  IID_IPersistentInterfaceList : TGUID = '{595F1F62-DC9F-41E6-8958-FA61C3AD770C}';

type
  IPersistentInterfaceList = interface( IInterfaceList )
    //--[ methods ]--
    procedure assign_from( source : IPersistentInterfaceList );
  end;//interface

implementation

end.
 