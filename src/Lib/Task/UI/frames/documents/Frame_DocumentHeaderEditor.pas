unit Frame_DocumentHeaderEditor;

interface

uses
  //--[ common ]--
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Frame_Skined, StdCtrls, Mask,
  math, jclSysUtils,
  //--[ consts ]--
  const_document,
  const_documentDirectionsList,
  //--[ factories ]--
  factory_documents,
  //--[ frames ]--
  frame_Editor,
  //--[ interfaces ]--
  interface_document,
  interface_documentDirectionsList,
  interface_userInfo, sFrameAdapter, sComboBox, sLabel
  ;

type
  Tdocument_header_editor_frame = class(TEditorFrame)
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    src_fio_label: TsLabel;
    src_role_label: TsLabel;
    to_users_comboBox: TsComboBox;
    procedure to_users_comboBoxChange(Sender: TObject);
  private
    Fsource            : string;
    Fdocument          : IDocument;
    Fdestination_list  : IDocumentDirectionsList;
    Fis_internal_changes: boolean;

    procedure check_data;
    function get_document: IDocument;
    procedure set_document(const Value: IDocument);
    procedure update_interface;
    function get_destination_list: IDocumentDirectionsList;
    procedure set_destination_list(const Value: IDocumentDirectionsList);
    procedure update_destination_users_ui;
    function get_direction_index: integer;
    procedure set_direction_index(const Value: integer);
    procedure set_source(const Value: IUserInfo);
    procedure Setis_internal_changes(const Value: boolean);
    procedure update_document;
    { Private declarations }

  protected
    property is_internal_changes : boolean read Fis_internal_changes write Setis_internal_changes;
  public
    constructor Create( AOwner : tComponent );override;
    destructor  Destroy();override;

    { Public declarations }

    //--[ methods ]--
    procedure initialize();override;
    

    //--[ property ]--
    property direction_index : integer read get_direction_index write set_direction_index;
    property destination_list : IDocumentDirectionsList read get_destination_list write set_destination_list;
    property document : IDocument read get_document write set_document;
    property source   : IUserInfo write set_source;
  end;

var
  document_header_editor_frame: Tdocument_header_editor_frame;

implementation

uses Contnrs, Paperwork_ClassFactory, interface_documentDirection;

{$R *.dfm}

{ Tdocument_header_editor_frame }




procedure Tdocument_header_editor_frame.check_data();
begin
  if( Fdocument = nil )then
    Fdocument := documents_factory.createInstance( CLSID_Document, IID_IDocument ) as IDocument;

  if( Fdestination_list = nil )then
    Fdestination_list := documents_factory.createInstance( CLSID_DOCUMENT_DIRECTION_LIST, IID_IDocumentDirectionsList ) as IDocumentDirectionsList;
end;




constructor Tdocument_header_editor_frame.Create(AOwner: tComponent);
begin
  inherited;

  check_data();
end;

destructor Tdocument_header_editor_frame.Destroy;
begin
  Fdocument := nil;
  Fdestination_list := nil;                              

  inherited;
end;


function Tdocument_header_editor_frame.get_document: IDocument;
begin
  result := Fdocument;
end;

procedure Tdocument_header_editor_frame.set_document(
  const Value: IDocument);
begin
  Fdocument := value;

  update_interface();
end;

procedure Tdocument_header_editor_frame.update_interface();
begin
  src_fio_label.Caption  := Fdocument.from_user.fio;
  src_role_label.Caption := Fdocument.from_user.role_name;
end;//proc


function Tdocument_header_editor_frame.get_destination_list: IDocumentDirectionsList;
begin
  result := Fdestination_list;
end;

procedure Tdocument_header_editor_frame.set_destination_list(
  const Value: IDocumentDirectionsList);
begin
  Fdestination_list := value;

  is_internal_changes := true;

  update_destination_users_ui();

  is_internal_changes := false;
end;

procedure Tdocument_header_editor_frame.update_destination_users_ui();
  var
    i : integer;
begin
  to_users_comboBox.items.clear();
  for i := 0  to fdestination_list.count - 1 do
  begin
    to_users_comboBox.items.add(
      fdestination_list.Directions[ i ]. to_user.role_name +
      '(' +
      fdestination_list.Directions[ i ].to_user.fio +
      ')'
    );
  end;//for

  if( assigned( Fdocument ))then
    initialize()
  else
    to_users_comboBox.ItemIndex := 0;
end;//proc


procedure Tdocument_header_editor_frame.to_users_comboBoxChange(
  Sender: TObject);
begin
  inherited;

  if( is_internal_changes )then
    exit;

  if( to_users_comboBox.ItemIndex < 0 )then
    exit;

  update_document();

  data_changed := true;
end;

procedure Tdocument_header_editor_frame.update_document();
begin
  Fdocument.to_user := Fdestination_list.Directions[
                        to_users_comboBox.ItemIndex
                       ]
                        .to_user;

  Fdocument.pipe_ind := Fdestination_list.Directions[
                          to_users_comboBox.ItemIndex
                        ]   
                         .direction_index ;
end;//proc


function Tdocument_header_editor_frame.get_direction_index: integer;
begin
  result := to_users_comboBox.ItemIndex;
end;

procedure Tdocument_header_editor_frame.set_direction_index(
  const Value: integer);
begin
  to_users_comboBox.ItemIndex := value;
end;

procedure Tdocument_header_editor_frame.set_source(const Value: IUserInfo);
begin
  src_role_label.Caption := value.role_name;
  src_fio_label.Caption  := value.fio;
end;

procedure Tdocument_header_editor_frame.Setis_internal_changes(
  const Value: boolean);
begin
  Fis_internal_changes := Value;
end;

procedure Tdocument_header_editor_frame.initialize;
  var
    _dir_ind : integer;
begin
  inherited;

  is_internal_changes := true;

  _dir_ind := Fdestination_list
                .indexOfUser(
                   Fdestination_list
                    .userByPipe(
                      Fdocument.pipe_ind
                    )
                )
               ;

  to_users_comboBox.ItemIndex :=  iff( _dir_ind = -1, 0, _dir_ind );

  update_document();

  is_internal_changes := false;
end;

end.
