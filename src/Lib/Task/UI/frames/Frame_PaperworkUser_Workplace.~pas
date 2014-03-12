unit Frame_PaperworkUser_Workplace;

{.$define PROFILING}
interface

uses
  //--[ adapters ]--
  adapter_messageClient,
  //-[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,  ImgList, ComCtrls,
  ExtCtrls, Menus, dbTables, adodb, ShellApi, jclShell,
  myAccess, jclSysUtils, math, sDialogs,
  ActnList, sListView, StdCtrls, sGroupBox, sPanel,
  sSplitter, sFrameAdapter, sTreeView, ToolWin, sToolBar,
  //--[ compress ]--
   FlexCompress,
  //--[ constants ]--
  const_departmentListLoader,
  const_document,
  const_documentList,
  const_documentListLoader,
  const_documentStorage,
  const_folder,
  const_folderList,
  const_messageScaner,
  const_string,
  const_userDataLoader,
  const_userInfoList,
  //--[ containers ]--
  DeCal,
  //--[ factories ]--
  factory_message,
  factory_documents,
  factory_users,
  //--[ forms ]--
  Form_DocumentEditor,
  Form_UserListSelect,
  //--[ frames ]--
  Frame_UserWorkplace,
  Frame_Skined,
  frame_document_view,
  //--[ interfaces ]--
  interface_department,
  interface_departmentList,
  interface_departmentListLoader,
  interface_document,
  interface_documentAttachment,
  interface_documentAttachmentList,
  interface_documentDirection,
  interface_documentList,
  interface_documentListLoader,
  interface_documentMessage,
  interface_documentMessageSender,
  interface_documentStorage,
  interface_folder,
  interface_folderList,
  interface_message,
  interface_messageClient,
  interface_messageInformationDisplayer,
  interface_messageReceiver,
  interface_messageScaner,
  interface_factoryUserData,
  interface_userData,
  interface_userDataLoader,
  interface_userInfo,
  interface_userInfoList,
  //--[ lists ]--
  list_documents,
  //--[ pool ]--
  pool_query,
  //--[ tools ]--
  tool_documentInfo,
  tool_Environment,
  tool_GlobalSystem,
  //--[ types ]--
  type_documentInfo
  ;


type
  //****************************************************
  //* kind: class
  //* goal: provide functional ability common to all
  //*   workplaces of paperwork users
  //* scenery:
  //*  1. Make an instance
  //*  2. (inherited)
  //*    1. set skin data
  //*    2. set data module
  //*    3. set user data
  //*  3. setup the message receiver
  //*  4. start the scaning for new messages (startScaning)
  TPaperworkUser_Workplace = class(TUserWorkplace)
    folders_ImageList: TImageList;
    functions_imageList: TImageList;
    state_image_list: TImageList;
    functions_actions: TActionList;
    answer_on_current_comm_doc: TAction;
    refresh_comm_list: TAction;
    forward_current_comm_doc: TAction;
    make_new_internal_doc: TAction;
    edit_current_internal_doc: TAction;
    make_copy_curr_internal_doc: TAction;
    select_all_internal_documents: TAction;
    send_selected_internal_docs: TAction;
    delete_selected_internal_docs: TAction;
    sSplitter1: TsSplitter;
    sPanel1: TsPanel;
    sGroupBox1: TsGroupBox;
    document_view_frame: Tdocument_view_frame;
    docs_list_groupBox: TsGroupBox;
    sSplitter2: TsSplitter;
    documents_listView: TsListView;
    sPanel2: TsPanel;
    sGroupBox2: TsGroupBox;
    sGroupBox3: TsGroupBox;
    sSplitter3: TsSplitter;
    folders_treeView: TsTreeView;
    contacts_treeView: TsTreeView;
    all_tools: TsToolBar;
    answer_button: TToolButton;
    refresh_comm_docs_button: TToolButton;
    forward_button: TToolButton;
    new_document_button: TToolButton;
    make_copy_button: TToolButton;
    edit_speed_button: TToolButton;
    send_documents_button: TToolButton;
    select_all_documents: TToolButton;
    delete_speed_button: TToolButton;
    procedure new_document_buttonClick(Sender: TObject);
    procedure documents_listViewSelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure send_documents_buttonClick(Sender: TObject);
    procedure FrameEnter(Sender: TObject);
    procedure refresh_speed_buttonClick(Sender: TObject);
    procedure edit_speed_buttonClick(Sender: TObject);
    procedure select_all_documentsClick(Sender: TObject);
    procedure documents_listViewAdvancedCustomDrawItem(
      Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
      Stage: TCustomDrawStage; var DefaultDraw: Boolean);
    procedure delete_speed_buttonClick(Sender: TObject);
    procedure documents_listViewKeyPress(Sender: TObject;
      var Key: Char);
    procedure make_copy_buttonClick(Sender: TObject);
    procedure forward_buttonClick(Sender: TObject);
    procedure answer_buttonClick(Sender: TObject);
    procedure folders_treeView1Change(Sender: TObject; Node: TTreeNode);
    procedure documents_listViewClick(Sender: TObject);
    procedure print_communication_document_buttonClick(Sender: TObject);
    procedure print_document_buttonClick(Sender: TObject);
    procedure menuItem_AnswerOn_Communication_DocumentClick(
      Sender: TObject);
    procedure documents_listViewDblClick(Sender: TObject);
    procedure select_comm_docs_click(Sender: TObject);
    procedure select_internal_docs_click(Sender: TObject);
    procedure select_org_docs_click(Sender: TObject);
    procedure select_orders_docs_click(Sender: TObject);
    procedure menuItem_select_incomingClick(Sender: TObject);
    procedure menuItem_select_outgoingClick(Sender: TObject);
    procedure contacts_treeView1DblClick(Sender: TObject);
  private
    m_current_kind: TDocumentKind;

    m_message_scaner          : IMessageScaner;

    m_internal_changes        : boolean;
    m_client_adapter          : IMessageClient;
    m_is_initializing         : boolean;
    m_is_filling              : boolean;

    procedure load_all_documents;
    procedure select_documents_by(kind: TDocumentKind);
    procedure fill_list_with_documents_from(list: IDocumentList; listView : TsListView );
    procedure select_document_by(index: integer; listView : TsListView);
    procedure make_new_outgoing_document;
    procedure insert_document_in_db(doc: IDocument);
    procedure insert_document_in_ui( document: IDocument; listView : TsListView; position : integer );
    procedure get_current_date_and_time( out curr_date : TDateTime );
    procedure set_documents_count;
    procedure send_documents;
    procedure send_document(document: IDocument);
    procedure send_doc_message(to_user, doc_ind: integer);
    procedure create_message_scaner;
    procedure free_message_scaner;
    procedure add_message(message: IMessage);
    procedure update_document_in_db(document: IDocument);
