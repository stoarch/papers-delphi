program Terminal;

uses
  //--[ class factories ]--
  Paperwork_ClassFactory in '..\Lib\Task\tools\factory\Paperwork_ClassFactory.pas',
  //--[ common ]--
  System, Forms, Dialogs, sDialogs, SysUtils, FlexCompress,
  //--[ constants ]--
  const_messageScaner in '..\Lib\Task\constants\const_messageScaner.pas',
  const_documentMessageReceiver in '..\Lib\Task\constants\const_documentMessageReceiver.pas',
  const_messageReceiver in '..\Lib\Task\constants\const_messageReceiver.pas',
  const_message in '..\Lib\Task\constants\const_message.pas',
  const_documentMessage in '..\Lib\Task\constants\const_documentMessage.pas',
  const_sql_documentMessageReceiver in '..\Lib\Task\constants\const_sql_documentMessageReceiver.pas',
  const_sql_documentMessageSender in '..\Lib\Task\constants\const_sql_documentMessageSender.pas',
  const_documentListLoader in '..\Lib\Task\constants\const_documentListLoader.pas',
  const_documentAttachmentListLoader in '..\Lib\Task\constants\const_documentAttachmentListLoader.pas',
  const_documentStorage in '..\Lib\Task\constants\const_documentStorage.pas',
  const_DocumentAttachmentStorage in '..\Lib\Task\constants\const_DocumentAttachmentStorage.pas',
  const_string in '..\Lib\Task\constants\const_string.pas',
  const_userInfoList in '..\Lib\Task\constants\const_userInfoList.pas',
  const_userInfoLoader in '..\Lib\Task\constants\const_userInfoLoader.pas',
  const_folderList in '..\Lib\Task\constants\const_folderList.pas',
  const_folder in '..\Lib\Task\constants\const_folder.pas',
  const_factoryUserData in '..\Lib\Task\constants\const_factoryUserData.pas',
  const_department in '..\Lib\Task\constants\const_department.pas',
  const_departmentList in '..\Lib\Task\constants\const_departmentList.pas',
  const_user in '..\Lib\Task\constants\const_user.pas',
  const_userInfo in '..\Lib\Task\constants\const_userInfo.pas',
  const_documentDirection in '..\Lib\Task\constants\const_documentDirection.pas',
  const_documentKindInfo in '..\Lib\Task\constants\const_documentKindInfo.pas',
  const_documentKindList in '..\Lib\Task\constants\const_documentKindList.pas',
  const_workplaceInfoList in '..\Lib\Task\constants\const_workplaceInfoList.pas',
  const_documentAttachment in '..\Lib\Task\constants\const_documentAttachment.pas',
  const_documentAttachmentList in '..\Lib\Task\constants\const_documentAttachmentList.pas',
  const_authentificator in '..\Lib\Task\constants\const_authentificator.pas',
  const_userDataLoader in '..\Lib\Task\constants\const_userDataLoader.pas',
  const_document in '..\Lib\Task\constants\const_document.pas',
  const_workplaceInfo in '..\Lib\Task\constants\const_workplaceInfo.pas',
  const_documentDirectionsList in '..\Lib\Task\constants\const_documentDirectionsList.pas',
  const_documentList in '..\Lib\Task\constants\const_documentList.pas',
  //--[ data ]--
  data_documentAttachment in '..\Lib\Task\data\data\data_documentAttachment.pas',
  data_documentDirection in '..\Lib\Task\data\data\data_documentDirection.pas',
  data_documentKindInfo in '..\Lib\Task\data\data\data_documentKindInfo.pas',
  data_documentInfo in '..\Lib\Task\data\data_documentInfo.pas',
  data_document in '..\Lib\Task\data\data_document.pas',
  data_userInfo in '..\Lib\Task\data\data_userInfo.pas',
  data_user in '..\Lib\Task\data\data_user.pas',
  data_message in '..\Lib\Task\data\data_message.pas',
  data_documentMessage in '..\Lib\Task\data\data_documentMessage.pas',
  //--[ interfaces ]--
  interface_IDbTaskStatus in '..\Lib\Common\interface\db\interface_IDbTaskStatus.pas',
  interface_IProgressDisplayer in '..\Lib\Common\interface\interface_IProgressDisplayer.pas',
  interface_authentificator in '..\Lib\Common\interface\interface_authentificator.pas',
  interface_userInfo in '..\Lib\Task\interfaces\interface_userInfo.pas',
  interface_userData in '..\Lib\Task\interfaces\interface_userData.pas',
  interface_documentDirectionsList in '..\Lib\Task\interfaces\interface_documentDirectionsList.pas',
  interface_documentDirection in '..\Lib\Task\interfaces\interface_documentDirection.pas',
  interface_documentKindList in '..\Lib\Task\interfaces\interface_documentKindList.pas',
  interface_list in '..\Lib\Task\interfaces\interface_list.pas',
  interface_documentKindInfo in '..\Lib\Task\interfaces\interface_documentKindInfo.pas',
  interface_workplaceInfoList in '..\Lib\Task\interfaces\interface_workplaceInfoList.pas',
  interface_document in '..\Lib\Task\interfaces\interface_document.pas',
  interface_documentAttachment in '..\Lib\Task\interfaces\interface_documentAttachment.pas',
  interface_documentAttachmentList in '..\Lib\Task\interfaces\interface_documentAttachmentList.pas',
  interface_documentList in '..\Lib\Task\interfaces\interface_documentList.pas',
  interface_userDataLoader in '..\Lib\Task\interfaces\interface_userDataLoader.pas',
  interface_workplaceInfo in '..\Lib\Task\interfaces\interface_workplaceInfo.pas',
  interface_messageSender in '..\Lib\Common\interface\interface_messageSender.pas',
  interface_documentMessageSender in '..\Lib\Common\interface\interface_documentMessageSender.pas',
  interface_sql_documentMessageSender in '..\Lib\Task\interfaces\interface_sql_documentMessageSender.pas',
  interface_sql_documentMessageReceiver in '..\Lib\Task\interfaces\interface_sql_documentMessageReceiver.pas',
  interface_documentMessage in '..\Lib\Task\interfaces\interface_documentMessage.pas',
  interface_message in '..\Lib\Task\interfaces\interface_message.pas',
  interface_messageClient in '..\Lib\Task\interfaces\interface_messageClient.pas',
  interface_messageScaner in '..\Lib\Task\interfaces\interface_messageScaner.pas',
  interface_messageReceiver in '..\Lib\Task\interfaces\interface_messageReceiver.pas',
  interface_documentMessageReceiver in '..\Lib\Task\interfaces\interface_documentMessageReceiver.pas',
  interface_messageInformationDisplayer in '..\Lib\Task\interfaces\interface_messageInformationDisplayer.pas',
  interface_documentAttachmentList_Loader in '..\Lib\Task\interfaces\interface_documentAttachmentList_Loader.pas',
  interface_documentStorage in '..\Lib\Task\interfaces\interface_documentStorage.pas',
  interface_documentAttachmentStorage in '..\Lib\Task\interfaces\interface_documentAttachmentStorage.pas',
  interface_userInfoList in '..\Lib\Task\interfaces\interface_userInfoList.pas',
  interface_userInfoLoader in '..\Lib\Task\interfaces\interface_userInfoLoader.pas',
  interface_integerList in '..\Lib\Common\interface\interface_integerList.pas',
  interface_folderList in '..\Lib\Task\interfaces\interface_folderList.pas',
  interface_folder in '..\Lib\Task\interfaces\interface_folder.pas',
  interface_factoryUserData in '..\Lib\Task\interfaces\interface_factoryUserData.pas',
  interface_departmentList in '..\Lib\Task\interfaces\interface_departmentList.pas',
  interface_department in '..\Lib\Task\interfaces\interface_department.pas',
  interface_departmentListLoader in '..\Lib\Task\interfaces\interface_departmentListLoader.pas',
  interface_documentListLoader in '..\Lib\Task\interfaces\interface_documentListLoader.pas',
  interface_taskStatus in '..\Lib\Task\interfaces\interface_taskStatus.pas',
  //--[ Forms ]--
  Form_ConnectionStatus in '..\Lib\Common\ui\forms\Form_ConnectionStatus.pas' {ConnectionStatus_Form},
  Form_DocumentEditor in '..\Lib\Task\UI\forms\documents\Form_DocumentEditor.pas' {DocumentEditorForm},
  Form_Login in '..\Lib\Common\ui\forms\Form_Login.pas' {LoginForm},
  Frame_PaperworkUser_Workplace in '..\Lib\Task\UI\frames\Frame_PaperworkUser_Workplace.pas' {PaperworkUser_Workplace: TFrame},
  Form_ProgressDisplayer in '..\Lib\Common\ui\forms\Form_ProgressDisplayer.pas' {ProgressDisplayer},
  Form_Skined in '..\Lib\Common\ui\forms\Form_Skined.pas' {SkinedForm},
  Logo_Form in '..\Lib\Task\UI\Logo_Form.pas' {LogoForm},
  UserTerminal in 'UserTerminal.pas' {UserTerminalForm},
  Form_DocumentAttachmentEditor in '..\Lib\Task\UI\forms\documents\attachments\Form_DocumentAttachmentEditor.pas' {DocumentAttachment_EditorForm},
  //--[ Frames ]--
  Frame_AttachmentEditor in '..\Lib\Task\UI\frames\documents\Frame_AttachmentEditor.pas' {Attachment_EditorFrame: TFrame},
  Frame_DocumentAttachments_Editor in '..\Lib\Task\UI\frames\documents\Frame_DocumentAttachments_Editor.pas' {document_attachments_editor: TFrame},
  Frame_ContainerEditor in '..\Lib\Common\ui\frames\Frame_ContainerEditor.pas' {ContainerEditorFrame: TFrame},
  Frame_DocumentBody_Editor in '..\Lib\Task\UI\frames\documents\Frame_DocumentBody_Editor.pas' {document_body_editor_frame: TFrame},
  Frame_DocumentEditor in '..\Lib\Task\UI\frames\documents\Frame_DocumentEditor.pas' {document_editor_frame: TFrame},
  Frame_DocumentHeaderEditor in '..\Lib\Task\UI\frames\documents\Frame_DocumentHeaderEditor.pas' {document_header_editor_frame: TFrame},
  Frame_Editor in '..\Lib\Common\ui\frames\Frame_Editor.pas' {EditorFrame: TFrame},
  Frame_Skined in '..\Lib\Common\ui\frames\Frame_Skined.pas' {SkinedFrame: TFrame},
  Frame_UserWorkplace in '..\Lib\Common\ui\frames\Frame_UserWorkplace.pas' {UserWorkplace: TFrame},
  Frame_document_attachment_viewer in '..\Lib\Task\UI\frames\documents\Frame_document_attachment_viewer.pas' {document_attachment_viewer: TFrame},
  frame_document_view in '..\Lib\Task\UI\frames\documents\frame_document_view.pas' {document_view_frame: TFrame},
  Frame_document_body_viewer in '..\Lib\Task\UI\frames\documents\Frame_document_body_viewer.pas' {document_body_view_frame: TFrame},
  Frame_document_header_view in '..\Lib\Task\UI\frames\documents\Frame_document_header_view.pas' {document_header_view_frame: TFrame},
  Frame_OperatorWorkplace in '..\Lib\Task\UI\frames\Frame_OperatorWorkplace.pas' {OperatorWorkplace: TFrame},
  Frame_OfficeManager_Workplace in '..\Lib\Task\UI\frames\Frame_OfficeManager_Workplace.pas' {OfficeManagerWorkplace: TFrame},
  frame_RichText_Editor in '..\Lib\Common\ui\frames\frame_RichText_Editor.pas' {RichText_EditorFrame: TFrame},
  frame_functions in '..\Lib\Task\UI\frames\frame_functions.pas' {FunctionsFrame: TFrame},
  //--[ Lists ]--
  list_documents in '..\Lib\Task\data\lists\list_documents.pas',
  list_documentAttachments in '..\Lib\Task\data\lists\list_documentAttachments.pas',
  list_documentDirections in '..\Lib\Task\data\lists\list_documentDirections.pas',
  list_documentKinds in '..\Lib\Task\data\lists\list_documentKinds.pas',
  //--[ Loaders ]--
  loader_userData in '..\Lib\Task\loaders\loader_userData.pas',
  loader_documentsList in '..\Lib\Task\loaders\loader_documentsList.pas',
  loader_documentAttachmentList in '..\Lib\Task\loaders\loader_documentAttachmentList.pas',
  loader_factoryUser in '..\Lib\Task\loaders\loader_factoryUser.pas',
  loader_departmentList in '..\Lib\Task\loaders\loader_departmentList.pas',
  //--[ Threads ]--
  thread_messageScan in '..\Lib\Task\threads\thread_messageScan.pas',
  thread_sql_messageScan in '..\Lib\Task\threads\thread_sql_messageScan.pas',
  //--[ Tools ]--
  Authentificator in '..\Lib\Task\tools\authentification\Authentificator.pas',
  tool_StreamHandler in '..\Lib\Common\tools\handlers\tool_StreamHandler.pas',
  tool_GlobalLog in '..\Lib\Task\tools\log\tool_GlobalLog.pas',
  tool_userInfo in '..\Lib\Task\tools\tool_userInfo.pas',
  tool_documentInfo in '..\Lib\Task\tools\tool_documentInfo.pas',
  tool_messageSender in '..\Lib\Common\messages\tool_messageSender.pas',
  tool_documentMessageSender in '..\Lib\Common\messages\tool_documentMessageSender.pas',
  tool_messageReceiver in '..\Lib\Task\tools\tool_messageReceiver.pas',
  tool_documentMessageReceiver in '..\Lib\Task\tools\tool_documentMessageReceiver.pas',
  tool_messageScaner in '..\Lib\Task\tools\tool_messageScaner.pas',
  tool_sql_documentMessageReceiver in '..\Lib\Task\tools\messages\tool_sql_documentMessageReceiver.pas',
  tool_sql_documentMessageSender in '..\Lib\Task\tools\messages\tool_sql_documentMessageSender.pas',
  tool_Environment in '..\Lib\Task\tools\tool_Environment.pas',
  tool_sql_documentMessageReceiver_ArrivalChecker in '..\Lib\Task\tools\messages\tool_sql_documentMessageReceiver_ArrivalChecker.pas',
  tool_GlobalSystem in '..\Lib\Task\tools\tool_GlobalSystem.pas',
  tool_Settings in '..\Lib\Task\tools\tool_Settings.pas',
  //--[ types ]--
  type_userInfo in '..\Lib\Task\types\type_userInfo.pas',
  type_documentInfo in '..\Lib\Task\types\type_documentInfo.pas',
  type_Message in '..\Lib\Task\types\type_Message.pas',
  storage_document in '..\Lib\Task\data\storage\storage_document.pas',
  storage_documentAttachment in '..\Lib\Task\data\storage\storage_documentAttachment.pas',
  storage_ObjectHashTable in '..\Lib\Common\storage\hash\storage_ObjectHashTable.pas',
  storage_StringHashTable in '..\Lib\Common\storage\hash\storage_StringHashTable.pas',
  storage_HashTable in '..\Lib\Common\storage\hash\storage_HashTable.pas',
  adapter_messageClient in '..\Lib\Task\adapters\adapter_messageClient.pas',
  loader_userInfo in '..\Lib\Task\loaders\loader_userInfo.pas',
  const_integerList in '..\Lib\Common\constants\const_integerList.pas',
  Form_UserListSelect in '..\Lib\Task\UI\forms\users\Form_UserListSelect.pas' {SelectUserList_Form},
  list_userInfo in '..\Lib\Task\data\lists\list_userInfo.pas',
  factory_documents in '..\Lib\Task\tools\factory\factory_documents.pas',
  list_folders in '..\Lib\Task\data\lists\list_folders.pas',
  data_folder in '..\Lib\Task\data\data_folder.pas',
  factory_message in '..\Lib\Task\tools\factory\factory_message.pas',
  factory_users in '..\Lib\Task\tools\factory\factory_users.pas',
  storage_integerQueue in '..\..\..\..\library\ir_lib\storage\queue\storage_integerQueue.pas',
  storage_queue in '..\..\..\..\library\ir_lib\storage\queue\storage_queue.pas',
  data_factoryUser in '..\Lib\Task\data\data_factoryUser.pas',
  form_taskStatus in '..\Lib\Task\UI\forms\form_taskStatus.pas' {TaskStatus_Form},
  storage_interfaceHashTable in '..\..\..\..\..\library\ir_lib\storage\hash\storage_interfaceHashTable.pas',
  pool_query in '..\..\..\..\..\library\ir_lib\storage\pools\pool_query.pas',
  storage_objectQueue in '..\..\..\..\library\ir_lib\storage\queue\storage_objectQueue.pas',
  storage_integerList in '..\..\..\..\library\ir_lib\storage\list\storage_integerList.pas',
  storage_commonList in '..\..\..\..\library\ir_lib\storage\list\storage_commonList.pas',
  const_departmentListLoader in '..\Lib\Task\constants\const_departmentListLoader.pas',
  list_departments in '..\Lib\Task\data\lists\list_departments.pas',
  data_department in '..\Lib\Task\data\data_department.pas',
  const_strings in '..\Lib\Common\constants\const_strings.pas'
  ;

