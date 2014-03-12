unit interface_department;

interface
   uses
     //--[ common ]--
     classes
     ;

   const
     IID_IDepartment : TGUID = '{B8358CCD-F998-400F-9166-E1264AC8A134}';

   type
     IDepartment = interface( IInterface )
                    ['{B8358CCD-F998-400F-9166-E1264AC8A134}']
       //--[ accessors ]--
       function get_dept_id() : integer;
       function get_caption() : string;

       //--[ mutators ]--
       procedure set_dept_id( value : integer );
       procedure set_caption( value : string );

       //--[ properties ]--
       property dept_id : integer read get_dept_id write set_dept_id;
       property caption : string  read get_caption write set_caption;
     end;//interface

implementation

end.
 