//    procedure load_document(index: integer);
//    procedure clear_lists;
//    procedure refresh;
//    function get_list_by_kind(kind: TDocumentKind): IDocumentList;
    function get_listView_by_kind(kind: TDocumentKind): TsListView;
    procedure refresh_communications_documents;
    function edit_document(document: IDocument): boolean;
    procedure load_communication_documents( loader : IDocumentListLoader  );
    procedure load_internal_documents( loader : IDocumentListLoader  );
    procedure edit_selected_internal_document;
    procedure clear_current_item_index;
    procedure update_document_in_ui(
                 document: IDocument;
                 listView: TsListView;
                 doc_ind  : integer                 
                 );
    procedure get_active_list_and_item( kind : TDocumentKind;
                                        out list: IDocumentList;
                                        out doc_index : integer);
//    procedure refresh_communication_docs_ui;
//    procedure refresh_internal_docs_ui;
    procedure check_all_internal_documents;
    procedure fast_update_document_in_db(document: IDocument);
    procedure delete_selected_documents;
    procedure delete_checked_documents_ui;
    procedure delete_document(index: integer);
    procedure create_message_client_adapter;
    procedure set_communication_documents_count;
    function count_new_documents( list : IDocumentList) : integer;
    procedure forward_current_document;
    function get_dest_user_list(data: IUserData): IUserInfoList;
    function get_active_document: IDocument;
    procedure forward_document_to(document: IDocument;  userList: IUserInfoList);overload;
    procedure forward_document_to(document: IDocument; user: IUserInfo);overload;
    procedure refresh_internal_documents_ui;
    procedure create_new_document(from_user, to_user: integer;
      content: string);
    procedure save_internal_document(document: IDocument; isCopy : boolean );
    function format_old_content(content: string): string;
    procedure change_active_tools(Sender: TObject);
    function get_active_list: IDocumentList;
    procedure init_folder_pack;
    procedure update_command_interface;
    function is_any_doc_selected : boolean;
    function is_any_doc_checked: boolean;
    procedure disable_command_interface;
    procedure load_contacts;
    function edit_and_save_internal_document(document: IDocument; isCopy : boolean) : boolean;
    procedure insert_document_copy_in_db(doc: IDocument);
    function get_current_date: TDateTime;
    procedure hide_command_interface;
    procedure notify_on_message_arrival;
    { Private declarations }
  protected
    m_doc_loader : IDocumentListLoader;

    m_doc_storage      : IDocumentStorage;

    m_folderPack          : IFolderList;

    m_current_list              : IDocumentList;


    procedure initialize_data();override;

    procedure Handle_Select_Message( sender : tobject; message_index : integer );
  public
    { Public declarations }
    constructor Create( AOwner : TComponent );override;
    destructor Destroy();override;


    procedure setMessageReceiver( receiver : IMessageReceiver );

    procedure start_messageScanning();
    procedure stop_messageScanning();

    //--[ IMessageClient ]--
    procedure handle_message_arrival( message : IMessage );
  end;

var
  PaperworkUser_Workplace: TPaperworkUser_Workplace;

implementation


uses

  const_documentAttachment, Form_ProgressDisplayer,
  interface_documentDirectionsList;

const
  ANSWER_IMAGE_INDEX          = 7;
  DELETE_IMAGE_INDEX          = 4;
  EDIT_IMAGE_INDEX            = 3;
  EMPTY_IMAGE_INDEX           = -1;
  FORWARD_IMAGE_INDEX         = 6;
  MAKE_COPY_IMAGE_INDEX       = 6;
  MAKE_NEW_IMAGE_INDEX        = 0;
  SELECT_ALL_IMAGE_INDEX      = 8;
  SEND_SELECTED_IMAGE_INDEX   = 1;


const
   AT_END       = -1;
   AT_START     = -2;

const
   READEN_INDEX = -1;
   UNREAD_INDEX = 0;


const
  DOCUMENTS     =  0;

const
  NEW_DOCUMENT      = false;      //flag of new document for isCopy parm of save_internal_document
  COPY_OF_DOCUMENT  = true;
{$R *.dfm}

{ TPaperworkUser_Workplace }


procedure TPaperworkUser_Workplace.initialize_data;
begin
  inherited;

  m_is_initializing := true;

  m_doc_storage.user_id := m_user_data.user_index;

  load_all_documents();
  load_contacts();

  m_message_scaner.start();

  m_is_initializing := false;
end;

procedure TPaperworkUser_Workplace.load_contacts();
  var
    i : integer;
    item, dept_item : TTreeNode;
    user_caption : string;
    user         : IUserInfo;
    factory_user : IFactoryUserData;
    user_loader  : IUserDataLoader;
    dept_list    : IDepartmentList;
    dept_loader  : IDepartmentListLoader;

    function find_item_by_dept_id( dept_id : integer ) : TTreeNode;
      var
        node : TTreeNode;
    begin
      result := nil;

      if( contacts_treeView.Items.count = 0 )then
        exit;

      node := contacts_treeView.Items.GetFirstNode();
      repeat
        if( IDepartment( node.data ).dept_id = dept_id )then
        begin
          result := node;
          break;
        end;//if

        node := node.getNextSibling();
      until( node = nil )
    end;//func

    function add_item_by_dept( dept : IDepartment ) : TTreeNode;
    begin
      result := contacts_treeView.Items.Add(nil,dept.caption);
      result.data := pointer( dept );
    end;//func
begin
  user_loader := users_factory.createInstance( CLSID_UserDataLoader, IID_IUserDataLoader )  as IUserDataLoader;

  contacts_treeView.Items.BeginUpdate();
  contacts_treeView.Items.Clear();

  //fill depts
  dept_loader := users_factory.createInstance( CLSID_DepartmentListLoader, IID_IDepartmentListLoader ) as IDepartmentListLoader;

  dept_list := dept_loader.execute();

  dept_loader := nil;

  //store users on dept base * info: departments must be filled in db order
  for i := 0 to m_user_data.destination_list.Count - 1  do
   begin
     user := m_user_data.destination_list.Directions[ i ].to_user;

     factory_user := user_loader.execute( user.user_index ) as IFactoryUserData;

     user_caption := user.fio + ' (' + user.role_name + ')';

     dept_item := find_item_by_dept_id( factory_user.dept_id );
     if( dept_item = nil )then
       dept_item := add_item_by_dept( dept_list.findBy( factory_user.dept_id ) );

     item := contacts_treeView.Items.AddChild( dept_item, user_caption );
     item.Data := pointer( user );
   end;//for

   dept_list   := nil;

   contacts_treeView.items.endUpdate();
end;//proc


procedure TPaperworkUser_Workplace.load_all_documents();
begin
  show_progress();

  set_task_name( 'Загружаю документы' );

  set_task_progress( 0, 2 );
  set_subtask_name( 'Коммуникационные' );

  load_communication_documents( m_doc_loader );

  set_task_progress( 1, 2 );
  set_subtask_name( 'Внутренние' );

  load_internal_documents( m_doc_loader );

  set_documents_count();

  m_current_kind := -1;
  select_documents_by( DOCUMENT_KIND_COMMUNICATION );

  folders_treeView.Selected :=
    folders_treeView.items[ DOCUMENTS ].Item[ COMMUNICATION_DOCUMENTS ];

  hide_progress();
