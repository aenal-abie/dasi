object frmPenutupanError: TfrmPenutupanError
  Left = 548
  Top = 126
  Width = 531
  Height = 480
  BorderIcons = []
  BorderStyle = bsSizeToolWin
  Caption = 'Proses Penutupan'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 523
    Height = 446
    Align = alClient
    TabOrder = 0
    TabStop = False
    object mmoPesan: TMemo
      Left = 12
      Top = 70
      Width = 398
      Height = 298
      BorderStyle = bsNone
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssVertical
      TabOrder = 5
      WordWrap = False
    end
    object btn2: TcxButton
      Left = 307
      Top = 11
      Width = 124
      Height = 25
      Caption = 'Tutup Saldo'
      TabOrder = 1
      OnClick = btn2Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        5555000050000005555544F00BFBFBF0555544F0BFBF0000055544F0FBFBFBFB
        F05544F0BFBF0000000544F0F000FBFBF00544F0B0B000000F000000F0F000FB
        FB0F555500BFBFBFB0F455555500FBFB0F44555555550000F44455555555550F
        4444555555555550044455555555555550045555555555555550}
    end
    object DtPenutupanTerakhir: TcxDateEdit
      Left = 182
      Top = 13
      Style.HotTrack = False
      TabOrder = 0
      Width = 121
    end
    object DtMulaiPenutupan: TcxDateEdit
      Left = 182
      Top = 42
      Style.HotTrack = False
      TabOrder = 3
      Width = 121
    end
    object DtSampaiPenutupan: TcxDateEdit
      Left = 391
      Top = 42
      Style.HotTrack = False
      TabOrder = 4
      Width = 121
    end
    object pgrsbrProses: TcxProgressBar
      Left = 11
      Top = 416
      Properties.PeakValue = 100.000000000000000000
      TabOrder = 6
      Width = 121
    end
    object btn1: TcxButton
      Left = 437
      Top = 11
      Width = 75
      Height = 25
      Caption = 'Tutup'
      TabOrder = 2
      OnClick = btn1Click
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        04000000000080000000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00999999999999
        99999C4F0F44400004499CC0F040088880099CC0F008888000099CCF00888007
        88099CCC0888077780499CC0FF80777880499CC0FF00877804499C0FF077F870
        44499C0FF0777F8444499C0F077770F8F4499C0F07770CC084499C007700CCF8
        F4499CC000CCCCCCCC499CCCCCCCCCCCCCC99999999999999999}
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object LCIdxlytcntrl1Item2: TdxLayoutItem
            AlignHorz = ahClient
            AlignVert = avCenter
            CaptionOptions.Text = 'Tanggal Penutupan Terakhir'
            Control = DtPenutupanTerakhir
            ControlOptions.ShowBorder = False
          end
          object LCIdxlytcntrl1Item3: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn2
            ControlOptions.ShowBorder = False
          end
          object LCIdxlytcntrl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'cxButton1'
            CaptionOptions.Visible = False
            Control = btn1
            ControlOptions.ShowBorder = False
          end
        end
        object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object LCIdxlytcntrl1Item4: TdxLayoutItem
            AlignHorz = ahClient
            CaptionOptions.Text = 'Mulai Penutupan Selanjutnya'
            Control = DtMulaiPenutupan
            ControlOptions.ShowBorder = False
          end
          object LCIdxlytcntrl1Item5: TdxLayoutItem
            CaptionOptions.Text = 'Sampai Tanggal'
            Control = DtSampaiPenutupan
            ControlOptions.ShowBorder = False
          end
        end
      end
      object LCIdxlytcntrl1Item1: TdxLayoutItem
        AlignVert = avClient
        Control = mmoPesan
      end
      object LCIdxlytcntrl1Item6: TdxLayoutItem
        Control = pgrsbrProses
        ControlOptions.ShowBorder = False
      end
    end
  end
  object ADOQuery1: TADOQuery
    Tag = 1
    Connection = ADOConnection1
    Parameters = <>
    Left = 152
    Top = 208
  end
  object ADOStoredProc1: TADOStoredProc
    Tag = 1
    Connection = ADOConnection1
    ProcedureName = 'sp_tutup'
    Parameters = <
      item
        DataType = ftString
        Size = 1
        Value = '1'
      end
      item
        DataType = ftString
        Size = 10
        Value = '2015-01-01'
      end>
    Left = 120
    Top = 240
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Extended Properti' +
      'es="DSN=dasi_2015;SERVER=localhost;UID=root;DATABASE=dasi_2015;P' +
      'ORT=3306"'
    LoginPrompt = False
    Left = 120
    Top = 208
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 248
    Top = 152
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
end
