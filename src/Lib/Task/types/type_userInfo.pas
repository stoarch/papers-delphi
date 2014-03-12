unit type_userInfo;

interface

type
  TUserRole = type integer;

const
   ROLE_UNKNOWN           = 0;
   ROLE_ADMINISTRATOR     = 1;
   ROLE_OPERATOR          = 2;
   ROLE_OFFICE_MANAGER    = 3;
   ROLE_IT_DEPT_CHIEF     = 4;

type
  TSystemRole = type integer;

const
  SYS_ROLE_UNKNOWN                 = 0;
  SYS_ROLE_SERVER_ADMINISTRATOR    = 1;
  SYS_ROLE_TERMINAL_ADMINISTRATOR  = 2;
  SYS_ROLE_OFFICE_MANAGER          = 3;
  SYS_ROLE_EMPLOYEE                = 4;
  SYS_ROLE_DEPT_CHIEF              = 5;
  SYS_ROLE_OPERATOR                = 6;
  SYS_ROLE_SECRETARY               = 7;
  SYS_ROLE_MAIN_OFFICE_MANAGER     = 8;
  SYS_ROLE_DIRECTOR                = 9;
  SYS_ROLE_PRESIDENT               = 10;
  SYS_ROLE_DIRECTOR_INFR           = 11;
  SYS_ROLE_PAPERWORK_USER          = 12;

implementation

end.
 