end;

procedure TPaperworkUser_Workplace.load_communication_documents( loader : IDocumentListLoader );
begin
  loader.load(
      m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].documents,
      DOCUMENT_KIND_COMMUNICATION_DB_ID,
      m_user_data.user_index,                //to user
      m_user_data.user_index,                //from user
      0                          //no owner
   );
end;

procedure TPaperworkUser_Workplace.load_internal_documents(loader : IDocumentListLoader );
begin
  loader.load(
      m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents,
      DOCUMENT_KIND_INTERNAL_DB_ID,
      m_user_data.user_index,                //to user
      m_user_data.user_index,                //from user
      m_user_data.user_index                 //owner
   );
end;


procedure TPaperworkUser_Workplace.set_documents_count();
begin
  m_internal_changes := true;

  set_communication_documents_count();

  folders_treeView.Items[ DOCUMENTS ].item[ INTERNAL_DOCUMENTS ].Text :=
      'Черновики (' +
         IntToStr(
           m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.Count
         ) +
      ')';

  select_all_documents.enabled := m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.count > 0;
  m_internal_changes := false;
end;


procedure TPaperworkUser_Workplace.set_communication_documents_count();
begin
  folders_treeView.Items[ DOCUMENTS ].item[ COMMUNICATION_DOCUMENTS ].Text :=
      'Коммуникационные (' +
         IntToStr(
             m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].documents.Count
            )+
           '-' +
           IntToStr(
             count_new_documents(
                m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].documents
              )
            ) +
      ')';
end;

function TPaperworkUser_Workplace.count_new_documents( list : IDocumentList ) : integer;
  var
    i : integer;
    document : IDocument;
begin
  result := 0;

  for i := 0 to list.count - 1  do
  begin
    document := list.Documents[ i ];

    if( not document.isReaden )and( document.to_user.user_index =  m_user_data.user_index )then
      result := result + 1;
  end;//for
end;



procedure TPaperworkUser_Workplace.select_documents_by( kind : TDocumentKind );
 var
    view : TsListView;
    list : IDocumentList;
begin
  if( m_current_kind = kind )then
    exit;

  m_internal_changes := true;
  try
    m_current_kind := kind;
    m_folderPack.active_folder := ord( kind );

    if parent <> nil then
    try
      folders_treeView.setFocus();
      with folders_treeView.Items[ DOCUMENTS ].Item[ m_folderPack.active_folder ] do
      begin
        Selected := true;
        MakeVisible;
      end;//with
    except
      //do nothing
    end;//try-except


    change_active_tools( self );

    docs_list_groupBox.caption :=  getCaptionFor( kind );

    list := get_active_list();
    view := get_listView_by_kind( m_current_kind );

    fill_list_with_documents_from( list, view );

    if not m_is_initializing then
    if( list.count > 0 )then
    begin
      select_document_by(
        m_folderPack.folders[
          m_folderPack.active_folder
         ]
          .active_document_index,
        view
      );
    end;//if

    if parent <> nil then
     begin
      documents_listView.checkBoxes := false;

      documents_listView.setFocus();

      if( kind = DOCUMENT_KIND_INTERNAL )then
        documents_listView.checkBoxes := true;
     end;//if

  finally
    m_internal_changes := false;
  end;//try-finally
end;//proc

function TPaperworkUser_Workplace.get_listView_by_kind( kind : TDocumentKind ): TsListView ;
begin
  result := documents_listView;//because we have only one view for all documents
end;

{
function TPaperworkUser_Workplace.get_list_by_kind( kind : TDocumentKind ): IDocumentList ;
begin
 pointer( result ) := nil;
 case kind of
   DOCUMENT_KIND_COMMUNICATION : result := m_communication_documents;
   DOCUMENT_KIND_INTERNAL      : result := m_internal_documents;
   DOCUMENT_KIND_ORGANIZATING  : result := m_organizating_documents;
   DOCUMENT_KIND_ORDERS        : result := m_orders_documents;
 end;//case
end;
}

procedure TPaperworkUser_Workplace.select_document_by( index : integer; listView : TsListView );
begin
  if( index < 0 )or
    ( index >= listView.items.count)or
    ( listView.items.count = 0 )
  then
    exit;

  clear_current_item_index();

  listView.SetFocus();
  listView.Items[ index ].Selected := true;
  listView.Selected.MakeVisible(true);
end;


procedure TPaperworkUser_Workplace.fill_list_with_documents_from( list : IDocumentList; listView : TsListView );
 const
   DATE_COLUMN = 5;
 var
   i : integer;
   count : integer;
begin
  if( not assigned( list ))then exit;

  m_is_filling := true;

  clear_current_item_index();

  documents_listView.Column[ DATE_COLUMN ].Caption := iff( m_folderPack.active_folder = COMMUNICATION_DOCUMENTS, 'Дата отсылки', 'Дата создания' );

  //listView.Hide();
  listView.Items.Clear();

  count := list.count;
  listView.Items.count := count;

  listView.items.BeginUpdate();
  for i := 0 to count - 1 do
  begin
    insert_document_in_ui( list[ i ], listView, AT_END );
    listView.Items[ i ].Caption := IntToStr( count - i );
  end;//for

  listView.Items.EndUpdate();
  //listView.Visible := true;

  m_is_filling := false;
end;


constructor TPaperworkUser_Workplace.Create(AOwner: TComponent);
begin
  m_is_initializing := true;

  inherited;

  m_folderPack := documents_factory.createInstance( CLSID_FolderList, IID_IFolderList ) as IFolderList;

  init_folder_pack();

  m_current_kind           := DOCUMENT_KIND_COMMUNICATION;

  clear_current_item_index();

  create_message_client_adapter();

  create_message_scaner();

  m_doc_storage := documents_factory.createInstance( CLSID_DocumentStorage, IID_IDocumentStorage )  as IDocumentStorage;
  m_doc_loader := documents_factory.createInstance( CLSID_DocumentList_Loader, IID_IDocumentListLoader ) as IDocumentListLoader;

  m_doc_loader.setProgressDisplayer( m_progress_displayer );

  m_is_initializing := false;
end;


procedure TPaperworkUser_Workplace.init_folder_pack();
  var
    i : integer;
    folder : IFolder;
begin
  m_folderPack.clear();

  for i := 0 to MAX_FOLDERS - 1 do
   begin
     folder := documents_factory.createInstance( CLSID_Folder, IID_IFolder ) as IFolder;

     m_folderPack.add( folder );
   end;//for

  m_folderPack.active_folder := COMMUNICATION_DOCUMENTS;
  m_current_kind             := DOCUMENT_KIND_COMMUNICATION;
