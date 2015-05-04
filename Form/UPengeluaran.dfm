object frmPenyaluran: TfrmPenyaluran
  Left = 419
  Top = 108
  Width = 671
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
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 44
    Width = 663
    Height = 422
    Align = alClient
    TabOrder = 0
    TabStop = False
    object btnTambah: TcxButton
      Left = 11
      Top = 166
      Width = 73
      Height = 25
      Caption = 'Baru'
      TabOrder = 8
      OnClick = btnTambahClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5F0E79FC8A5559B5E3F
        8E483B8C444C955297C19BE1EDE2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFC3DDC8569F6340984F7CC18E95D0A595CFA577BD88358C41408C47B9D5
        BBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6DFCB549F6363B377A7DBB486CC9765
        BB7C63B97B85CB97A4D9B357A96A34853CB9D5BBFFFFFFFFFFFFFFFFFFE9F3EB
        66AB7569B87CA7DBB15FBB765BB97258B76F58B46E57B46E5AB673A4D9B259A9
        6B418E48E2EEE3FFFFFFFFFFFFAED4B852AA67A9DDB363C0785EBD705FBB76FF
        FFFFFFFFFF58B76F57B46D5BB673A5DAB3378E4296C19AFFFFFFFFFFFF76B788
        89CC9788D3956AC57962C06F54AA64FFFFFFFFFFFF58B76F58B76F5AB87184CC
        967ABD8C4C9554FFFFFFFFFFFF69B17EA8DDB27CCF8974CC80FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF58B76F66BD7C9BD4AA3A8B43FFFFFFFFFFFF6DB482
        B5E2BD8AD59679C985FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF58B76F68C0
        7D9CD4A93E8E48FFFFFFFFFFFF81BF94ABDDB5A5DFAE80CB8B7BC9856DBC78FF
        FFFFFFFFFF5AAB695FBB765BB9728AD1987FC491579D60FFFFFFFFFFFFB8DBC3
        84C796D2EED794D99F89D3937EC888FFFFFFFFFFFF78CD846AC27B6EC77DABDF
        B4449D56A0C8A6FFFFFFFFFFFFECF6EF7EBE92A9DAB6D8F1DC91D89C87CD9283
        CC8D8AD49589D49482D28DAEE0B66AB87C5AA266E6F1E8FFFFFFFFFFFFFFFFFF
        D1E9D975BA8BAEDCBADCF2E0B5E4BC9ADBA495D99FA4DFAEBFE8C478C18957A1
        65C4DEC9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1E9D97EBE9293CEA3C2E6CBCF
        EBD4C9E9CEAEDDB76CB87E67AD77C7E0CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFECF6EFB9DCC482BF9570B6856DB48178B989B1D5BAE8F3EBFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btnBatal: TcxButton
      Left = 90
      Top = 166
      Width = 73
      Height = 25
      Caption = 'Batal'
      TabOrder = 9
      OnClick = btnBatalClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECDFAF9F9FEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF8F8FEC5C5F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        D1D0FB4E4BF2413FEDF9F9FEFFFFFFFFFFFFFFFFFFFFFFFFF8F8FE2624E4302E
        EAC6C5F8FFFFFFFFFFFFFFFFFFD3D2FC5755F56260FA5754F64240EDF9F9FEFF
        FFFFFFFFFFF8F8FE2D2CE6403EF14B49F6302EEAC6C5F8FFFFFFFFFFFFE3E2FD
        5A57F66461FA706FFF5855F64341EEF9F9FEF9F9FE3633E94644F26261FF4947
        F42E2CE9DAD9FAFFFFFFFFFFFFFFFFFFE3E3FD5A58F66562FA7370FF5957F644
        42EE3F3DEC4F4CF46766FF4F4DF53533EBDBDAFBFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE3E3FD5B59F66663FA7371FF726FFF6F6DFF6D6BFF5654F73E3CEEDCDC
        FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E3FD5C5AF77875FF58
        55FF5653FF716FFF4745F0DEDDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFAFAFF5D5AF67C78FF5D5AFF5A57FF7573FF4643EFF9F9FEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFF6764F96F6CFB7F7DFF7D
        7AFF7B78FF7876FF5D5BF74845EFF9F9FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FBFAFF6F6CFC7673FD8581FF7572FC6361F85F5CF76C69FA7A78FF5F5CF74946
        EFF9F9FEFFFFFFFFFFFFFFFFFFFBFBFF7471FE7C79FE8986FF7B78FD6B68FBE5
        E4FEE4E3FE605DF86D6BFA7C79FF605EF74A47F0FBFBFFFFFFFFFFFFFFEEEEFF
        7976FF807DFF807DFE7370FDE6E6FEFFFFFFFFFFFFE4E4FE615EF86E6CFB7D7B
        FF615EF8B0AEF8FEFEFFFFFFFFFFFFFFEEEEFF7976FF7875FEE7E7FFFFFFFFFF
        FFFFFFFFFFFFFFFFE4E4FE6360F86967F98E8CF7E3E2FDFFFFFFFFFFFFFFFFFF
        FFFFFFEEEEFFE8E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4FEB8B7
        FCD6D6FDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9FFFFFFFFFFFFFFFFFFFF}
    end
    object btnSimpan: TcxButton
      Left = 169
      Top = 166
      Width = 88
      Height = 25
      Caption = 'Simpan'
      TabOrder = 10
      OnClick = btnSimpanClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000F6F2EFC5AA94
        B7967BAF896BA77D5C9F724EB26736C28357D38A67E18E6FDC8C6BDA8A6CD789
        6DCD8A6BAA6C43A55E2DD3BDABB78F6CD6B9A2DFC5B2E7D4C2EEDFD3C58254EF
        CEB9DDFFFF86EEC7A1F4D7A1F6D78BEEC7E0FFFFDDA184AA693DC8AB92C7A384
        FFFFFFFFFFFFFFFFFFFFFFFFC27E50EFB599EAF3E850BE836EC99770C99853BE
        83E4F4E9DD9B7AA96839DECBBBA06D3FB38458D9A47AD89D6ED79A69C38053EA
        B596F3F3EAEDF1E6EFF1E6EFF0E6EDF1E5F3F5EDD59B78AF6F43F8F4F0C19E7C
        D5AD8BFDF0E5F7C7A1F7CFACC98A60E6B491E2A680E1A680DEA27CDCA07ADB9E
        78D99D76D49972BA7D56FFFFFFF2E9E1B68555FEFEFDFADEC1FADCBECA8C64EA
        B798DDA47DDDA57FDBA27BD99F79D99F78D89E77D89D77BE835CFFFFFFF6EFE9
        B88551FEFCF9F9DCBEF8DBBEC8875CEFBEA0FDFCFAFEFCFBFEFDFDFEFDFCFDFB
        FAFDFCFBDDA784C07E52FFFFFFFCFBF8B8844AFEFBF7F9DCC0F8DCBEC7855AEF
        BF9DFFFFFFCC926DFFFFFFFFFFFFFFFBF7FFF8F1E4AE8BC78960FFFFFFFFFFFF
        BE8A4EFCF6F0F9DFC7F9DCBCCC8C64F3CDAFFFFFFFE3C7B2FFFFFFFFFFFFFFFF
        FFFFFFFFEABEA0C9885FFFFFFFFFFFFFCC9E67F5E7D8FAE5D2F9DABBD4966DD4
        9D7AD09770D6A381CD8D67CD8F68D09974D19872C88A61EDDCD0FFFFFFFFFFFF
        D8B07FF0D9C0FBEDE1F9DABFF9DCC1F9DEC4FAE0C7FAE2CAFAE2CDFAE5D0FFFE
        FDCB8E59CD995BF1E2D0FFFFFFFFFFFFE1BD91EDD0B1FFF6F0FAE1CAFBE3CCFB
        E3D0FBE6D3FBE9D5FCE9D8FCEADBFFFFFDD29C70EED9C0D5A365FFFFFFFFFFFF
        E7C79FEBCAA4FFFDFBFDE9D5FDEBD8FDEADBFDEDDFFDF0E2FDF1E4FCF0E4FFFF
        FFE09F6FFFFBF9DFB786FFFFFFFFFFFFECCFAAEBC599FFFFFFFCEFE2FDF0E7FD
        F1EBFDF5EEFDF8F1FDFAF7FFFCFAFFFFFFFEFBF7F4DABFDDAB68FFFFFFFFFFFF
        F1D9B9EABF8BFFFFFFFFFFFFFFFFFFFFFFFFFDF9F4FBF3EAF8EBD9F8E6D3F5DF
        C5E9CBA5E0AD68F3DFC4FFFFFFFFFFFFF9EDDDE8BE82EABB80E8B676E6B16CE4
        AF67E4B067E5B470E7BB7CE8BC7EEAC189ECC895F6E6D0FEFDFC}
    end
    object grid: TcxGrid
      Left = 11
      Top = 197
      Width = 461
      Height = 261
      Align = alClient
      TabOrder = 11
      LookAndFeel.Kind = lfUltraFlat
      object gridPengeluaran: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.CustomizeDialog = False
        DataController.DataSource = dsPengeluaran
        DataController.Filter.SupportedLike = False
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skSum
            OnGetText = gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            FieldName = 'jumlah'
            Column = gcolmPengeluaranjumlah
          end
          item
            Format = 'Total'
            OnGetText = gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
            Column = gcolmPengeluaranid_penerimaan
            DisplayText = 'Total'
          end>
        DataController.Summary.SummaryGroups = <>
        Filtering.ColumnMRUItemsList = False
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnSorting = False
        OptionsData.Appending = True
        OptionsSelection.InvertSelect = False
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsView.FocusRect = False
        OptionsView.NoDataToDisplayInfoText = 'Rekening Kosong'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupRowStyle = grsOffice11
        OptionsView.GroupSummaryLayout = gslAlignWithColumns
        OptionsView.Indicator = True
        object gcolmPengeluaranid_penerimaan: TcxGridDBColumn
          Caption = 'Pengeluaran'
          DataBinding.FieldName = 'id_perkiraan'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownWidth = 400
          Properties.View = gridcbbPengeluaran
          Properties.KeyFieldNames = 'id_perkiraan'
          Properties.ListFieldItem = gcolmPengeluarannama_perkiraan
          Width = 142
        end
        object gcolmPengeluaranjumlah: TcxGridDBColumn
          Caption = 'Jumlah'
          DataBinding.FieldName = 'jumlah'
          Width = 162
        end
        object gcolmPengeluaranketerangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          Width = 483
        end
        object gcolmPengeluaranColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'nama_perkiraan'
          Visible = False
        end
        object gcolmPengeluaranColumn2: TcxGridDBColumn
          DataBinding.FieldName = 'kode_kel'
          Visible = False
        end
        object gcolmPengeluaranBukti: TcxGridDBColumn
          Caption = 'Penerima Manfaat'
          DataBinding.FieldName = 'penerimaa_manfaat'
          Width = 129
        end
      end
      object cxgrdlvl: TcxGridLevel
        GridView = gridPengeluaran
      end
    end
    object DtTanggal: TcxDateEdit
      Tag = 1
      Left = 387
      Top = 58
      Properties.OnChange = DtTanggalPropertiesChange
      Style.HotTrack = False
      TabOrder = 2
      Width = 158
    end
    object eKode: TcxTextEdit
      Tag = 1
      Left = 134
      Top = 58
      Style.HotTrack = False
      TabOrder = 1
      Text = 'eKode'
      Width = 121
    end
    object cbbPenerimaan: TcxExtLookupComboBox
      Tag = 1
      Left = 134
      Top = 85
      Properties.View = gridPenerimaan
      Properties.KeyFieldNames = 'id_perkiraan'
      Properties.ListFieldItem = gcolmPenerimaannama_perkiraan
      Properties.OnChange = cbbPenerimaanPropertiesChange
      Style.HotTrack = False
      TabOrder = 4
      Width = 411
    end
    object mKeterangan: TcxMemo
      Left = 134
      Top = 112
      Lines.Strings = (
        'm1')
      Style.HotTrack = False
      TabOrder = 7
      Height = 48
      Width = 700
    end
    object eCrTotal: TcxCurrencyEdit
      Tag = 1
      Left = 11
      Top = 11
      EditValue = 0c
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.Alignment.Vert = taVCenter
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -29
      Style.Font.Name = 'Verdana'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.Color = clMoneyGreen
      StyleDisabled.TextColor = clBlue
      TabOrder = 0
      Width = 121
    end
    object cbbKab: TcxExtLookupComboBox
      Tag = 1
      Left = 685
      Top = 85
      Properties.View = gridKabupaten
      Properties.KeyFieldNames = 'kode_kab'
      Properties.ListFieldItem = gcolmKabupatennama_kab_kota
      Style.HotTrack = False
      TabOrder = 6
      Width = 145
    end
    object cbxCetak: TcxCheckBox
      Left = 551
      Top = 60
      Caption = 'Cetak Nota Pengeluaran'
      State = cbsChecked
      Style.HotTrack = False
      TabOrder = 3
      Width = 201
    end
    object eCrSaldoOperasional: TcxCurrencyEdit
      Left = 436
      Top = 85
      Style.HotTrack = False
      TabOrder = 5
      Width = 192
    end
    object dxLayoutGroup1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytmLayoutControl1Item6: TdxLayoutItem
        Enabled = False
        Control = eCrTotal
        ControlOptions.ShowBorder = False
      end
      object dxlytgrpLayoutControl1Group1: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytmLayoutControl1Item3: TdxLayoutItem
          CaptionOptions.Text = 'NO Transaksi'
          Control = eKode
          ControlOptions.ShowBorder = False
        end
        object dxlytmLayoutControl1Item2: TdxLayoutItem
          CaptionOptions.Text = 'Tanggal Pengeluaran'
          Control = DtTanggal
          ControlOptions.ShowBorder = False
        end
        object lblLayoutControl1Item1: TdxLayoutItem
          AlignVert = avCenter
          CaptionOptions.Visible = False
          Control = cbxCetak
          ControlOptions.ShowBorder = False
        end
      end
      object dxlytgrpLayoutControl1Group2: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytmLayoutControl1Item4: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = 'Sumber Penerimaan'
          Control = cbbPenerimaan
          ControlOptions.ShowBorder = False
        end
        object lblLayoutControl1Item2: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = 'Saldo '
          Control = eCrSaldoOperasional
          ControlOptions.ShowBorder = False
        end
        object dxlytmLayoutControl1Item7: TdxLayoutItem
          AlignHorz = ahClient
          CaptionOptions.Text = 'Wilayah Penyaluran'
          Control = cbbKab
          ControlOptions.ShowBorder = False
        end
      end
      object dxlytmLayoutControl1Item5: TdxLayoutItem
        CaptionOptions.Text = 'Keterangan'
        CaptionOptions.AlignVert = tavTop
        Control = mKeterangan
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
          Control = btnTambah
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
      end
      object dxlytmLayoutControl1Item1: TdxLayoutItem
        AlignVert = avClient
        Control = grid
        ControlOptions.ShowBorder = False
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 44
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 663
      Height = 42
      Align = alTop
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000005B00
        0000320802000000BCAF305C0000000467414D410000AFC837058AE900000019
        74455874536F6674776172650041646F626520496D616765526561647971C965
        3C000000D5494441547801EDD0410DC35010C4D07C2881560A65530C85134291
        0F23198457B276CEEF7C7EF7D549E024220D662228B844ACC14E0405978835D8
        89A0E012B1063B11145C22D6602782824BC41AEC4450708958839D080A2E116B
        B01341C125620D762228B844ACC14E0405978835D889A0E012B1063B11145C22
        D6602782824BC41AEC4450708958839D080A2E116BB01341C125620D762228B8
        44ACC13EFFE7CBAF09243289FD4426B19FC824F61399C47E2293D84F6412FB89
        4C623F9149EC273289FD4426B19FC824F61399C47E2293D87F0183A5431F8515
        83E00000000049454E44AE426082}
      Stretch = True
    end
    object lbl1: TLabel
      Left = 44
      Top = 27
      Width = 156
      Height = 16
      Caption = 'Entry Data Pengeluaran'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 43
      Top = 6
      Width = 159
      Height = 23
      Alignment = taCenter
      Caption = 'PENGELUARAN'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object img2: TImage
      Left = 7
      Top = 4
      Width = 32
      Height = 32
      AutoSize = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        0000200806000000737A7AF4000005C5494441547801ED567B50545518FFDD7B
        F7C5F2585ECB228F4110490589515103147C8CA5E6AB319DC964A491441B46B0
        7CCD285399139549E5A022A0140ED38C839A093E9A0C1F548A890613429A242F
        85455ECBB2AFBBB7EF2E8A0AD180D4F40F77CEB97BCE77CEF9BEDFF7FBBEEFEC
        650441C0FFF930C3009E8581FDC953BD286C1AEA62BB9F90F673BD3878963EA8
        108886EB2B2FE7F9048D73B457394B45839D6DADE6DAAADF3ABC9E9BF2DAB300
        19148094794CD1EB299F383AA8543E4A4707050160F51D3AB341AF57E56C4FBA
        F87EA11083413EFD0210BD255D3D34C7A6A437A4AE98F4C3DADD5981B535159E
        ED6D0D9CABAB1B04C10A4FAFD0CEACAD896529C78D2FD09941B53E0044C37F4F
        734507202039232F42A61C69A3FF91257D5B250E6E7BA762739E76DC23D9407F
        FB0010695EB5232D52A1B4E3154AA5040C04A3DE60EEEAEC94E66C4F2EDE7020
        6F726BCB033B27672FF0BC0516630BA4723BEC7D7B6D454ABE6EE800762E7528
        897D6FD7A45FAE7C0BFFD11130E8EAA06DAAC584F085D8B721FE7C72C6E12899
        32807BD2435D6B0532362656A41CED1C3A800F97A94AD7ECDA1B26B70F78D206
        4CFA3B485BB3E2FCFA7D5F455F2DB90CB5BB23341A77228805277542C6E6F5FF
        0E03A9CB55A5F11FED09ABFAFD16FCFC7CA1543AC064680327B1C7E7EB626D00
        140E814F81EB24060E6C49BAB9ED48FBD8A7160630E99303DBE7733F257E9119
        6EEF3CB617CD9596F4C4B8E284B4CC49E565A5F66EAE4A786AD4605816AC4425
        EC599F50BAB3909F38009B4F6DB101D068D4FE6FC42D7B53D769F4E41A4B4243
        66CC93F9FBB987383A3A412E97C16A315A6BEAB43517BEFCAC7961E2D6915D06
        93CA49A5E2EC95F660591E8DF7B52D05997B8C06AF59A75986B2964C74DFB00C
        684A9D1125621181E5A46CCDDDEA221757EF33D9D9D9F536004B16BD149799FB
        F141B3C90C09C7C16834537D031CC7DA3C947012C8241232C6C26AB59232C042
        15C0F3565A67684D4A7BBB09B35A7958A8F3B4CF62213D56A15B97849822B6AC
        3467789866C7CE1E5F76BAB9CA0660D3C684D4A44DF19B0B2E7D0F4F1735342E
        1EF0F7F6A644F380CED009078592D093618685F68116672E16A1BABE86640231
        A480BFAF2FA6844E808F66840D9CF8EA329333E43ECB72F8E3EE9F686A6D466D
        633D9A75ED58327D8E1013F9EAE49B55B7AFDA00A4A77F7064DEE2994B2F945C
        C1DCC86878A8C5FF1A01750DD528AF2C87B7A73742C68492412BF2CF9E42D1E5
        6202A7C6C4B00930998C28FDF50646FAF860F1CC17E1EAEC0E435707AEDC28B1
        511FFE7C38140A47D06154DEAA44C1A573583E770192D6BDBBFA487E4136F3F2
        CAC8F043BBF79D3B5A7CCA6194971F6685C78008A6FD02F47A1D1A9B9B400187
        8BB31AA5E5D7D16ED0C34DA3A1AA90424A61B976FD1A6EDDB90D27A53DC6078D
        414458388583C5BDA6065BB846788CA0B9046038085633720B8F21243008678F
        9DCFDAB235359E993E3F6CCEB1DCC3274FFCF89D54EDE24CF194618CEF28B8B9
        B881A5AB5734227E3459E9754FAB85B6E5818D4699424E8A395C2FBB0E8E9120
        647410D42EEEF0F3F202C732D4C57C11C05B7950A6E04E5D35EE36D6C16CE6D1
        653261EE9419A6756B774431D3A22216149E3974A2B4AA9CBC50A2CB684497C1
        00854C0E5EE0292929F928F61C25904C26269B0406DA23934A21211947096AB4
        98E95A16F7B214120B19315172B2309A0D90725298791E668B054A3B39ECA476
        68D3EB101618CCCF991D1BCD44C74C8BFBE664CE41855442FE12FBFFD87A7D3F
        3E397D58697435F6A3E1E106F18C989C340D0E9E318D191F16BC68FFE1BDC779
        0B4FE542ABB4D08F863E62AAF23EB27E0536BDB697AD9C2D54F271CB56473161
        13435FC93D9A93CF1345DD97C7631504E7F1844654D1949C34E8693649CF4C1C
        F4D6211EA0F411977A3A4B3922DE392B16AD9ACE048C0E981AFBD692749E3E2C
        0610831E25431930140272D89AF5E9D72B19BAEDA472B9DCB1B7B7433130C0B3
        82D1606CB75D44033CF09F6C1B0630CCC030037F01F6088B7AE668CAB7000000
        0049454E44AE426082}
      Stretch = True
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    Left = 24
    Top = 336
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object cxgrdvwrpstry1: TcxGridViewRepository
    Left = 216
    Top = 316
    object gridPenerimaan: TcxGridDBTableView
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
      DataController.DataSource = ds1
      DataController.KeyFieldNames = 'id_perkiraan'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 0
      object gcolmPenerimaanid_perkiraan: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id_perkiraan'
      end
      object gcolmPenerimaannama_perkiraan: TcxGridDBColumn
        Caption = 'Penerimaan'
        DataBinding.FieldName = 'nama_perkiraan'
      end
      object gcolmPenerimaannama_kel: TcxGridDBColumn
        Caption = 'Kelompok'
        DataBinding.FieldName = 'nama_kel'
      end
    end
  end
  object spPenerimaan: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_kel_penerimaan'
    Parameters = <>
    Left = 192
    Top = 316
    object fieldPenerimaanid_perkiraan: TStringField
      FieldName = 'id_perkiraan'
      Size = 6
    end
    object fieldPenerimaannama_perkiraan: TStringField
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object fieldPenerimaannama_kel: TStringField
      FieldName = 'nama_kel'
      Size = 25
    end
    object FPenerimaanalokasi_amil: TFloatField
      FieldName = 'alokasi_amil'
      ReadOnly = True
    end
  end
  object ds1: TDataSource
    DataSet = spPenerimaan
    Left = 248
    Top = 316
  end
  object cdsPengeluaran: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dtstprvdr1'
    AfterPost = cdsPengeluaranAfterPost
    Left = 24
    Top = 308
    object fieldPengeluaranid_perkiraan1: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'id_perkiraan'
      Size = 6
    end
    object strngfldPengeluarankode_bukti: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'penerimaa_manfaat'
      Size = 50
    end
    object crncyfldcds1jumlah: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'jumlah'
      OnChange = crncyfldcds1jumlahChange
    end
    object strngfldcds1keterangan: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'keterangan'
      Size = 100
    end
    object fieldPengeluarannama_perkiraan: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object intgrfldPengeluarankode_kel: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'kode_kel'
    end
  end
  object dtstprvdr1: TDataSetProvider
    DataSet = spPengeluaran
    Left = 56
    Top = 308
  end
  object dsPengeluaran: TDataSource
    DataSet = cdsPengeluaran
    Left = 88
    Top = 308
  end
  object spPengeluaran: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_null'
    Parameters = <>
    Left = 120
    Top = 312
  end
  object dscbPengeluaran: TDataSource
    DataSet = spcbPengeluaran
    Left = 368
    Top = 364
  end
  object cxgrdvwrpstry2: TcxGridViewRepository
    Left = 336
    Top = 364
    object gridcbbPengeluaran: TcxGridDBTableView
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
      DataController.DataSource = dscbPengeluaran
      DataController.KeyFieldNames = 'id_perkiraan'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 0
      object gcolmPengeluaranid_perkiraan: TcxGridDBColumn
        Caption = 'ID'
        DataBinding.FieldName = 'id_perkiraan'
      end
      object gcolmPengeluarannama_perkiraan: TcxGridDBColumn
        Caption = 'Pengeluaran'
        DataBinding.FieldName = 'nama_perkiraan'
      end
      object gcolmPengeluarannama_kel: TcxGridDBColumn
        Caption = 'Kelompok'
        DataBinding.FieldName = 'nama_kel'
      end
    end
  end
  object spcbPengeluaran: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_kel_pengeluaran'
    Parameters = <>
    Prepared = True
    Left = 280
    Top = 316
    object fieldPengeluaranid_perkiraan: TStringField
      FieldName = 'id_perkiraan'
      Size = 6
    end
    object fieldPengeluarannama_perkiraan1: TStringField
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object fieldPengeluarannama_kel: TStringField
      FieldName = 'nama_kel'
      Size = 25
    end
    object FPengeluarankd_kel: TSmallintField
      FieldName = 'kd_kel'
    end
  end
  object spKodebaru: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_kode_pengeluaran'
    Parameters = <
      item
        Name = 'tgl'
        DataType = ftString
        Size = 10
        Value = '2013-07-02'
      end
      item
        Name = 'kode'
        DataType = ftString
        Size = 2
        Value = '01'
      end>
    Left = 64
    Top = 340
    object fieldKodebaru: TStringField
      FieldName = 'kode'
      ReadOnly = True
      Size = 3
    end
  end
  object qryUpdate: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = Null
      end>
    SQL.Strings = (
      'select * from tbl_detail_pengeluaran'
      'where tbl_detail_pengeluaran.kode_pengeluaran=:kode')
    Left = 400
    Top = 365
  end
  object cxgrdvwrpstryKab: TcxGridViewRepository
    Left = 528
    Top = 316
    object gridKabupaten: TcxGridDBTableView
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
      DataController.DataSource = dsKabupaten
      DataController.KeyFieldNames = 'kode_kab'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.ColumnFiltering = False
      OptionsCustomize.ColumnMoving = False
      OptionsCustomize.ColumnSorting = False
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      object gcolmKabupatenkode_kab: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_kab'
      end
      object gcolmKabupatennama_kab_kota: TcxGridDBColumn
        Caption = 'Kabupaten/Kota'
        DataBinding.FieldName = 'nama_kab_kota'
      end
    end
  end
  object spKabupaten: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_kabupaten'
    Parameters = <>
    Left = 464
    Top = 312
  end
  object dsKabupaten: TDataSource
    DataSet = spKabupaten
    Left = 496
    Top = 316
  end
  object hjrhCetak: THijriah
    TanggalHijriah = '26 Sya'#8217'ban 1317 Hijriah'
    Left = 160
    Top = 316
  end
end
