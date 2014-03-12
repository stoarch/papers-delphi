inherited TaskStatus_Form: TTaskStatus_Form
  Left = 437
  Top = 18
  BorderStyle = bsNone
  Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1088#1072#1073#1086#1090#1099
  ClientHeight = 76
  ClientWidth = 332
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object task_label: TsLabel [0]
    Left = 3
    Top = 6
    Width = 325
    Height = 16
    Caption = #1042#1099#1087#1086#1083#1085#1103#1102' '#1079#1072#1076#1072#1095#1091'. '#1055#1086#1076#1086#1078#1076#1080#1090#1077' '#1087#1086#1078#1072#1083#1091#1081#1089#1090#1072
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
  end
  object task_name_label: TsLabel [1]
    Left = 3
    Top = 24
    Width = 325
    Height = 13
    AutoSize = False
  end
  object subTask_caption: TsLabel [2]
    Left = 3
    Top = 39
    Width = 153
    Height = 16
    Caption = #1058#1077#1082#1091#1097#1077#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1077':'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
  end
  object subTask_label: TsLabel [3]
    Left = 3
    Top = 54
    Width = 325
    Height = 17
    AutoSize = False
  end
end
