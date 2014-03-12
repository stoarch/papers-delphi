unit Frame_document_attachment_viewer;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, shellApi, FlexCompress, sDialogs,
  ImgList, Menus, jclShell, Buttons, sSpeedButton, sFrameAdapter,
  //--[ constants ]--
  const_string,
  //--[ interfaces ]--
  interface_documentAttachment,
  interface_documentAttachmentList,
  //--[ factories ]--
  factory_documents,
  //--[ frames ]--
  Frame_Skined,
  //--[ tools ]--
  tool_Environment,
  tool_GlobalSystem
  ;

type
  Tdocument_attachment_viewer = class(TSkinedFrame)
    items_imageList: TImageList;
    attachment_popup_menu: TPopupMenu;
    attachments_button: TsSpeedButton;
    procedure attachments_buttonClick(Sender: TObject);
  private
    Fattachment_list: IDocumentAttachmentList;
    procedure Setattachment_list(const Value: IDocumentAttachmentList);
    procedure add_visual_attachment( attachment : IDocumentAttachment);
    procedure load_ui_from_list(list: IDocumentAttachmentList);
    procedure Handle_ClickOnAttachment(sender: TObject);
    procedure showAttachment(attachment: IDocumentAttachment);
    { Private declarations }
  public
    { Public declarations }
    constructor Create( AOwner : TComponent );override;
    destructor Destroy();override;


    //--[ properties ]--
    property attachment_list : IDocumentAttachmentList read Fattachment_list write Setattachment_list;
  end;

var
  document_attachment_viewer: Tdocument_attachment_viewer;

implementation

uses Paperwork_ClassFactory, const_documentAttachmentList;

{$R *.dfm}
{ Tdocument_attachment_viewer }


procedure Tdocument_attachment_viewer.add_visual_attachment( attachment : IDocumentAttachment);
 var
   item : TMenuItem;
begin
  item := TMenuItem.Create( attachment_popup_menu );
  item.Caption :=  attachment.caption + ' (' + attachment.doc_file + ')';
  item.OnClick :=  Handle_ClickOnAttachment;
  item.Visible :=  true;
  item.Enabled :=  true;

  attachment_popup_menu.Items.Add( item );
end;

procedure Tdocument_attachment_viewer.Handle_ClickOnAttachment( sender : TObject );
begin
  if( sender is TMenuItem )then
  with sender as TMenuItem do
  begin
    ShowAttachment(
      Fattachment_list.Attachments[
        MenuIndex
      ]
    );
  end;//with
end;//proc

procedure Tdocument_attachment_viewer.showAttachment( attachment : IDocumentAttachment);
  var
    file_name : string;
    path      : string;
    doc_path   : string;
    compressor : TFlexCompress;
begin
  Screen.Cursor := crHourGlass;
  Application.ProcessMessages();

  compressor := Environment.get_object( c_compressor ) as TFlexCompress;
  assert( compressor <> nil, 'Tdocument_attachment_viewer.showAttachment::Must be referenced compressor to work properly' );

  try
    file_name  := attachment.urn;

    path := GlobalSystem.get_temp_path() + 
            Environment.get_string( c_documents_folder )
            ; 

    doc_path   := path + '\' + ExtractFileName( attachment.doc_file );

    //prepare directory
    if( not DirectoryExists( path ) )then
      if not CreateDir( path ) then
        raise Exception.Create( SysErrorMessage( GetLastError() ) );

    if( not FileExists( doc_path ))then
      //extract files
      with compressor do
      begin
        FileName := file_name;
        Password := Environment.get_string( c_GLOBAL_PASS );

        OpenArchive(fmOpenRead);
        BaseDir  := path;
        try
          ExtractFiles( '*.*' );
        except
          sShowMessage( 'Файл ' + file_name + ' не найден!' );
        end;//try-except

        CloseArchive();
      end;//with

    ShellExecEx( doc_path, '', 'open',  SW_SHOWNORMAL );
  finally
    Screen.Cursor := crDefault;
    Application.ProcessMessages();
  end;//try-finally
end;//proc



procedure Tdocument_attachment_viewer.Setattachment_list(
  const Value: IDocumentAttachmentList);
begin
  Fattachment_list := ( Value );

  load_ui_from_list( value );
end;

procedure Tdocument_attachment_viewer.load_ui_from_list( list : IDocumentAttachmentList );
  var
    i : integer;
begin
  attachments_button.enabled := list.count > 0;
  
  attachment_popup_menu.Items.Clear;
  for i := 0 to list.count - 1 do
  begin
    add_visual_attachment( list.Attachments[ i ] );
  end;//for
end;



constructor Tdocument_attachment_viewer.Create(AOwner: TComponent);
begin
  inherited;

  Fattachment_list := documents_factory.createInstance( CLSID_DOCUMENT_ATTACHMENT_LIST, IID_IDocumentAttachmentList ) as IDocumentAttachmentList;
end;

destructor Tdocument_attachment_viewer.Destroy;
begin
  Fattachment_list := nil;

  inherited;
end;

procedure Tdocument_attachment_viewer.attachments_buttonClick(
  Sender: TObject);
  var
    pt : TPoint;
begin
  inherited;
  pt := clientToScreen(
                        Point(
                          attachments_button.left + 4,
                          attachments_button.top + attachments_button.height - 4
                        )  
                      );

  attachment_popup_menu.Popup(
    pt.x,
    pt.y
  );
end;

end.
