unit interface_IDbTaskStatus;

interface
  uses
    //--[ interface ]--
    interface_taskStatus
    ;

const
  IID_IDbTaskStatus : TGUID = '{E820DF0D-FE84-4CB3-A828-449EC5A3FD28}';

type
  IDbTaskStatus = interface( ITaskStatus )
                  ['{E820DF0D-FE84-4CB3-A828-449EC5A3FD28}']

    procedure setDbName( dbName : string );
  end;//interface

implementation

end.
 