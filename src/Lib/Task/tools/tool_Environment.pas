unit tool_Environment;

interface
  uses
     //--[ common ]--
     adodb, dialogs, sysutils, windows,
     //--[ compress ]--
     FlexCompress
     ;

  type
    Environment = class
      public
        class function get_object( name : string ) : TObject;
        class function get_string( name : string ) : string;
        class function get_variant( name : string ) : Variant;

        class procedure set_object( name : string; value : TObject );
        class procedure set_string( name : string; value : string );
        class procedure set_variant( name : string; value : Variant );

        class procedure delete_object( name : string );
        class procedure delete_string( name : string );
        class procedure delete_variant( name : string );
    end;//class utility


implementation
  uses
    //--[ containers ]--
    storage_ObjectHashTable,
    storage_StringHashTable,
    storage_VariantHashTable
    ;

  var
    g_objects    : TObjectHashTable;
    g_strings    : TStringHashTable;
    g_variants   : TVariantHashTable;

{ Environment }



class function Environment.get_object(name: string): TObject;
begin
  result := g_objects.get( name );
end;

class function Environment.get_string(name: string): string;
begin
  result := g_strings.get( name );
end;

class procedure Environment.set_object(name: string; value: TObject);
begin
  g_objects.put( name, value );
end;

class procedure Environment.set_string(name, value: string);
begin
  g_strings.put( name, value );
end;

class procedure Environment.delete_object(name: string);
begin
  g_objects.delete( name );
end;

class procedure Environment.delete_string(name: string);
begin
  g_strings.delete( name );
end;

class procedure Environment.delete_variant(name: string);
begin
  g_variants.delete( name );
end;

class function Environment.get_variant(name: string): Variant;
begin
  result := g_variants.get( name );
end;

class procedure Environment.set_variant(name: string; value: Variant);
begin
  g_variants.put( name, value );
end;

initialization
  g_objects    := TObjectHashTable.Create();
  g_strings    := TStringHashTable.Create();
  g_variants   := TVariantHashTable.Create();

finalization
  FreeAndNil( g_variants );
  FreeAndNil( g_objects );
  FreeAndNil( g_strings );
end.
