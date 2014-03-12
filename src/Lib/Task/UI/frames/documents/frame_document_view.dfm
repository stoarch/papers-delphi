inherited document_view_frame: Tdocument_view_frame
  Width = 495
  Height = 387
  OnResize = nil
  DesignSize = (
    495
    387)
  inline document_attachment_viewer: Tdocument_attachment_viewer [0]
    Left = 4
    Top = 3
    Width = 30
    Height = 31
    TabOrder = 0
    OnResize = FrameResize
    inherited attachments_button: TsSpeedButton
      Left = 4
      Top = 4
      Width = 24
    end
  end
  inline document_header_view_frame: Tdocument_header_view_frame
    Left = 57
    Top = 6
    Width = 433
    Height = 43
    Anchors = [akTop, akRight]
    TabOrder = 1
  end
  inline document_body_view_frame: Tdocument_body_view_frame
    Left = 3
    Top = 57
    Width = 487
    Height = 324
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    OnResize = FrameResize
    inherited sPanel1: TsPanel
      Width = 475
      Height = 312
      inherited doc_kind_label: TsPanel
        Width = 463
      end
      inherited sGroupBox1: TsGroupBox
        Width = 460
        Height = 266
        inherited document_content: TsRichEdit
          Width = 456
          Height = 249
        end
      end
    end
  end
end
