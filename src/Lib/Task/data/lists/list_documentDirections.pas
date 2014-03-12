unit list_documentDirections;

interface
  uses
    //--[ common ]--
    classes, contnrs,
    //--[ constants ]--
    const_documentDirectionsList,
    //--[ interfaces ]--
    interface_documentDirection,
    interface_documentDirectionsList
    ;

  type
    TDocumentDirectionsList = class( TInterfaceList, IDocumentDirectionsList )
    public
      destructor Destroy();override;

      function GetDirections(index: integer): IDocumentDirection;
      procedure SetDirections(index: integer;  const Value: IDocumentDirection);

      function indexOfUser( user_ind : integer ) : integer;
      function pipeByUser( user_ind : integer ) : integer;
      function userByPipe( pipe_ind : integer ) : integer;
      //--[ property ]--
      property Directions[ index : integer ] : IDocumentDirection read GetDirections write SetDirections;default;
    end;//class

implementation

{ TDocumentDirectionsList }


destructor TDocumentDirectionsList.Destroy;
begin

  inherited;
end;


function TDocumentDirectionsList.GetDirections(
  index: integer): IDocumentDirection;
begin
  result := inherited items[ index ] as IDocumentDirection;
end;

function TDocumentDirectionsList.indexOfUser(user_ind: integer): integer;
  var
    i : integer;
begin
  result := -1;
  for i := 0 to count - 1 do
   begin
     if ( Directions[ i ].to_user.user_index = user_ind ) then
      begin
        result := i;
        break;
      end;//if
   end;//for
end;

function TDocumentDirectionsList.pipeByUser(user_ind: integer): integer;
  var
    i : integer;
begin
  result := -1;

  for i := 0  to count - 1 do
   begin
     if( user_ind = Directions[ i ].to_user.user_index )then
     begin
       result := Directions[ i ].direction_index;
       break;
     end;//if
   end;//for
end;

procedure TDocumentDirectionsList.SetDirections(index: integer;
  const Value: IDocumentDirection);
begin
 inherited items[ index ] := value;
end;

function TDocumentDirectionsList.userByPipe(pipe_ind: integer): integer;
  var
    i : integer;
begin
  result := -1;

  for i := 0  to count - 1 do
   begin
     if( pipe_ind = Directions[ i ].direction_index )then
     begin
       result := Directions[ i ].to_user.user_index;
       break;                        
     end;//if
   end;//for
end;

end.
