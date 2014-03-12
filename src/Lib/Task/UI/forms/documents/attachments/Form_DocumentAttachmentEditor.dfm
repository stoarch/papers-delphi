inherited DocumentAttachment_EditorForm: TDocumentAttachment_EditorForm
  Left = 153
  Top = 168
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = #1056#1077#1076#1072#1082#1090#1086#1088' '#1087#1088#1080#1083#1086#1078#1077#1085#1080#1103' '#1082' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
  ClientHeight = 129
  ClientWidth = 213
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  inline Attachment_EditorFrame: TAttachment_EditorFrame [0]
    Left = 3
    Top = 3
    Width = 207
    Height = 93
    TabOrder = 0
  end
  object submit_button: TsButton
    Left = 5
    Top = 101
    Width = 97
    Height = 25
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 1
    SkinData.SkinSection = 'BUTTON'
  end
  object cancel_button: TsButton
    Left = 113
    Top = 101
    Width = 97
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ModalResult = 2
    TabOrder = 2
    SkinData.SkinSection = 'BUTTON'
  end
  inherited skin_provider: TsSkinProvider
    Left = 390
    Top = 45
  end
end