end;//proc

procedure TPaperworkUser_Workplace.create_message_client_adapter();
 var
   adapter : TMessageClientAdapter;
begin
  adapter := TMessageClientAdapter.Create();
  adapter.OnMessageArrival := handle_message_arrival;

  m_client_adapter := adapter;
end;


procedure TPaperworkUser_Workplace.clear_current_item_index();
begin
end;


destructor TPaperworkUser_Workplace.Destroy;
begin
 try
  m_client_adapter := nil;
  m_doc_loader   := nil;
  m_doc_storage  := nil;


  m_folderPack   := nil;

//  FreeAndNil( m_message_list );

  free_message_scaner();

  inherited;
 except
   on e:exception do
     raise Exception.create( 'TPaperworkUser_Workplace.Destroy->' + e.message );
 end;//try--except
end;




procedure TPaperworkUser_Workplace.create_message_scaner();
begin
  m_message_scaner := messages_factory.createInstance( CLSID_MessageScaner, IID_IMessageScaner ) as IMessageScaner;

  m_message_scaner.setMessageClient( m_client_adapter );
end;

procedure TPaperworkUser_Workplace.free_message_scaner();
begin
 try
  m_message_scaner := nil;
 except
   on e:exception do
     raise Exception.Create( 'TPaperworkUser_Workplace.free_message_scaner->' + e.message );
 end;//try--except
end;



procedure TPaperworkUser_Workplace.select_comm_docs_click(
  Sender: TObject);
  //incoming
begin
  inherited;

  select_documents_by( DOCUMENT_KIND_COMMUNICATION );
end;

procedure TPaperworkUser_Workplace.select_internal_docs_click(
  Sender: TObject);
begin
  inherited;

  select_documents_by( DOCUMENT_KIND_INTERNAL );
end;

procedure TPaperworkUser_Workplace.select_org_docs_click(
  Sender: TObject);
begin
  inherited;

  select_documents_by( DOCUMENT_KIND_ORGANIZATING );
end;

procedure TPaperworkUser_Workplace.select_orders_docs_click(
  Sender: TObject);
begin
  inherited;

  select_documents_by( DOCUMENT_KIND_ORDERS );
end;

procedure TPaperworkUser_Workplace.new_document_buttonClick(
  Sender: TObject);
begin
  inherited;

  make_new_outgoing_document();
  update_command_interface();
end;

function TPaperworkUser_Workplace.edit_document( document : IDocument ) : boolean;
 var
    form_editor : TDocumentEditorForm;
begin
  form_editor := TDocumentEditorForm.Create( self );
  try
    form_editor.userData := m_user_data;
    form_editor.document := document;

    result := form_editor.Execute();
    if( result )then
     document := ( form_editor.document );
  finally
    FreeAndNil( form_editor );
  end;//try-finally
end;

procedure TPaperworkUser_Workplace.make_new_outgoing_document();
  var
    document    : IDocument;
begin
  document := documents_factory.createInstance( CLSID_Document, IID_IDocument ) as IDocument;

  edit_and_save_internal_document( document, NEW_DOCUMENT );

  document := nil;
end;

function TPaperworkUser_Workplace.edit_and_save_internal_document( document : IDocument; isCopy : boolean ) : boolean;
begin
  result := false;
  if( edit_document( document ) )then
    begin
      save_internal_document( document, isCopy );
      result := true;
    end;//if
end;//proc


procedure TPaperworkUser_Workplace.save_internal_document( document : IDocument; isCopy : boolean );
  var
    cdate       : TDateTime;
    old_count   : integer;
begin
  get_current_date_and_time( cdate );

  document.kind := DOCUMENT_KIND_INTERNAL_DB_ID;
  document.make_date := cdate;
  document.state     := DOCUMENT_STATE_UNKNOWN;
  document.owner_id  := m_user_data.user_index;
  document.from_user := m_user_data;

  old_count := m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.count;

  m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.insert( 0, document );

  assert( old_count = m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.count - 1,
          'Document not inserted properly!'
        );

  if not isCopy then
    insert_document_in_db( document )
  else
    insert_document_copy_in_db( document );

  if( m_current_kind = DOCUMENT_KIND_INTERNAL )then
    begin
      insert_document_in_ui( document,  documents_listView, AT_START )
    end
  else
    begin
      select_documents_by( DOCUMENT_KIND_INTERNAL );
    end;//if

  documents_listView.items[ 0 ].caption := IntToStr( documents_listView.Items.Count );

  select_document_by(
     0,
     documents_listView
  );
  
  set_documents_count();
end;//proc



procedure TPaperworkUser_Workplace.update_document_in_ui(
             document : IDocument;
             listView : TsListView;
             doc_ind  : integer
          );
 var
   item : TListItem;
begin
 item := listView.Items[ doc_ind ];

 item.SubItems[0] := get_state_caption( document.state );
 item.SubItems[1] := document.caption;
 item.SubItems[2] := document.from_user.role_name + ' (' + document.from_user.fio + ')';
 item.SubItems[3] := document.to_user.role_name + ' (' + document.to_user.fio + ')';
 item.SubItems[4] := FormatDateTime( 'dd.mm.yyyy hh:nn', document.make_date );
end;//proc

procedure TPaperworkUser_Workplace.insert_document_in_ui(
             document : IDocument;
             listView : TsListView;
             position : integer
           );
 var
   item : TListItem;
begin
  if( position = AT_END )then
   begin
    item := listView.Items.Add();
   end
  else if ( position = AT_START ) then
   begin
     item := listView.Items.Insert(0);
   end
  else
   begin
     item := listView.Items.Insert( position );
   end;//if


   item.StateIndex := UNREAD_INDEX;

   item.SubItems.Add(
        Iff( document.attachment_list.count > 0, 'A', '.' ) + ':' +
        get_state_caption( document.state )
   );

   item.SubItems.Add( document.caption );
   item.SubItems.Add( document.from_user.role_name + ' (' + document.from_user.fio + ')' );
   item.SubItems.add( document.to_user.role_name + ' (' + document.to_user.fio + ')' );
   case m_folderPack.active_folder of
     COMMUNICATION_DOCUMENTS : begin
                                 item.SubItems.Add( FormatDateTime( 'dd.mm.yyyy hh:nn', document.send_date )  );
                               end;

     INTERNAL_DOCUMENTS : begin
                            item.SubItems.Add( FormatDateTime( 'dd.mm.yyyy hh:nn', document.make_date )  );
                          end;  
   end;//case
end;//proc




procedure tPaperworkUser_workplace.insert_document_in_db( doc : IDocument );
begin
  m_doc_storage.add( doc );
end;

procedure TPaperworkUser_Workplace.insert_document_copy_in_db( doc : IDocument );
  //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
  // goal: insert the document copy in database without compressing
  //       it attachments, and only copying link to them.
