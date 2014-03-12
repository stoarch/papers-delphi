unit paperwork_dataModule;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset,
  ZAbstractTable, ZDataset, ZConnection;

type
  Tpaperwork_dm = class(TDataModule)
    main_connection: TZConnection;
    users_table: TZTable;
    roles_table: TZTable;
    document_pipes_table: TZTable;
    document_sub_kinds_table: TZTable;
    document_pipe_avail_kinds_table: TZTable;
    users_tablekey_ind: TIntegerField;
    users_table_nick: TStringField;
    users_table_role_ind: TIntegerField;
    users_table_password: TStringField;
    users_table_fio: TStringField;
    users_table_sign_image: TBlobField;
    roles_tablekey_ind: TIntegerField;
    roles_tablecaption: TStringField;
    roles_tabledescription: TBlobField;
    document_sub_kinds_tablekey_ind: TIntegerField;
    document_sub_kinds_tablecaption: TStringField;
    document_sub_kinds_tabledescription: TBlobField;
    document_pipes_tablekey_ind: TIntegerField;
    document_pipes_tablefrom_user: TIntegerField;
    document_pipes_tableto_user: TIntegerField;
    document_pipe_avail_kinds_tablekey_ind: TIntegerField;
    document_pipe_avail_kinds_tabledocument_pipe_ind: TIntegerField;
    document_pipe_avail_kinds_tabledocument_sub_kind_ind: TIntegerField;
    users_source: TDataSource;
    users_table_role_caption: TStringField;
    document_pipes_source: TDataSource;
    document_pipes_table_to_user_caption: TStringField;
    document_pipe_avail_kinds_table_sub_kind_caption: TStringField;
    document_pipe_avail_kinds_dataSource: TDataSource;
    users_table_nick_fio: TStringField;
    user_look_table: TZTable;
    user_look_tablekey_ind: TIntegerField;
    user_look_tablenick: TStringField;
    user_look_tablerole_ind: TIntegerField;
    user_look_tablepassword: TStringField;
    user_look_tablefio: TStringField;
    user_look_tablesign_image: TBlobField;
    user_look_tablenick_fio: TStringField;
    procedure users_tableCalcFields(DataSet: TDataSet);
    procedure user_look_tableCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure connect();
  end;

var
  paperwork_dm: Tpaperwork_dm;

implementation

{$R *.dfm}

procedure Tpaperwork_dm.connect;
begin
  main_connection.connected := true;
  roles_table.Open;
  document_sub_kinds_table.Open();
  users_table.Open;
  document_pipes_table.Open();
  document_pipe_avail_kinds_table.Open();
  user_look_table.open();
end;

procedure Tpaperwork_dm.users_tableCalcFields(DataSet: TDataSet);
begin
  users_table_nick_fio.asString :=  users_table_nick.asString + ' (' +
                                    users_table_fio.asString  + ')';
end;

procedure Tpaperwork_dm.user_look_tableCalcFields(DataSet: TDataSet);
begin
  user_look_tablenick_fio.asString :=  user_look_tablenick.asString + ' (' +
                                       user_look_tablefio.asString  + ')';
end;

end.
