unit interface_departmentList;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_department
    ;

  const
    IID_IDepartmentList : TGUID = '{79EA9AC2-601C-4AD7-AE96-925E98B0FF9A}';

  type
    IDepartmentList = interface( IInterfaceList )
                        ['{79EA9AC2-601C-4AD7-AE96-925E98B0FF9A}']
      //--[ accessors ]--
      function get_department( index : integer ) : IDepartment;
      procedure set_department( index : integer; value : IDepartment );
      //--[ properties ]--
      property Departments[ index : integer ] : IDepartment read get_department write set_department;

      //--[ methods ]--
      function findBy( dept_id : integer ) : IDepartment;
    end;//class

implementation

end.
 