begin
  m_doc_storage.add_copy( doc );
end;//proc



procedure TPaperworkUser_Workplace.documents_listViewSelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
   var
     document : IDocument;
     cur_folder : IFolder;
begin
  inherited;
  if( m_is_filling )then exit;
  
  cur_folder := m_folderPack.folders[ m_folderPack.active_folder ];

  assert( ( cur_folder.documents.count = 0 )or( cur_folder.active_document_index >= 0 )
         and( cur_folder.active_document_index < cur_folder.documents.count ),
         'Invalid active document index found (' + IntToStr( cur_folder.active_document_index ) + ' of ' + IntToStr( cur_folder.documents.count )
        );

  if( selected )then
  begin
    item.StateIndex := READEN_INDEX;

    if( not m_internal_changes )then
    begin
      cur_folder.active_document_index := item.index;
    end;//if

    document := cur_folder.Documents[ cur_folder.active_document_index ];

    document_view_frame.document := document;

    if( m_folderPack.active_folder = COMMUNICATION_DOCUMENTS )then
    if( not document.isReaden )and( document.to_user.user_index = m_user_data.user_index )then
    begin
      document.isReaden := true;
      fast_update_document_in_db( document );

      set_communication_documents_count();
    end;//if
  end;//if

  update_command_interface();
end;

procedure TPaperworkUser_Workplace.disable_command_interface();
begin
  answer_on_current_comm_doc.enabled         := false;
  delete_selected_internal_docs.enabled      := false;
  edit_current_internal_doc.enabled          := false;
  forward_current_comm_doc.enabled           := false;
  send_selected_internal_docs.enabled        := false;
  make_copy_curr_internal_doc.enabled        := false;
end;//proc


procedure TPaperworkUser_Workplace.update_command_interface();
  var
    folder   : IFolder;
    cur_doc  : IDocument;
begin
  if( m_is_initializing )then
    exit;

  disable_command_interface();

  if( m_folderPack.Count <= 0 )then exit;

  case m_current_kind of
    COMMUNICATION_DOCUMENTS :begin
                              folder     := m_folderPack.folders[ COMMUNICATION_DOCUMENTS ];

                              assert(( folder.documents.count = 0 )or
                                     ( folder.active_document_index >= 0 )
                                      and ( folder.active_document_index < folder.documents.count ),
                                        'Invalid active document index found (' + IntToStr( folder.active_document_index ) + ' of ' + IntToStr( folder.documents.count )
                                    );

                              if( folder.documents.count = 0 )then exit;

                              cur_doc    := folder.Documents[ folder.active_document_index ];

                              answer_on_current_comm_doc.enabled :=
                                     cur_doc
                                       .from_user
                                         .user_index
                                 <> m_user_data
                                     .user_index
                                 ;

                              forward_current_comm_doc.enabled := answer_on_current_comm_doc.enabled;

                              answer_on_current_comm_doc.imageIndex := iff( answer_on_current_comm_doc.enabled, ANSWER_IMAGE_INDEX, EMPTY_IMAGE_INDEX );
                              forward_current_comm_doc.imageIndex   := iff( forward_current_comm_doc.enabled, FORWARD_IMAGE_INDEX, EMPTY_IMAGE_INDEX );
                             end;

    INTERNAL_DOCUMENTS      :begin
                                folder     := m_folderPack.folders[ INTERNAL_DOCUMENTS ];

                                assert(( folder.documents.count = 0 )or
                                       ( folder.active_document_index >= 0 )
                                        and ( folder.active_document_index < folder.documents.count ),
                                        'Invalid active document index found (' + IntToStr( folder.active_document_index ) + ' of ' + IntToStr( folder.documents.count )
                                      );

                                if( folder.documents.count = 0 )then exit;

                                cur_doc    := folder.Documents[ folder.active_document_index ];

                                delete_selected_internal_docs.enabled :=
                                    is_any_doc_checked();

                                edit_current_internal_doc.enabled   :=
                                    is_any_doc_selected();

                                make_copy_curr_internal_doc.enabled    :=
                                    edit_current_internal_doc.enabled;

                                select_all_internal_documents.enabled :=
                                   folder.documents.Count > 0;

                                send_selected_internal_docs.enabled :=
                                   delete_selected_internal_docs.enabled;

                                make_new_internal_doc.enabled := true;

                                delete_selected_internal_docs.imageIndex := iff( delete_selected_internal_docs.enabled,          DELETE_IMAGE_INDEX,                  EMPTY_IMAGE_INDEX );
                                edit_current_internal_doc.imageIndex := iff( edit_current_internal_doc.enabled,                  EDIT_IMAGE_INDEX,                    EMPTY_IMAGE_INDEX );
                                make_copy_curr_internal_doc.imageIndex := iff( make_copy_curr_internal_doc.enabled,              MAKE_COPY_IMAGE_INDEX,               EMPTY_IMAGE_INDEX );
                                select_all_internal_documents.imageIndex := iff( select_all_internal_documents.enabled,          SELECT_ALL_IMAGE_INDEX,              EMPTY_IMAGE_INDEX );
                                send_selected_internal_docs.imageIndex := iff( send_selected_internal_docs.enabled,              SEND_SELECTED_IMAGE_INDEX,           EMPTY_IMAGE_INDEX );
                                make_new_internal_doc.imageIndex := iff( make_new_internal_doc.enabled,                          MAKE_NEW_IMAGE_INDEX,                EMPTY_IMAGE_INDEX );
                             end;
  end;//case

  all_tools.refresh();
end;//proc


function TPaperworkUser_Workplace.is_any_doc_selected() : boolean;
begin
  result := documents_listView.Selected <> nil;
end;//proc

function TPaperworkUser_Workplace.is_any_doc_checked() : boolean;
  var
    i : integer;
begin
  result := false;

  if( documents_listView.checkboxes )then
  for i := 0 to documents_listView.items.count - 1 do
   begin
     if documents_listView.Items[ i ].Checked then
      begin
        result := true;
        break;
      end;//if
   end;//for
end;//proc



function TPaperworkUser_Workplace.get_current_date() : TDateTime;
  var
    date : TDateTime;
begin
  get_current_date_and_time( date );
  result := date;
end;//func

procedure TPaperworkUser_Workplace.get_current_date_and_time( out curr_date : TDateTime );
  var
    work_query : TMyQuery;
begin
  work_query := QueryPool.capture_query();
  try
    work_query.sql.clear();
    work_query.sql.add( 'select now()' );
    work_query.open();

    curr_date := work_query.fieldByName( 'now()' ).asDateTime;
  finally
    QueryPool.release_query( work_query );
  end;//try-finally
end;//func

procedure TPaperworkUser_Workplace.send_documents_buttonClick(
  Sender: TObject);
begin
  inherited;

  send_documents();
  update_command_interface();
end;

procedure TPaperworkUser_Workplace.send_documents();
  var
    i : integer;
    document : IDocument;
    comm_docs : IDocumentList;
