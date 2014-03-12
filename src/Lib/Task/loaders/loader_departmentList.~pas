unit loader_departmentList;

interface
   uses
     //--[ common ]--
     classes, myAccess,
     //--[ constants ]--
     const_department,
     const_departmentList,
     //--[ factories ]--
     factory_users,
     //--[ interfaces ]--
     interface_department,
     interface_departmentList,
     interface_departmentListLoader,
     //--[ pools ]--
     pool_query
     ;

   type
     TDepartmentListLoader = class( TInterfacedObject, IDepartmentListLoader )
       public
         function execute() : IDepartmentList;
     end;//class

implementation

{ TDepartmentListLoader }

function TDepartmentListLoader.execute: IDepartmentList;
  var
    query : TMyQuery;
    list  : IDepartmentList;
    dept  : IDepartment;
begin
  result := nil;

  query := QueryPool.capture_query();
  assert( query <> nil, 'An pool must provide one more query to work properly!');
  try
    query.sql.clear();
    query.sql.add(
      'select * from departments'
    );
    query.open();

    assert( not query.eof, 'At least one department must be specified!' );

    list := users_factory.createInstance( CLSID_DepartmentList, IID_IDepartmentList ) as IDepartmentList;

    while not query.eof do
     begin
       dept := users_factory.createInstance( CLSID_Department, IID_IDepartment ) as IDepartment;

       dept.dept_id := query.fieldByName( 'key_ind' ).asInteger;
       dept.caption := query.fieldByName( 'caption' ).asString;

       list.add( dept );

       query.next();
     end;//while

     result := list;
  finally
    dept := nil;
    list := nil;
    
    QueryPool.release_query( query );
  end;//try--finally
end;

end.
