unit data_documentKindInfo;

interface
   uses //--[ common ]--
        //--[ constants ]--
        const_documentKindInfo,
        //--[ interfaces ]--
        interface_documentKindInfo
        ;

  type
    TDocumentKindInfo = class( TInterfacedObject, IDocumentKindInfo )
    private
      Fkind_index: integer;
      Fcaption: string;
    public
      destructor Destroy();override;
      //--[ accessors ]--
      function get_caption() : string;
      function get_kind_index() : integer;

      //--[ mutators ]--
      procedure set_caption( value : string );
      procedure set_kind_index( value : integer );

      //--[ properties ]--
      property caption : string read get_caption write set_caption;
      property kind_index : integer read get_kind_index write set_kind_index;
    end;//class

implementation


{ TDocumentKindInfo }


destructor TDocumentKindInfo.Destroy;
begin

  inherited;
end;

function TDocumentKindInfo.get_caption: string;
begin
  result := Fcaption;
end;

function TDocumentKindInfo.get_kind_index: integer;
begin
  result := Fkind_index;
end;

procedure TDocumentKindInfo.set_caption(value: string);
begin
  Fcaption := value;
end;

procedure TDocumentKindInfo.set_kind_index(value: integer);
begin
  Fkind_index := value;
end;

end.
 