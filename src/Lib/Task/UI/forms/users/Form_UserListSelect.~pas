unit Form_UserListSelect;

interface

uses
  //--[ class factories ]--
  paperwork_classFactory,
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Form_Skined, sAlphaListBox, sCheckListBox, sSkinProvider,
  StdCtrls, sButton,
  //--[ constants ]--
  const_userInfoList,
  //--[ factories ]--
  factory_users,
  //--[ interfaces ]--
  interface_userInfoList,
  //--[ storage ]--
  storage_variantHashTable
  ;

type
  TSelectUserList_Form = class(TSkinedForm)
    users_checkListBox: TsCheckListBox;
    select_all_button: TsButton;
    select_button: TsButton;
    unselect_all_button: TsButton;
    cancel_button: TsButton;
    procedure users_checkListBoxClickCheck(Sender: TObject);
    procedure select_all_button1Click(Sender: TObject);
    procedure unselect_all_button1Click(Sender: TObject);
  private
    FuserList, FselectedUserList : IUserInfoList;
    FselectedUserHash : TVariantHashTable;       //enable quick search of selected user by his fio
    Finternal_changes: boolean;

    function get_selected_user_list: IUserInfoList;
    function get_user_list: IUserInfoList;
    procedure set_selected_user_list(const Value: IUserInfoList);
    procedure set_user_list(const Value: IUserInfoList);
    procedure update_ui_selection;
    procedure reload_ui_list;
    procedure reload_selected_user_hash;
    procedure Setinternal_changes(const Value: boolean);
    procedure update_selected_user_list_from_ui;
    procedure select_all_users;
    procedure unselect_all_users;
    procedure check_all_users(checked: boolean);
    { Private declarations }

  protected
   property internal_changes : boolean read Finternal_changes write Setinternal_changes;
  public
    { Public declarations }
    constructor Create( AOwner : TComponent );override;
    destructor  Destroy();override;

    //--[ properties ]--
    property userList : IUserInfoList read get_user_list write set_user_list;
    property selectedUserList : IUserInfoList read get_selected_user_list write set_selected_user_list;
  end;

var
  SelectUserList_Form: TSelectUserList_Form;

implementation

{$R *.dfm}

{ TSelectUserList_Form }

constructor TSelectUserList_Form.Create(AOwner: TComponent);
begin
  inherited;

  FuserList := users_factory.createInstance( CLSID_UserInfoList, IID_IUserInfoList ) as IUserInfoList;
  FselectedUserList := users_factory.createInstance( CLSID_UserInfoList, IID_IUserInfoList ) as IUserInfoList;
  FselectedUserHash := TVariantHashTable.Create();
end;

destructor TSelectUserList_Form.Destroy;
begin
  FreeAndNil( FselectedUserHash );

  FselectedUserList := nil;
  FuserList         := nil;

  inherited;
end;

function TSelectUserList_Form.get_selected_user_list: IUserInfoList;
begin
  update_selected_user_list_from_ui();

  result := FselectedUserList;
end;

procedure TSelectUserList_Form.update_selected_user_list_from_ui();
  var
    i : integer;
begin
  FselectedUserList.Clear;

  for i := 0 to FuserList.count - 1 do
  begin
    if( users_checkListBox.Checked[ i ] )then
    begin
      FselectedUserList.add( FuserList.UserInfo[ i ] );
    end;//if
  end;//for
end;//proc


function TSelectUserList_Form.get_user_list: IUserInfoList;
begin
  result := FuserList;
end;


procedure TSelectUserList_Form.set_selected_user_list(
  const Value: IUserInfoList);
begin
  FselectedUserList := value;

  reload_selected_user_hash();
  update_ui_selection();
end;

procedure TSelectUserList_Form.set_user_list(const Value: IUserInfoList);
begin
  FuserList := value;

  reload_ui_list();
end;

procedure TSelectUserList_Form.reload_ui_list();
 var
   i : integer;
begin
  internal_changes := true;

  try
    users_checkListBox.Items.BeginUpdate();

    users_checkListBox.Items.Clear();
    users_checkListBox.Items.Capacity := FuserList.count;

    for i := 0 to FuserList.count - 1 do
    begin
      users_checkListBox.Items.Add(
        FuserList.UserInfo[ i ].role_name + '(' +
        FuserList.UserInfo[ i ].fio  + ')'
      );
    end;//for

  finally
    users_checkListBox.Items.EndUpdate();
    internal_changes := false;
  end;//try--finally
end;//proc

procedure TSelectUserList_Form.reload_selected_user_hash();
  var
    i : integer;
begin
  FselectedUserHash.clear;

  for i := 0  to FselectedUserList.count - 1 do
  begin
    FselectedUserHash.put( FselectedUserList.UserInfo[ i ].fio, true );
  end;//for
end;//proc


procedure TSelectUserList_Form.update_ui_selection;
  var
    i : integer;
    index : variant;
begin
  internal_changes := true;

  try
    for i := 0 to FuserList.count - 1 do
    begin
      index := FselectedUserHash.get( FuserList.UserInfo[ i ].fio );

      if( index = null )then
        users_checkListBox.Checked[ i ] := false
      else
        users_checkListBox.Checked[ i ] := true
      ;
    end;//for
  finally
    internal_changes := false;
  end;//try--finally
end;

procedure TSelectUserList_Form.Setinternal_changes(const Value: boolean);
begin
  Finternal_changes := Value;
end;

procedure TSelectUserList_Form.users_checkListBoxClickCheck(
  Sender: TObject);
  var
    index : integer;
begin
  inherited;

  if internal_changes then exit;

  index := users_checkListBox.ItemIndex;

  if( users_checkListBox.Checked[ index ] )then
  begin
    FselectedUserHash.put( FuserList.UserInfo[ index ].fio, index );
  end;//if

  if( not users_checkListBox.Checked[ index ] )then
  begin
    FselectedUserHash.delete( FuserList.UserInfo[ index ].fio );
  end;//if

  select_button.enabled := FselectedUserHash.count > 0;
end;

procedure TSelectUserList_Form.select_all_button1Click(Sender: TObject);
begin
  inherited;

  select_all_users();
end;

procedure TSelectUserList_Form.unselect_all_button1Click(Sender: TObject);
begin
  inherited;

  unselect_all_users();
end;

procedure TSelectUserList_Form.select_all_users();
begin
  check_all_users( true );
end;//proc

procedure TSelectUserList_Form.check_all_users( checked : boolean );
  var
    i : integer;
begin
  internal_changes := true;
  try
    users_checkListBox.enabled := false;

    for i := 0 to users_checkListBox.items.count - 1 do
    begin
      users_checkListBox.Checked[ i ] := checked;
    end;//for

    users_checkListBox.enabled := true;

    update_selected_user_list_from_ui();
    reload_selected_user_hash();
  finally
    select_button.enabled := checked;
    
    internal_changes := false;
  end;//try--finally
end;//proc

procedure TSelectUserList_Form.unselect_all_users();
begin
  check_all_users( false );
end;//proc



end.
