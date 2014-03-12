inherited SelectUserList_Form: TSelectUserList_Form
  Left = 283
  Top = 83
  BorderStyle = bsDialog
  Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
  ClientHeight = 302
  ClientWidth = 438
  OldCreateOrder = True
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object users_checkListBox: TsCheckListBox [0]
    Left = 3
    Top = 3
    Width = 431
    Height = 260
    BorderStyle = bsSingle
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.Active = False
    SkinData.SkinSection = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    IntegralHeight = True
    ItemHeight = 16
    ParentFont = False
    TabOrder = 0
    OnClickCheck = users_checkListBoxClickCheck
  end
  object select_all_button: TsButton [1]
    Left = 3
    Top = 267
    Width = 97
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
    TabOrder = 1
    OnClick = select_all_button1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object select_button: TsButton [2]
    Left = 237
    Top = 267
    Width = 97
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = #1042#1099#1073#1088#1072#1090#1100
    Default = True
    Enabled = False
    ModalResult = 1
    TabOrder = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object unselect_all_button: TsButton [3]
    Left = 105
    Top = 267
    Width = 107
    Height = 31
    Anchors = [akLeft, akBottom]
    Caption = #1056#1072#1079#1074#1077#1076#1077#1083#1080#1090#1100' '#1074#1089#1077
    TabOrder = 3
    OnClick = unselect_all_button1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object cancel_button: TsButton [4]
    Left = 336
    Top = 267
    Width = 97
    Height = 31
    Anchors = [akLeft, akBottom]
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ModalResult = 2
    TabOrder = 4
    SkinData.SkinSection = 'BUTTON'
  end
end