begin
  if( m_folderPack.active_folder <> INTERNAL_DOCUMENTS )then
    exit;

  comm_docs := m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].documents;

  //1. for each created documents
  for i := 0 to documents_listView.items.Count - 1 do
  begin
    if( documents_listView.Items[ i ].Checked )then
    begin
      //1. send document
      document := m_folderPack.folders[
                    m_folderPack.active_folder
                   ]
                   .Documents[ i ];

      send_document( document );

      //2. send message to client
      send_doc_message( document.to_user.user_index, document.doc_ind );

      comm_docs.insert( 0, document );
    end;//if
  end;//for

  //2. change the interface
  delete_checked_documents_ui();

  select_document_by( 0, documents_listView );
  set_documents_count();
end;//proc


{
procedure TPaperworkUser_Workplace.refresh_communication_docs_ui();
begin
  fill_list_with_documents_from( m_communication_documents, communication_docs_listView );
end;
}

{
procedure TPaperworkUser_Workplace.refresh_internal_docs_ui();
begin
  fill_list_with_documents_from( m_internal_documents, internal_docs_listView );
end;
}

procedure TPaperworkUser_Workplace.send_document( document : IDocument );
  const
    UNKNOWN_OWNER = 0;
  var
    date : TDateTime;
begin
  get_current_date_and_time( date );

  document.kind := DOCUMENT_KIND_COMMUNICATION_DB_ID;
  document.state := DOCUMENT_STATE_PROCESSING;
  document.owner_id   := UNKNOWN_OWNER;
  document.send_date  := date;

  fast_update_document_in_db( document );
end;//proc


procedure TPaperworkUser_Workplace.update_document_in_db( document : IDocument );
begin
  m_doc_storage.update( document );
end;

procedure TPaperworkUser_Workplace.fast_update_document_in_db( document : IDocument );
begin
  m_doc_storage.fast_update( document );
end;



procedure TPaperworkUser_Workplace.send_doc_message( to_user : integer; doc_ind : integer );
 var
   sender : IDocumentMessageSender;
begin
  sender := m_message_sender as IDocumentMessageSender;

  if( sender = nil )then
    raise Exception.Create( 'TPaperworkUser_Workplace.send_doc_message>>Инициализация передатчиком сообщений, не поддерживающего передачу документов!' );

  sender.send( m_user_data.user_index, to_user, doc_ind, 'К вам пришел документ' );

  sender := nil;
end;//proc

procedure TPaperworkUser_Workplace.setMessageReceiver(
  receiver: IMessageReceiver);
begin
  if( m_message_scaner = nil )then
    raise Exception.Create( 'TPaperworkUser_Workplace.setMessageReceiver>>Not initialized!' );

  m_message_scaner.setMessageReceiver( receiver );
end;

procedure TPaperworkUser_Workplace.handle_message_arrival(
  message: IMessage);
begin
  add_message( message );
  notify_on_message_arrival();
end;

procedure TPaperworkUser_Workplace.notify_on_message_arrival();
 begin
   MessageBeep( 300 );
   sMessageDlg( 'К вам пришли новые сообщения!', mtInformation, [mbOk], 0);
 end;//proc


procedure TPaperworkUser_Workplace.add_message( message : IMessage );
begin
  refresh_communications_documents();
end;//proc

procedure TPaperworkUser_Workplace.start_messageScanning;
begin
  m_message_scaner.start();
end;

procedure TPaperworkUser_Workplace.stop_messageScanning;
begin
  m_message_scaner.stop();
end;


procedure TPaperworkUser_Workplace.FrameEnter(Sender: TObject);
begin
  inherited;

  select_document_by( 0, get_listView_by_kind( m_current_kind ) );
end;

procedure TPaperworkUser_Workplace.Handle_Select_Message(sender: tobject;
  message_index: integer);
//   var
//     message : IDocumentMessage;
//     iter    : DIterator;
begin
{  //1. delete message
  MessageDisplayer.remove( message_index );
  //todo: implement other light method of message clearing
  //2. display the document
  message := IInterface( m_message_list.atAsInterface( message_index ) ) as IDocumentMessage;

  load_document( message.doc_ind );

  //3. delete the document message
  iter := m_message_list.start;
  advanceBy( iter, message_index );
  m_message_list.removeAtIter( iter, 1 );
 }
end;

{procedure TPaperworkUser_Workplace.load_document( index : integer );
  var
   document : IDocument;
begin
  m_work_query.sql.clear();
  m_work_query.sql.add(
    'select * from documents where key_ind = ' + intToStr( index )
  );
  m_work_query.open();

  if( m_work_query.eof )then exit;

  document := paperwrk_classFactory.createInstance( CLSID_DOCUMENT, IID_IDocument ) as IDocument;

  fill_document_from_query( document );

  m_communication_documents.insert( 0, document );

  m_current_list := nil;

  select_documents_by( DOCUMENT_KIND_COMMUNICATION );

end;
}

procedure TPaperworkUser_Workplace.refresh_speed_buttonClick(
  Sender: TObject);
begin
  refresh_communications_documents();
end;

{
procedure TPaperworkUser_Workplace.refresh();
begin
  m_current_kind := DOCUMENT_KIND_UNKNOWN;
  m_current_list := nil;

  clear_current_item_index();

  clear_lists();
  load_all_documents();
end;
}

procedure TPaperworkUser_Workplace.refresh_communications_documents;
begin
  hide_command_interface();

  m_current_kind := DOCUMENT_KIND_UNKNOWN;
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages;

  load_communication_documents( m_doc_loader );


  select_documents_by( DOCUMENT_KIND_COMMUNICATION );

  select_document_by( 0, documents_listView );

  set_documents_count();

  Screen.Cursor := crDefault;
  Application.ProcessMessages;

  change_active_tools(self);
  update_command_interface();
end;//proc


procedure TPaperworkUser_Workplace.refresh_internal_documents_ui();
begin
  m_current_kind := DOCUMENT_KIND_UNKNOWN;

  fill_list_with_documents_from(
    m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents,
    documents_listView
  );

  select_documents_by( DOCUMENT_KIND_INTERNAL );
  select_document_by( 0, documents_listView );
  set_documents_count();
end;//proc

{
procedure TPaperworkUser_Workplace.clear_lists();
begin
  m_internal_documents.Clear();
  m_communication_documents.Clear();
  m_organizating_documents.Clear();
  m_orders_documents.Clear();
end;
}

procedure TPaperworkUser_Workplace.edit_speed_buttonClick(Sender: TObject);
begin
  inherited;

  if(
     ( m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.count = 0 )
     or( documents_listView.Selected = nil )
    )
  then
    exit;
    
  edit_selected_internal_document();
  update_command_interface();

end;

procedure TPaperworkUser_Workplace.edit_selected_internal_document();
  var
    document : IDocument;
    index    : integer;
    internal_docs : IDocumentList;
    cur_folder    : IFolder;
