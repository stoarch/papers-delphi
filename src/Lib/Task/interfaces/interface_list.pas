unit interface_list;

interface
  uses
    //--[ common ]--
    classes
    ;

const
  IID_IList : TGuid = '{698CDD50-FAF5-42B6-9324-2DA8E660F4C0}';

type
  IList = interface( IInterface )
               ['{698CDD50-FAF5-42B6-9324-2DA8E660F4C0}']

    function Add(Item: Variant): Integer;
    procedure Clear;
    procedure Delete(Index: Integer);
    procedure Exchange(Index1, Index2: Integer);
    function Expand: TList;
    function Extract(Item: Variant): Variant;
    function First: Variant;
    function IndexOf(Item: Variant): Integer;
    procedure Insert(Index: Integer; Item: Variant);
    function Last: Variant;
    procedure Move(CurIndex, NewIndex: Integer);
    function Remove(Item: Variant): Integer;
    procedure Pack;
    procedure Sort(Compare: TListSortCompare);
    procedure Assign(ListA: IList; AOperator: TListAssignOp = laCopy; ListB: TList = nil);

    //--[ acessors ]--
    function get_capacity() : integer;
    function get_count() : integer;
    function get_item( index : integer ) : variant;

    //--[ mutators ]--
    procedure set_capacity( value : integer );
    procedure set_count( value : integer );
    procedure set_item( index : integer; value : variant );


    //--[ properties ]--
    property Capacity: Integer read get_Capacity write set_Capacity;
    property Count: Integer read get_Count write set_Count;
    property Items[Index: Integer]: Variant read get_item write set_item; default;
  end;//interface

implementation

end.
 