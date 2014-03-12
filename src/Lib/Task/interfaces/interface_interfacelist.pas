unit interface_interfacelist;

interface
  uses
     //--[ common ]--
     classes
     ;

const
  IID_IInterfaceList : TGUID = '{61134B93-15B8-438F-9F49-D47CC75C81A5}';


type
  IInterfaceList = interface( IInterface )
                     ['{61134B93-15B8-438F-9F49-D47CC75C81A5}']

    //--[ methods ]--
    procedure Clear;
    procedure Delete(Index: Integer);
    procedure Exchange(Index1, Index2: Integer);
    function Expand: TInterfaceList;
    function First: IInterface;
    function IndexOf(const Item: IInterface): Integer;
    function Add(const Item: IInterface): Integer;
    procedure Insert(Index: Integer; const Item: IInterface);
    function Last: IInterface;
    function Remove(const Item: IInterface): Integer;
    procedure Lock;
    procedure Unlock;


    //--[ accessors ]--
    function GetCapacity
    //--[ mutators ]--
    //--[ properties ]--
    property Capacity: Integer read GetCapacity write SetCapacity;
    property Count: Integer read GetCount write SetCount;
    property Items[Index: Integer]: IInterface read Get write Put; default;
  end;//interface
implementation

end.
 