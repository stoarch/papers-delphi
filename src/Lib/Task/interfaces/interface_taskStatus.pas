unit interface_taskStatus;

interface
  const
    IID_ITaskStatus : TGUID = '{3F08FB3E-52B5-4A4B-9C0D-1903D2BD4CB1}';

  type
    ITaskStatus = interface
             ['{3F08FB3E-52B5-4A4B-9C0D-1903D2BD4CB1}']
      procedure setSubTaskName( subTaskName : string );
      procedure setTaskName( taskName : string );
    end;//interface

implementation

end.
