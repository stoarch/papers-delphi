unit data_department;

interface
  uses
    //--[ common ]--
    classes,
    //--[ interfaces ]--
    interface_department
    ;

  type
    TDepartment = class( TInterfacedObject, IDepartment )
     private
       m_dept_id : integer;
       m_caption : string;
     public
       //--[ accessors ]--
       function get_dept_id() : integer;
       function get_caption() : string;

       //--[ mutators ]--
       procedure set_dept_id( value : integer );
       procedure set_caption( value : string );

       //--[ properties ]--
       property dept_id : integer read get_dept_id write set_dept_id;
       property caption : string  read get_caption write set_caption;
    end;//class

implementation

{ TDepartment }

function TDepartment.get_caption: string;
begin
  result := m_caption;
end;

function TDepartment.get_dept_id: integer;
begin
  result := m_dept_id;
end;

procedure TDepartment.set_caption(value: string);
begin
  m_caption := value;
end;

procedure TDepartment.set_dept_id(value: integer);
begin
  m_dept_id := value;
end;

end.
 