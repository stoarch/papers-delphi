unit list_documentAttachments;

interface
  uses //--[ common ]--
       contnrs, classes,
       //--[ constants ]--
       const_documentAttachmentList,
       //--[ interface ]--
       interface_documentAttachment,
       interface_documentAttachmentList
       ;

type
  TDocumentAttachmentList = class( TInterfaceList, IDocumentAttachmentList )
  public
    destructor Destroy();override;

    function GetAttachments(index: integer): IDocumentAttachment;
    procedure SetAttachments(index: integer;  const Value: IDocumentAttachment);

    //--[ property ]--
    property Attachments[ index : integer ] : IDocumentAttachment read GetAttachments write SetAttachments;

    //--[ methods ]--
    procedure assign_from( source : IDocumentAttachmentList );
  end;//class

implementation

{ TDocumentAttachmentList }

procedure TDocumentAttachmentList.assign_from(
  source: IDocumentAttachmentList);
  var
    i : integer;
begin
  clear();
  for i := 0 to source.count - 1 do
    add( source.Attachments[ i ] );
end;

destructor TDocumentAttachmentList.Destroy;
begin

  inherited;
end;

function TDocumentAttachmentList.GetAttachments( index: integer): IDocumentAttachment;
begin
  result := inherited items[ index ] as IDocumentAttachment;
end;

procedure TDocumentAttachmentList.SetAttachments(index: integer;
  const Value: IDocumentAttachment);
begin
  inherited items[ index ] := value;
end;

end.