begin
  if( m_folderPack.active_folder <> INTERNAL_DOCUMENTS )
    or ( m_folderPack.folders[
           INTERNAL_DOCUMENTS
          ]
          .active_document_index
        < 0
        )
  then
    exit;

  cur_folder    := m_folderPack.folders[ INTERNAL_DOCUMENTS ];
  internal_docs := cur_folder.documents;

  document := internal_docs.Documents[ cur_folder.active_document_index ];

  if( edit_document( document ) )then
  begin
    index := cur_folder.active_document_index;

    internal_docs.Documents[ index ] := document;

    update_document_in_db( document );
    update_document_in_ui( document, documents_listView,  index );

    select_document_by( index, documents_listView );

    if( index >= 0 )or( index < internal_docs.count )then
      document_view_frame.document :=
          internal_docs.Documents[ Index ];
  end;//if
end;


function TPaperworkUser_Workplace.get_active_list() : IDocumentList;
begin
  result := m_folderPack.folders[ ord( m_current_kind ) ].documents; //because we have isomorphism between this two enums
end;//func

procedure TPaperworkUser_Workplace.get_active_list_and_item(
            kind                 : TDocumentKind;
            out list             : IDocumentList;
            out doc_index        : integer );
begin
  list      := m_folderPack.folders[ ord( kind ) ].documents;
  doc_index := m_folderPack.folders[ ord( kind ) ].active_document_index;
end;//func


procedure TPaperworkUser_Workplace.hide_command_interface();
begin
  //hide previous

  delete_selected_internal_docs.visible   := false;
  select_all_internal_documents.visible   := false;
  send_selected_internal_docs.visible     := false;
  edit_current_internal_doc.visible       := false;
  make_copy_curr_internal_doc.visible     := false;
  make_new_internal_doc.visible           := false;
  refresh_comm_list.visible               := false;
  forward_current_comm_doc.visible        := false;
  answer_on_current_comm_doc.visible      := false;
end;//proc

procedure TPaperworkUser_Workplace.change_active_tools(
  Sender: TObject);
begin
//  if( m_is_initializing )then exit;
  hide_command_interface();

  m_current_kind := TDocumentKind(
                      m_folderPack.active_folder
                    );

  //show current
  case m_current_kind of
    DOCUMENT_KIND_COMMUNICATION      :
       begin
         refresh_comm_list.visible             := true;
         forward_current_comm_doc.visible      := true;
         answer_on_current_comm_doc.visible    := true;
       end;

    DOCUMENT_KIND_INTERNAL :
       begin
         make_new_internal_doc.visible       := true;
         make_copy_curr_internal_doc.visible := true;
         edit_current_internal_doc.visible     := true;
         send_selected_internal_docs.visible := true;
         select_all_internal_documents.visible := true;
         delete_selected_internal_docs.visible := true;
       end;


    DOCUMENT_KIND_ORGANIZATING :
       begin
       end;

    DOCUMENT_KIND_ORDERS :
       begin
       end;

    DOCUMENT_KIND_INCOMING :
       begin
       end;

    DOCUMENT_KIND_OUTGOING :
       begin
       end;
  end;//case
end;



procedure TPaperworkUser_Workplace.select_all_documentsClick(
  Sender: TObject);
begin
  inherited;
  check_all_internal_documents();
  update_command_interface();
end;

procedure TPaperworkUser_Workplace.check_all_internal_documents();
  var
    i : integer;
begin
  for i := 0 to documents_listView.Items.Count - 1 do
  begin
    documents_listView.Items[ i ].Checked := true;
  end;
  delete_speed_button.enabled   := true;
  send_documents_button.enabled := true;
end;


procedure TPaperworkUser_Workplace.documents_listViewAdvancedCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  Stage: TCustomDrawStage; var DefaultDraw: Boolean);

  var
    document : IDocument;
begin
       if( m_folderPack.active_folder = COMMUNICATION_DOCUMENTS )then
  with documents_listView.Canvas do
  begin
    assert(
            ( Item.Index >= 0 )and( Item.Index < m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].Documents.count ),
            'Not found document by index ' + IntToStr( Item.Index ) + ' from range 0..' + IntToStr( m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].Documents.count )
          );


    document := m_folderPack.folders[ COMMUNICATION_DOCUMENTS ]
                 .Documents[
                    Item.Index
                  ];

    if( not document.isReaden )and( document.to_user.user_index = m_user_data.user_index ) then
      Font.Style := [fsBold]
    else
      Font.Style := [];
  end;//with

  inherited;
end;

procedure TPaperworkUser_Workplace.delete_speed_buttonClick(
  Sender: TObject);
begin
  inherited;

  if( sMessageDlg( 'Удалить выбранные документы?', mtConfirmation, [mbYes,mbNo], 0 ) = mrYes )then
  begin
    delete_selected_documents();
    update_command_interface();
  end;//if
end;

procedure TPaperworkUser_Workplace.delete_selected_documents();
 var
   i : integer;
begin
  for i := 0 to documents_listView.Items.count - 1 do
  begin
    if( documents_listView.items[ i ].Checked )then
    begin
      delete_document(
         m_folderPack.folders[ INTERNAL_DOCUMENTS ]
           .Documents[ i ]
            .doc_ind
      );
    end;//if
  end;//for

  m_folderPack.folders[ INTERNAL_DOCUMENTS ].active_document_index
    :=  0;

  delete_checked_documents_ui();

  select_document_by( 0,
                      documents_listView
                    );
  //select_documents_by( DOCUMENT_KIND_INTERNAL );
end;

procedure TPaperworkUser_Workplace.delete_checked_documents_ui();
 var
   i : integer;
   internal_docs : IDocumentList;
begin
  internal_docs := m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents;

  for i := documents_listView.Items.count - 1 downto 0 do
  begin
    if( documents_listView.items[ i ].Checked )then
    begin
      internal_docs.Delete( i );
    end;//if
  end;//for

  documents_listView.Items.BeginUpdate();
  for i := documents_listView.Items.count - 1 downto 0 do
  begin
    if( documents_listView.items[ i ].Checked )then
    begin
      documents_listView.items.Delete( i );
    end;//if
  end;//for
  documents_listView.Items.EndUpdate();

  for i := 0 to documents_listView.Items.count - 1 do
   begin
     documents_listView.items[i].Caption := IntToStr( documents_listView.Items.count - i );
   end;//for


  //4. show the interface
  set_documents_count();
end;


procedure TPaperworkUser_Workplace.delete_document( index : integer );
begin
  m_doc_storage.delete( index );
end;



procedure TPaperworkUser_Workplace.documents_listViewKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;                             
  case key of
    #32 : begin
            if documents_listView.selected <> nil then
            begin
              documents_listView.selected.Checked :=
                not documents_listView.selected.Checked;

              update_command_interface();
            end;//if
          end;
  end;//case
