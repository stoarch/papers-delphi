unit storage_StringHashTable;

interface
  uses
    //--[ common ]--
    sysUtils,
    //--[ decal ]--
    Decal,
    //--[ storage ]--
    storage_HashTable
    ;

  type
    TStringHashTable = class( THashTable )
      public
        function get( name : string ) : string;
        procedure put( name, value : string );
    end;//class
implementation

{ TStringHash }

function TStringHashTable.get(name: string): string;
  var
    iter : DIterator;
begin
  result := '<none>';

  iter := m_map.locate( [ name ] );

  if( not atEnd( iter ))then
    result := getString( iter );
end;

procedure TStringHashTable.put(name, value: string);
begin
  m_map.putPair( [name, value] );
end;

end.
