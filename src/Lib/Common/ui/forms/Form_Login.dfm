inherited LoginForm: TLoginForm
  Left = 314
  Top = 103
  BorderStyle = bsSingle
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 141
  ClientWidth = 275
  OldCreateOrder = True
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel [0]
    Left = 9
    Top = 6
    Width = 61
    Height = 13
    Caption = #1055#1089#1077#1074#1076#1086#1085#1080#1084':'
  end
  object sLabel2: TsLabel [1]
    Left = 6
    Top = 54
    Width = 41
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100':'
  end
  object nick_edit: TsEdit [2]
    Left = 12
    Top = 24
    Width = 250
    Height = 21
    TabOrder = 0
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.Active = False
  end
  object password_edit: TsEdit [3]
    Left = 15
    Top = 72
    Width = 247
    Height = 24
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    PasswordChar = #8226
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.Active = False
  end
  object login_button: TsButton [4]
    Left = 11
    Top = 105
    Width = 124
    Height = 25
    Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100
    Default = True
    ModalResult = 1
    TabOrder = 2
    SkinData.SkinSection = 'BUTTON'
  end
  object cancel_button: TsButton [5]
    Left = 140
    Top = 105
    Width = 124
    Height = 25
    Cancel = True
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    ModalResult = 2
    TabOrder = 3
    SkinData.SkinSection = 'BUTTON'
  end
  inherited skin_provider: TsSkinProvider
    BorderIcons = []
    Left = 93
    Top = 165
  end
end
