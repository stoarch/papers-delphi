unit list_departments;

interface
   uses
     //--[ common ]--
     classes,
     //--[ interfaces ]--
     interface_department,
     interface_departmentList
     ;

   type
     TDepartmentList = class( TInterfaceList, IDepartmentList )
      private

      public
        //--[ accessors ]--
        function get_department( index : integer ) : IDepartment;
        procedure set_department( index : integer; value : IDepartment );
        //--[ properties ]--
        property Departments[ index : integer ] : IDepartment read get_department write set_department;
      //--[ methods ]--
      function findBy( dept_id : integer ) : IDepartment;
     end;//class

implementation

{ TDepartmentList }

function TDepartmentList.findBy(dept_id: integer): IDepartment;
  var
    i : integer;
begin
  result := nil;
  for i := 0 to count - 1 do
   begin
     if( Departments[ i ].dept_id = dept_id )then
     begin
       result := Departments[ i ];
       break;
     end;//if
   end;//for
end;

function TDepartmentList.get_department(index: integer): IDepartment;
begin
  result :=  inherited Items[ index ] as IDepartment;
end;

procedure TDepartmentList.set_department(index: integer;
  value: IDepartment);
begin
  inherited Items[ index ] := value;
end;

end.
 