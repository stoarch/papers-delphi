unit list_departmentList;

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
        property Departments[ index : integer ] : IDeparment read get_department write set_department;
     end;//class

implementation

{ TDepartmentList }

function TDepartmentList.get_department(index: integer): IDepartment;
begin
  result := inherited Items[ index ] as IDepartment;
end;

procedure TDepartmentList.set_department(index: integer;
  value: IDepartment);
begin
  inherited Items[ index ] := value;
end;

end.
 