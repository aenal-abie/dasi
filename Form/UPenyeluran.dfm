object frmPenyaluran: TfrmPenyaluran
  Left = 251
  Top = 125
  Width = 870
  Height = 500
  Caption = 'Penyaluran'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 862
    Height = 466
    Align = alClient
    TabOrder = 0
    TabStop = False
    object edTgl: TcxDateEdit
      Left = 102
      Top = 11
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Stardust'
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 0
      Height = 25
      Width = 155
    end
    object lkpSource: TcxLookupComboBox
      Left = 102
      Top = 42
      AutoSize = False
      Properties.KeyFieldNames = 'kode_penyimpanan'
      Properties.ListColumns = <
        item
          FieldName = 'nama_tempat'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Stardust'
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 1
      Height = 25
      Width = 155
    end
    object lkpDestin: TcxLookupComboBox
      Left = 345
      Top = 42
      AutoSize = False
      Properties.KeyFieldNames = 'kode_penyimpanan'
      Properties.ListColumns = <
        item
          FieldName = 'nama_tempat'
        end>
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Stardust'
      Style.ButtonStyle = btsHotFlat
      Style.PopupBorderStyle = epbsSingle
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 2
      Height = 25
      Width = 144
    end
    object ceJumlah: TcxCurrencyEdit
      Left = 102
      Top = 73
      AutoSize = False
      EditValue = 0c
      Properties.Alignment.Horz = taRightJustify
      Properties.DisplayFormat = 'Rp ,0.00;- Rp,0.00'
      Properties.UseLeftAlignmentOnEditing = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Stardust'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 3
      Height = 25
      Width = 387
    end
    object memKet: TcxMemo
      Left = 102
      Top = 104
      Lines.Strings = (
        'memKet')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebsSingle
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Stardust'
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 4
      Height = 41
      Width = 379
    end
    object btnBaru: TcxButton
      Left = 11
      Top = 151
      Width = 73
      Height = 25
      Caption = 'Baru'
      TabOrder = 5
      LookAndFeel.SkinName = 'Stardust'
    end
    object btnBatal: TcxButton
      Left = 90
      Top = 151
      Width = 73
      Height = 25
      Caption = 'Batal'
      TabOrder = 6
      LookAndFeel.SkinName = 'Stardust'
    end
    object btnSimpan: TcxButton
      Left = 169
      Top = 151
      Width = 73
      Height = 25
      Caption = 'Simpan'
      TabOrder = 7
      LookAndFeel.SkinName = 'Stardust'
    end
    object btnUbah: TcxButton
      Left = 248
      Top = 151
      Width = 73
      Height = 25
      Caption = 'Ubah'
      TabOrder = 8
      LookAndFeel.SkinName = 'Stardust'
    end
    object btnHapus: TcxButton
      Left = 327
      Top = 151
      Width = 73
      Height = 25
      Caption = 'Hapus'
      TabOrder = 9
      LookAndFeel.SkinName = 'Stardust'
    end
    object cxGrid1: TcxGrid
      Left = 11
      Top = 182
      Width = 250
      Height = 200
      TabOrder = 10
      LookAndFeel.SkinName = 'Stardust'
      object cxGrid1DBTableView1: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        NavigatorButtons.First.Visible = True
        NavigatorButtons.PriorPage.Visible = True
        NavigatorButtons.Prior.Visible = True
        NavigatorButtons.Next.Visible = True
        NavigatorButtons.NextPage.Visible = True
        NavigatorButtons.Last.Visible = True
        NavigatorButtons.Insert.Visible = True
        NavigatorButtons.Append.Visible = False
        NavigatorButtons.Delete.Visible = True
        NavigatorButtons.Edit.Visible = True
        NavigatorButtons.Post.Visible = True
        NavigatorButtons.Cancel.Visible = True
        NavigatorButtons.Refresh.Visible = True
        NavigatorButtons.SaveBookmark.Visible = True
        NavigatorButtons.GotoBookmark.Visible = True
        NavigatorButtons.Filter.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1jumlah
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1jumlah
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1jumlah
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.HeaderHeight = 25
        OptionsView.Indicator = True
        object cxGrid1DBTableView1no_mutasi: TcxGridDBColumn
          Caption = 'Nomor'
          DataBinding.FieldName = 'no_mutasi'
          Width = 100
        end
        object cxGrid1DBTableView1tgl_mutasi: TcxGridDBColumn
          Caption = 'Tanggal Mutasi'
          DataBinding.FieldName = 'tgl_mutasi'
          Width = 119
        end
        object cxGrid1DBTableView1sumber: TcxGridDBColumn
          Caption = 'Sumber -->'
          DataBinding.FieldName = 'sumber'
          Width = 143
        end
        object cxGrid1DBTableView1tujuan: TcxGridDBColumn
          Caption = 'Tujuan'
          DataBinding.FieldName = 'tujuan'
          Width = 170
        end
        object cxGrid1DBTableView1jumlah: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          Width = 113
        end
        object cxGrid1DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 295
        end
        object cxGrid1DBTableView1dari: TcxGridDBColumn
          Caption = 'Sumber'
          DataBinding.FieldName = 'dari'
          Visible = False
          Width = 74
        end
        object cxGrid1DBTableView1ke: TcxGridDBColumn
          Caption = 'Tujuan'
          DataBinding.FieldName = 'ke'
          Visible = False
          Width = 74
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxLayoutWebLookAndFeel1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutItem1: TdxLayoutItem
        AlignHorz = ahClient
        CaptionOptions.Text = 'Tanggal '
        Control = edTgl
        ControlOptions.AlignHorz = ahLeft
        ControlOptions.ShowBorder = False
      end
      object dxLayoutGroup2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'Dari Rekening '
          Control = lkpSource
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'Ke Rekening '
          Control = lkpDestin
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Jumlah '
        Control = ceJumlah
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Item5: TdxLayoutItem
        AlignHorz = ahLeft
        CaptionOptions.Text = 'Keterangan'
        CaptionOptions.AlignVert = tavTop
        Control = memKet
        ControlOptions.ShowBorder = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AlignHorz = ahClient
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxLayoutControl1Item6: TdxLayoutItem
          CaptionOptions.Text = 'cxButton1'
          CaptionOptions.Visible = False
          Control = btnBaru
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item7: TdxLayoutItem
          CaptionOptions.Text = 'cxButton2'
          CaptionOptions.Visible = False
          Control = btnBatal
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item8: TdxLayoutItem
          CaptionOptions.Text = 'cxButton3'
          CaptionOptions.Visible = False
          Control = btnSimpan
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item9: TdxLayoutItem
          CaptionOptions.Text = 'cxButton4'
          CaptionOptions.Visible = False
          Control = btnUbah
          ControlOptions.ShowBorder = False
        end
        object dxLayoutControl1Item10: TdxLayoutItem
          CaptionOptions.Text = 'cxButton5'
          CaptionOptions.Visible = False
          Control = btnHapus
          ControlOptions.ShowBorder = False
        end
      end
      object dxLayoutControl1Item11: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxGrid1
        ControlOptions.ShowBorder = False
      end
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
  end
end
