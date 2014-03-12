unit storage_HashTable;

interface
  uses
    //--[ common ]--
    sysUtils,
    //--[ decal ]--
    Decal
    ;

  type
    THashTable = class
      protected
        m_map : DHashMap;

      public
        constructor Create();
        destructor  Destroy();override;

        procedure clear();virtual;
        procedure delete( name : string );virtual;

        function count() : integer;
        function is_empty() : boolean;
    end;//class

implementation

{ THashTable }

procedure THashTable.clear;
begin
  m_map.clear;
end;

function THashTable.count: integer;
begin
  result := m_map.size;
end;

constructor THashTable.Create;
begin
  m_map := DHashMap.Create();
end;

procedure THashTable.delete(name: string);
begin
 m_map.removeAt( m_map.locate( [ name ] ) );
end;

destructor THashTable.Destroy;
begin
  clear();
  FreeAndNil( m_map );

  inherited;
end;


function THashTable.is_empty: boolean;
begin
  result := m_map.isEmpty;
end;

end.
 