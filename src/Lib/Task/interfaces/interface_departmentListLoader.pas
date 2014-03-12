unit interface_departmentListLoader;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_departmentList
    ;

  const
    IID_IDepartmentListLoader : TGUID = '{26F3B89C-A7EF-4749-881E-A7C0E8E32E8F}';

  type
    IDepartmentListLoader = interface
                          ['{26F3B89C-A7EF-4749-881E-A7C0E8E32E8F}']
      //--[ methods ]--
      function execute() : IDepartmentList;
    end;//interface

implementation

end.
 