end;

procedure TPaperworkUser_Workplace.forward_current_document();
  var
    selectUser : TSelectUserList_Form;
begin
  selectUser := TSelectUserList_Form.Create( self );
  try
    selectUser.userList := get_dest_user_list( m_user_data );

    if( selectUser.showModal = mrOk )then
    begin
      Screen.Cursor := crHourGlass;
      Application.ProcessMessages();

      forward_document_to( get_active_document(), selectUser.selectedUserList );
    end;//if
  finally
    FreeAndNil( selectUser );
    Screen.Cursor := crDefault;
  end;//try--finally
end;//proc

function TPaperworkUser_Workplace.get_active_document() : IDocument;
  var
    list : IDocumentList;
    doc_ind : integer;
begin
  get_active_list_and_item(m_current_kind,list, doc_ind );

  result := list.Documents[ doc_ind ];
end;//func

function TPaperworkUser_Workplace.get_dest_user_list( data : IUserData ): IUserInfoList;
  var
    i : integer;
begin
  result := users_factory.createInstance( CLSID_UserInfoList, IID_IUserInfoList ) as IUserInfoList;

  for i := 0 to data.destination_list.Count - 1 do
  begin
    result.add( data.destination_list.Directions[ i ].to_user );
  end;//for
end;//function


procedure TPaperworkUser_Workplace.forward_document_to( document : IDocument; userList : IUserInfoList );
  var
    i : integer;
begin
  for i := 0 to userList.Count - 1 do
  begin
    forward_document_to( document, userList.UserInfo[ i ] );
  end;//for

  refresh_internal_documents_ui();
  set_documents_count();
end;//proc

procedure TPaperworkUser_Workplace.forward_document_to( document : IDocument; user : IUserInfo );
  var
    new_doc : IDocument;
    cdate   : TDateTime;
begin
  //1. make a copy of forwarded document
  new_doc := documents_factory.createInstance( CLSID_DOCUMENT, IID_IDocument ) as IDocument;

  new_doc.assign_from( document );

  get_current_date_and_time( cdate );

  new_doc.to_user     := user;
  new_doc.kind        := DOCUMENT_KIND_INTERNAL_DB_ID;
  new_doc.make_date   := cdate;
  new_doc.state       := DOCUMENT_STATE_UNKNOWN;
  new_doc.owner_id    := m_user_data.user_index;
  new_doc.from_user   := m_user_data;
  new_doc.pipe_ind    := m_user_data
                          .destination_list
                           .pipeByUser(
                              user.user_index
                           );

  m_folderPack.folders[ INTERNAL_DOCUMENTS ].documents.insert( 0, new_doc );

  //2. insert it into db and ui
  insert_document_copy_in_db( new_doc );

  new_doc := nil;
end;//proc


procedure TPaperworkUser_Workplace.make_copy_buttonClick(Sender: TObject);
begin
  inherited;
  forward_current_document();
  update_command_interface();
end;

procedure TPaperworkUser_Workplace.forward_buttonClick(Sender: TObject);
begin
  inherited;
  forward_current_document();
  update_command_interface();
end;

procedure TPaperworkUser_Workplace.answer_buttonClick(Sender: TObject);
  var
    doc  : IDocument;
begin
  inherited;

  if(
     ( m_folderPack.folders[ COMMUNICATION_DOCUMENTS ].documents.count = 0 )
     or( documents_listView.Selected = nil )
    )
  then
    exit;

  doc := get_active_document();
  doc.answer_date := get_current_date();
  fast_update_document_in_db( doc );

  doc.answer_date := 0.0;
  doc.content := format_old_content( doc.content );

  edit_and_save_internal_document( doc, COPY_OF_DOCUMENT );

  //update_command_interface();
end;

function TPaperworkUser_Workplace.format_old_content( content : string ): string ;
 var
   _pos : integer;
begin
  result := content;

  _pos := pos( '\blue0;}', content );
  if( _pos > 0 )then
  begin
    _pos := _pos + 9; //skip this content

    result := copy( content, 1, _pos ) +
              '\viewkind4\uc1\pard\cf1\lang1033\fs20'+
              '\par\par---------------------------------------------\par \plain'+
              copy( content, _pos, length( content ) - _pos )
              ;
  end;//if
end;//function

procedure TPaperworkUser_Workplace.create_new_document(
             from_user, to_user : integer;
             content            : string
          );
  var
    document    : IDocument;
begin
  document := documents_factory.createInstance( CLSID_Document, IID_IDocument ) as IDocument;

  document.from_user.user_index := from_user;
  document.to_user.user_index   := to_user;
  document.pipe_ind             := m_user_data.destination_list.pipeByUser(to_user);
  document.content              := content;

  if( edit_document( document ) )then
    begin
      save_internal_document( document, NEW_DOCUMENT );
    end;//if

  document := nil;
end;//proc


procedure TPaperworkUser_Workplace.folders_treeView1Change(Sender: TObject;
  Node: TTreeNode);
begin
  inherited;

  if( m_internal_changes )then exit;

  select_documents_by( TDocumentKind( Node.index ) );
end;

procedure TPaperworkUser_Workplace.documents_listViewClick(
  Sender: TObject);
begin
  inherited;
  //do click
  update_command_interface();
end;


procedure TPaperworkUser_Workplace.print_communication_document_buttonClick(
  Sender: TObject);
begin
  inherited;
  update_command_interface();

end;

procedure TPaperworkUser_Workplace.print_document_buttonClick(
  Sender: TObject);
begin
  inherited;
  update_command_interface();
end;

procedure TPaperworkUser_Workplace.menuItem_AnswerOn_Communication_DocumentClick(
  Sender: TObject);
begin
  inherited;
  ShowMessage( 'Cannot answer. Not implemented yet!' );
end;

procedure TPaperworkUser_Workplace.documents_listViewDblClick(
  Sender: TObject);
begin
  inherited;

  case m_current_kind of
    DOCUMENT_KIND_COMMUNICATION : answer_buttonClick(self);
    DOCUMENT_KIND_INTERNAL      : edit_speed_buttonClick(self);
  end;//case
end;

procedure TPaperworkUser_Workplace.menuItem_select_incomingClick(
  Sender: TObject);
begin
  inherited;
  select_documents_by( DOCUMENT_KIND_INCOMING );
end;

procedure TPaperworkUser_Workplace.menuItem_select_outgoingClick(
  Sender: TObject);
begin
  inherited;
  select_documents_by( DOCUMENT_KIND_OUTGOING );
end;

procedure TPaperworkUser_Workplace.contacts_treeView1DblClick(
  Sender: TObject);
  var
    user : IUserInfo;
begin
  inherited;

  if( contacts_treeView.Selected <> nil )then
  begin
    user := IUserInfo( contacts_treeView.Selected.data );
    create_new_document( m_user_data.user_index, user.user_index, '' );
  end;//if
end;

end.