{$R *.res}
 //##[ VARIABLES ]##
 var
    g_status : ITaskStatus;
    g_compressor : TFlexCompress;

 //##[ PROCEDURES ]##
    procedure register_classes();
    begin

    end;//proc


    procedure setup_environment();
    begin
      g_status.setSubTaskName( 'Настройка окружения...' );

      Environment.set_string( c_ATTACHMENT_DIR, 'p:\attachments\' );
      Environment.set_string( c_ATTACHMENT_EXT, '.dat' );
      Environment.set_string( c_GLOBAL_PASS,    'W3pps#' );

      Environment.set_string( c_protocol,  Settings.get_string( c_protocol, c_db_settings ) );
      Environment.set_string( c_host_name, Settings.get_string( c_host_name, c_db_settings ) );
      Environment.set_string( c_database,  Settings.get_string( c_database, c_db_settings ) );
      Environment.set_string( c_user,      Settings.get_string( c_user, c_db_settings ) );
      Environment.set_variant( c_db_port,  Settings.get_integer( c_db_port, c_db_settings ) );
      Environment.set_variant( c_login_prompt, Settings.get_boolean( c_login_prompt, c_db_settings ) );

      Environment.set_string( c_documents_folder, 'documents' );

      //--[ setup compressor ]--
      g_compressor := TFlexCompress.Create(nil);
      with g_compressor do
      begin
        ExtractCorruptedFiles := false;
        CompressionLevel      := clNormal;
        CompressionMode       := 6;
        SpanningMode          := smNone;
        SpanningOptions.AdvancedNaming := True;
        SpanningOptions.VolumeSize     := vsAutoDetect;
        Options.ShareMode              := smShareCompat;
        Options.FlushBuffers           := True;
        InMemory                       := False;
        CompressionAlgorithm           := caZLIB;
        CryptoAlgorithm                := caDES_Triple;
      end;//with


      Environment.set_object( c_COMPRESSOR, g_compressor );
    end;


    procedure clean_environment();
    begin
      Environment.delete_string( c_ATTACHMENT_DIR );
      Environment.delete_string( c_ATTACHMENT_EXT );
      Environment.delete_string( c_GLOBAL_PASS );
    end;

    procedure init_db();
    begin
      g_status.setSubTaskName( 'Настройка соединения с БД...' );
    end;//proc

    procedure initialize();
    begin
      g_status.setTaskName( 'Инициализация...' );

      setup_environment();
      register_classes();

      init_db();

      QueryPool.initialize();

      g_status.setSubTaskName( 'Загрузка справочников...' );
      tool_userInfo.initialize();
      tool_documentInfo.initialize();
    end;//proc

    procedure finalize();
    begin
      clean_environment();

      FreeAndNil( g_compressor );

      //Settings.disconnect();
      //Settings.finalize();
    end;

    procedure init_settings();
    begin
      Settings.initialize( 'smart_client.ini' );
      Settings.connect();
    end;//proc

    function WrapString( source : string; width : integer ) : string;
       //^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
       // goal: wrap string around specific width
       // method: copy only "width" character for each line and
       //         add <CR><LF> (#13#10)
       var
         i : integer;
         cnt : integer;
     begin
       result := '';

       cnt := length( source ) div width;
       for i := 0 to cnt - 1 do
         result := result + copy( source, i*width + 1, width ) + #13#10;

       if cnt*width < length( source ) then
         result := result + copy( source, cnt*width, width );
     end;//function

begin
    Application.Initialize;

    try
      init_settings();

      //init logo form
      logoForm := TLogoForm.Create( application );

      logoForm.setVersion( 'Версия ' + Settings.get_string( c_version, c_terminal_settings ) );

      logoForm.Show();
      logoForm.Update();

      //init status form
      g_status := logoForm;

      //init application
      initialize();

      g_status := nil;
    except
      on e:exception do
      begin
        sShowMessage(
          WrapString(
            'Пожалуйста, обратитесь к администратору'+#10#13+
            'Сообщение события:' +
            e.message,
            100
            )
          );
        exit;
      end;
    end;//try-except

  try
   try
    //create work form
    Application.Title := 'Документооборот';
    Application.CreateForm(TUserTerminalForm, UserTerminalForm);

    //hide logo form

    logoForm.Hide();
    FreeAndNil( logoForm );

    //initialize work form
    userTerminalForm.show();
    userTerminalForm.update();
    userTerminalForm.initialize();


    Application.Run;

    except
      on e:exception do
      begin
        GlobalLog.Write( '###' + e.message );
        sShowMessage(
          WrapString(
            'Пожалуйста, обратитесь к администратору'+#10#13+
            'Сообщение события:' +
            e.message,
            100
          )
        );
      end;
    end;//try--except
  finally
    if( assigned( userTerminalForm ) )then
      FreeAndNil( userTerminalForm );
  end;//try--finally

  finalize();
end.
