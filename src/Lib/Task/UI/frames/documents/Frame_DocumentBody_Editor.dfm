inherited document_body_editor_frame: Tdocument_body_editor_frame
  Width = 629
  Height = 355
  DesignSize = (
    629
    355)
  object sPanel1: TsPanel [0]
    Left = 9
    Top = 9
    Width = 609
    Height = 338
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelInner = bvLowered
    TabOrder = 0
    SkinData.SkinSection = 'PANEL'
    DesignSize = (
      609
      338)
    object sLabel1: TsLabel
      Left = 9
      Top = 9
      Width = 79
      Height = 13
      Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072':'
    end
    object doc_kind_combobox: TsComboBox
      Left = 12
      Top = 27
      Width = 585
      Height = 21
      Alignment = taLeftJustify
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.Active = False
      SkinData.SkinSection = 'COMBOBOX'
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      ItemHeight = 13
      ItemIndex = -1
      TabOrder = 0
      OnChange = doc_kind_combobox1Change
    end
    object doc_content_group_box: TsGroupBox
      Left = 15
      Top = 60
      Width = 584
      Height = 268
      Anchors = [akLeft, akTop, akRight, akBottom]
      Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077
      TabOrder = 1
      SkinData.SkinSection = 'GROUPBOX'
      inline content_editorFrame: TRichText_EditorFrame
        Left = 2
        Top = 15
        Width = 580
        Height = 251
        Align = alClient
        Constraints.MinHeight = 150
        Constraints.MinWidth = 580
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        inherited sPanel1: TsPanel
          Width = 580
          inherited FontSize: TsComboBox
            Hint = #1042#1099#1073#1077#1088#1080#1090#1077' '#1074#1080#1076' '#1096#1088#1080#1092#1090#1072' '#1076#1083#1103' '#1085#1072#1087#1080#1089#1072#1085#1080#1103
            Style = csDropDownList
          end
        end
        inherited Ruler: TsPanel
          Width = 580
          DesignSize = (
            580
            30)
          inherited RulerLine: TsBevel
            Width = 567
          end
          inherited RightInd: TLabel
            Left = 564
          end
        end
        inherited Editor: TsRichEdit
          Width = 580
          Height = 168
        end
        inherited StatusBar: TsStatusBar
          Top = 232
          Width = 580
        end
      end
    end
  end
end
