object frmTransaksi: TfrmTransaksi
  Left = 272
  Top = 119
  Width = 906
  Height = 440
  Caption = 'Transaksi'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'tahoma'
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
  TextHeight = 14
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 898
    Height = 406
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TabStop = False
    object eNomorKwitansi: TcxTextEdit
      Tag = 1
      Left = 106
      Top = 78
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Text = 'eNomorKwitansi'
      OnKeyPress = eNomorKwitansiKeyPress
      Width = 151
    end
    object eTglKwitansi: TcxDateEdit
      Tag = 1
      Left = 373
      Top = 78
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      OnKeyPress = eTglKwitansiKeyPress
      Width = 236
    end
    object cxGrid1: TcxGrid
      Left = 11
      Top = 181
      Width = 495
      Height = 153
      Align = alClient
      TabOrder = 10
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
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
        DataController.DataSource = DSTransaksi
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = ',0.00;- ,0.00'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = ',0.00;- ,0.00'
            Kind = skSum
          end
          item
            Format = ',0.00;- ,0.00'
            Kind = skSum
            Position = spFooter
            Column = cxGrid1DBTableView1subtotal
          end
          item
            Format = ',0.00;- ,0.00'
            Kind = skSum
            Column = cxGrid1DBTableView1subtotal
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = 'Total'
            OnGetText = cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText
            Column = cxGrid1DBTableView1id_perkiraan
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            OnGetText = cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText
            Column = cxGrid1DBTableView1subtotal
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            FieldName = 'jumlah_alokasi'
            Column = gcolmGrid1DBTableView1Alokasi
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            OnGetText = cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText
            FieldName = 'penyaluran'
            Column = gcolmGrid1DBTableView1Penyaluran
          end
          item
            Kind = skSum
            Column = gcolmGrid1DBTableView1Penyaluran
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Appending = True
        OptionsView.NoDataToDisplayInfoText = 
          '<Klik tombol Baru atau tombol [F2] pada keyboard untuk memasukka' +
          'n data baru>'
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 30
        object cxGrid1DBTableView1id: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
          HeaderAlignmentVert = vaCenter
        end
        object cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn
          DataBinding.FieldName = 'kode_kwitansi'
          Visible = False
          HeaderAlignmentVert = vaCenter
        end
        object cxGrid1DBTableView1id_perkiraan: TcxGridDBColumn
          Caption = 'Kode Penerimaan'
          DataBinding.FieldName = 'id_perkiraan'
          PropertiesClassName = 'TcxExtLookupComboBoxProperties'
          Properties.DropDownWidth = 500
          Properties.View = gridPenerimaan
          Properties.KeyFieldNames = 'id_perkiraan'
          Properties.ListFieldItem = gcolmPenerimaanid_perkiraan
          HeaderAlignmentVert = vaCenter
          Width = 101
        end
        object cxGrid1DBTableView1nama_perkiraan: TcxGridDBColumn
          Caption = 'Nama Penerimaan'
          DataBinding.FieldName = 'nama_perkiraan'
          Visible = False
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 369
        end
        object cxGrid1DBTableView1lkpnmPerkiraan: TcxGridDBColumn
          Caption = 'Nama Penerimaan'
          DataBinding.FieldName = 'lkpnmPerkiraan'
          HeaderAlignmentVert = vaCenter
          Options.Editing = False
          Width = 190
        end
        object cxGrid1DBTableView1subtotal: TcxGridDBColumn
          Caption = 'Sub Total'
          DataBinding.FieldName = 'subtotal'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 0
          HeaderAlignmentHorz = taRightJustify
          HeaderAlignmentVert = vaCenter
          Width = 99
        end
        object cxGrid1DBTableView1keterangan: TcxGridDBColumn
          Caption = 'Keterangan'
          DataBinding.FieldName = 'keterangan'
          PropertiesClassName = 'TcxComboBoxProperties'
          Properties.Items.Strings = (
            'TK'
            'K')
          HeaderAlignmentVert = vaCenter
          Width = 146
        end
        object gcolmGrid1DBTableView1AlokasiAmil: TcxGridDBColumn
          DataBinding.FieldName = 'alokasi_amil'
          Visible = False
        end
        object gcolmGrid1DBTableView1Alokasi: TcxGridDBColumn
          Caption = 'Operasional Amil'
          DataBinding.FieldName = 'jumlah_alokasi'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
          Properties.ReadOnly = True
          Width = 140
        end
        object gcolmGrid1DBTableView1Penyaluran: TcxGridDBColumn
          Caption = 'Penyaluran'
          DataBinding.FieldName = 'penyaluran'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DecimalPlaces = 2
          Properties.DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
          Properties.ReadOnly = True
          Width = 168
        end
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object btnTambah: TcxButton
      Left = 11
      Top = 146
      Width = 95
      Height = 25
      Caption = 'Baru [F2]'
      TabOrder = 5
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
      Left = 112
      Top = 146
      Width = 95
      Height = 25
      Caption = 'Batal [F3]'
      TabOrder = 6
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
      Left = 213
      Top = 146
      Width = 96
      Height = 25
      Caption = 'Simpan [F5]'
      TabOrder = 7
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
    object cxTotal: TcxCurrencyEdit
      Left = 11
      Top = 11
      EditValue = 0c
      Enabled = False
      ParentFont = False
      Properties.Alignment.Horz = taRightJustify
      Properties.AutoSelect = False
      Properties.DecimalPlaces = 0
      Properties.DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
      Properties.Nullable = False
      Properties.ReadOnly = False
      Properties.UseLeftAlignmentOnEditing = False
      Style.Color = clBlack
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clLime
      Style.Font.Height = -29
      Style.Font.Name = 'DigifaceWide'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = True
      Style.LookAndFeel.SkinName = 'Stardust'
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.Color = clMoneyGreen
      StyleDisabled.LookAndFeel.NativeStyle = True
      StyleDisabled.LookAndFeel.SkinName = 'Stardust'
      StyleDisabled.TextColor = clBlue
      StyleFocused.LookAndFeel.NativeStyle = True
      StyleFocused.LookAndFeel.SkinName = 'Stardust'
      StyleHot.LookAndFeel.NativeStyle = True
      StyleHot.LookAndFeel.SkinName = 'Stardust'
      TabOrder = 0
      Width = 876
    end
    object btnKencrengan: TcxButton
      Left = 315
      Top = 146
      Width = 142
      Height = 25
      Caption = 'Kencrengan [F1]'
      TabOrder = 8
      OnClick = btnKencrenganClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        E0EEE17BB47ECDE2CEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFC95C49760A6656AAD6E4E9852DCEBDCE7
        F1E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9F3EA
        7DBB81B6DEBA66AB6B74B5794E975182B785AACEACFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFABD2AE9BCD9F6EB1728CC791A9DCAE75B57A50
        9A5476B67A66A769D0E4D1E1EDE2FFFFFFFFFFFFFFFFFFFFFFFFF2F9F37ABA7F
        76B67B90CB96AADEB09BD7A1A9DDAF76B67B5FAB64ADD8B18AC3907CB37F96C2
        99E6F0E6FFFFFFFFFFFFAED5B17EBC8396CE9BACDFB26EB27395D59C9CD8A2A9
        DDAF77B77B71B975C2E7C8B1DAB46CB971559D58ABCDACDAE9DA7ABA7F8DC892
        AEDFB4A0DAA697D79E96D69D7DBF8281C086AADDAF78B87C62AD66C3E7C8C0E4
        C3B8E0BD4E9952F3F8F3C7E5CA7CBA818EC893AFE0B5A1DAA77EC084A3D0A6DD
        EEDF7FB782AADEB079B87E559E59C3E7C877B77BA3CAA5FFFFFFFFFFFFEEF7EF
        7FBC838FC994AFE0B584C189F7FCF894C196DDEEDF81C186AADEB07AB97E579F
        5B58A05CFCFDFCFFFFFFFFFFFFFFFFFFFFFFFF82BE8690CA95B0E0B5D9F3DDF7
        FCF8A3D0A67DBF839ED9A4ABDEB17ABA7F58A05CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF83C08991CB96B0E1B584C2897FC08498D79F97D79E9ED9A4ABDF
        B17CBA805DA261FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF85C18A92CC97B0
        E1B6A2DBA89AD8A172B376AEDFB386C28B64A968F6FAF6FFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF86C28B93CC98B1E2B6A2DCA9AFE0B58BC5916DB0
        72F7FAF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF87
        C28C93CD99B2E2B692CB9776B67BF7FBF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF88C38E95CD9A7FBD84F8FBF8FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF8AC48FF8FBF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object lkpAmil: TcxLookupComboBox
      Tag = 1
      Left = 435
      Top = 106
      ParentFont = False
      Properties.DropDownSizeable = True
      Properties.KeyFieldNames = 'kode_amil'
      Properties.ListColumns = <
        item
          Caption = 'Nama Amil'
          Fixed = True
          FieldName = 'nama_amil'
        end
        item
          Caption = 'Kode Amil'
          Fixed = True
          FieldName = 'kode_amil'
        end>
      Properties.ListOptions.GridLines = glNone
      Properties.ListSource = DSlkpAmil
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      OnKeyPress = lkpAmilKeyPress
      Width = 174
    end
    object lkpPenyimpanan: TcxLookupComboBox
      Tag = 1
      Left = 731
      Top = 150
      Properties.KeyFieldNames = 'kode_penyimpanan'
      Properties.ListColumns = <
        item
          Caption = 'Nama Tempat '
          FieldName = 'nama_tempat'
        end>
      Properties.ListSource = dsPenyimpanan
      TabOrder = 9
      OnKeyPress = lkpPenyimpananKeyPress
      Width = 156
    end
    object eCrSaldoAwal: TcxCurrencyEdit
      Tag = 2
      Left = 215
      Top = 374
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
      Style.HotTrack = False
      TabOrder = 11
      Width = 121
    end
    object eCrTambah: TcxCurrencyEdit
      Tag = 2
      Left = 504
      Top = 374
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
      Style.HotTrack = False
      TabOrder = 12
      Width = 121
    end
    object eCrSaldoAkhir: TcxCurrencyEdit
      Tag = 2
      Left = 766
      Top = 374
      EditValue = 0.000000000000000000
      Properties.Alignment.Horz = taRightJustify
      Properties.DecimalPlaces = 2
      Properties.DisplayFormat = 'Rp,0.00;(Rp,0.00)'
      Style.HotTrack = False
      TabOrder = 13
      Width = 121
    end
    object eDonatur: TcxButtonEdit
      Tag = 1
      Left = 106
      Top = 106
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = eDonaturPropertiesButtonClick
      Style.HotTrack = False
      TabOrder = 3
      Text = 'eDonatur'
      Width = 255
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxLayoutControl1Item8: TdxLayoutItem
        Enabled = False
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 49
        Control = cxTotal
        ControlOptions.ShowBorder = False
      end
      object dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxLayoutControl1Group2: TdxLayoutGroup
        AlignHorz = ahClient
        CaptionOptions.Text = 'Hidden Group'
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = True
        SizeOptions.Height = 53
        ButtonOptions.Buttons = <>
        Hidden = True
        ShowBorder = False
        object dxlytgrpLayoutControl1Group2: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item2: TdxLayoutItem
            CaptionOptions.Text = 'Nomor Kwitansi'
            Control = eNomorKwitansi
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item3: TdxLayoutItem
            CaptionOptions.Text = 'Tanggal Transaksi'
            Control = eTglKwitansi
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
          end
        end
        object dxlytgrpLayoutControl1Group1: TdxLayoutGroup
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxlytmLayoutControl1Item5: TdxLayoutItem
            AlignHorz = ahLeft
            CaptionOptions.Text = 'Nama Donatur'
            Control = eDonatur
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item12: TdxLayoutItem
            CaptionOptions.Text = 'Nama Amil'
            Control = lkpAmil
            ControlOptions.AlignHorz = ahLeft
            ControlOptions.ShowBorder = False
          end
        end
        object dxlytsprtrtmLayoutControl1SeparatorItem2: TdxLayoutSeparatorItem
          CaptionOptions.Text = 'Separator'
          SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
          SizeOptions.SizableHorz = False
          SizeOptions.SizableVert = False
        end
        object dxLayoutControl1Group3: TdxLayoutGroup
          AlignHorz = ahClient
          SizeOptions.AssignedValues = [sovSizableVert]
          SizeOptions.SizableVert = True
          SizeOptions.Height = 29
          ButtonOptions.Buttons = <>
          Hidden = True
          LayoutDirection = ldHorizontal
          ShowBorder = False
          object dxLayoutControl1Item5: TdxLayoutItem
            CaptionOptions.Text = 'Tambah'
            CaptionOptions.Visible = False
            Control = btnTambah
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item6: TdxLayoutItem
            CaptionOptions.Text = 'Batal'
            CaptionOptions.Visible = False
            Control = btnBatal
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item7: TdxLayoutItem
            CaptionOptions.Text = 'Simpan'
            CaptionOptions.Visible = False
            Control = btnSimpan
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item11: TdxLayoutItem
            CaptionOptions.Text = 'cxButton2'
            CaptionOptions.Visible = False
            Control = btnKencrengan
            ControlOptions.ShowBorder = False
          end
          object dxLayoutControl1Item13: TdxLayoutItem
            AlignHorz = ahRight
            AlignVert = avCenter
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Penyimpanan '
            Control = lkpPenyimpanan
            ControlOptions.ShowBorder = False
          end
        end
      end
      object dxLayoutControl1Item4: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        CaptionOptions.AlignHorz = taCenter
        SizeOptions.AssignedValues = [sovSizableVert]
        SizeOptions.SizableVert = False
        SizeOptions.Height = 261
        Control = cxGrid1
        ControlOptions.ShowBorder = False
      end
      object batasMitra: TdxLayoutSeparatorItem
        CaptionOptions.Text = 'Separator'
        SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
        SizeOptions.SizableHorz = False
        SizeOptions.SizableVert = False
      end
      object dxlytgrpLayoutControl1Group3: TdxLayoutGroup
        AlignHorz = ahRight
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object lblSaldoAwal: TdxLayoutItem
          CaptionOptions.AlignHorz = taCenter
          CaptionOptions.Text = 'Saldo Tabungan Kemitraan'
          Control = eCrSaldoAwal
          ControlOptions.ShowBorder = False
        end
        object lblTambahNilai: TdxLayoutItem
          CaptionOptions.Text = 'Tambahan Saldo Tabungan'
          Control = eCrTambah
          ControlOptions.ShowBorder = False
        end
        object lblSaldoAlhir: TdxLayoutItem
          CaptionOptions.Text = 'Saldo Akhir Kemitraan'
          Control = eCrSaldoAkhir
          ControlOptions.ShowBorder = False
        end
      end
    end
  end
  object qryTransaksi: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=dasi_ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'kode'
        DataType = ftString
        Size = 4
        Value = 'kode'
      end>
    SQL.Strings = (
      
        'select dt.*, coalesce(p.nama_perkiraan,'#39#39') as nama_perkiraan fro' +
        'm tbl_detail_transaksi dt'
      
        'left join tbl_perkiraan p on dt.id_perkiraan=p.id_perkiraan wher' +
        'e dt.kode_kwitansi=:kode')
    Left = 144
    Top = 220
  end
  object DSTransaksi: TDataSource
    DataSet = CDSTransaksi
    Left = 240
    Top = 220
  end
  object DSPTransaksi: TDataSetProvider
    DataSet = qryTransaksi
    Left = 176
    Top = 220
  end
  object CDSTransaksi: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSPTransaksi'
    Left = 208
    Top = 220
    object CDSTransaksiid: TLargeintField
      FieldName = 'id'
    end
    object CDSTransaksikode_kwitansi: TStringField
      FieldName = 'kode_kwitansi'
      Size = 10
    end
    object CDSTransaksisubtotal: TFloatField
      FieldName = 'subtotal'
      OnChange = CDSTransaksisubtotalChange
      OnSetText = CDSTransaksisubtotalSetText
      DisplayFormat = 'Rp ,0.00;- Rp ,0.00'
    end
    object CDSTransaksinama_perkiraan: TStringField
      FieldName = 'nama_perkiraan'
      LookupDataSet = qryPerkiraan
      LookupKeyFields = 'id_perkiraan'
      LookupResultField = 'nama_perkiraan'
      KeyFields = 'id_perkiraan'
      Size = 50
    end
    object CDSTransaksiketerangan: TStringField
      FieldName = 'keterangan'
      FixedChar = True
    end
    object CDSTransaksilkpnmPerkiraan: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpnmPerkiraan'
      LookupDataSet = qryPerkiraan
      LookupKeyFields = 'id_perkiraan'
      LookupResultField = 'nama_perkiraan'
      KeyFields = 'id_perkiraan'
      Size = 50
      Lookup = True
    end
    object CDSTransaksiid_perkiraan: TStringField
      FieldName = 'id_perkiraan'
      OnChange = CDSTransaksiid_perkiraanChange
      Size = 6
    end
    object FCDSTransaksialokasi_amil: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'alokasi_amil'
    end
    object FCDSTransaksijumlah_alokasi: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'jumlah_alokasi'
    end
    object FCDSTransaksipenyaluran: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'penyaluran'
    end
    object FCDSTransaksijumlah: TSmallintField
      FieldName = 'jumlah'
    end
  end
  object qryPerkiraan: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=dasi_ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'CALL `sp_view_kel_penerimaan`()')
    Left = 344
    Top = 220
    object qryPerkiraannama_perkiraan: TStringField
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object qryPerkiraanid_perkiraan: TStringField
      FieldName = 'id_perkiraan'
      Size = 6
    end
    object fieldPerkiraannama_kel: TStringField
      FieldName = 'nama_kel'
      Size = 25
    end
    object fltfldPerkiraanalokasi_amil: TFloatField
      FieldName = 'alokasi_amil'
      ReadOnly = True
    end
  end
  object dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList
    object dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel
    end
    object dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel
    end
    object dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel
    end
  end
  object dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList
    object dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel
    end
  end
  object dxLayoutLookAndFeelList3: TdxLayoutLookAndFeelList
    Left = 800
    Top = 80
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object dsPerkiraan: TDataSource
    DataSet = qryPerkiraan
    Left = 312
    Top = 220
  end
  object qryDonaturAmil: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select kode_donatur, nama_lengkap, kode_amil from tbl_donatur')
    Left = 40
    Top = 284
  end
  object DSDonaturAmil: TDataSource
    DataSet = qryDonaturAmil
    Left = 64
    Top = 284
  end
  object qrylkpAmil: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select kode_amil, nama_amil from tbl_amil')
    Left = 40
    Top = 220
  end
  object DSlkpAmil: TDataSource
    DataSet = qrylkpAmil
    Left = 72
    Top = 220
  end
  object ActionList1: TActionList
    Left = 56
    Top = 20
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 113
      OnExecute = btnTambahClick
    end
    object Action2: TAction
      Caption = 'Action2'
      ShortCut = 114
      OnExecute = btnBatalClick
    end
    object Action3: TAction
      Caption = 'Action3'
      ShortCut = 115
    end
    object Action4: TAction
      Caption = 'Action4'
      ShortCut = 116
      OnExecute = btnSimpanClick
    end
    object Action5: TAction
      Caption = 'Action5'
      ShortCut = 112
      OnExecute = btnKencrenganClick
    end
  end
  object qryPenyimpanan: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select*From tbl_penyimpanan order by nama_tempat')
    Left = 184
    Top = 260
    object qryPenyimpanannama_tempat: TStringField
      FieldName = 'nama_tempat'
      Size = 25
    end
    object qryPenyimpanansaldo_awal: TFloatField
      FieldName = 'saldo_awal'
    end
    object qryPenyimpanankode_penyimpanan: TSmallintField
      FieldName = 'kode_penyimpanan'
    end
  end
  object dsPenyimpanan: TDataSource
    DataSet = qryPenyimpanan
    Left = 216
    Top = 260
  end
  object qryDonasi: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data' +
      ' Source=dasi_ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'donatur'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = '130701001'
      end>
    SQL.Strings = (
      'select c.*, a.nama_perkiraan, '
      
        '(select b.alokasi_amil  from tbl_perkiraan as b where (b.id_perk' +
        'iraan=a.kd_header)) as alokasi_amil'
      'from tbl_donasi as c '
      'INNER JOIN tbl_perkiraan as a'
      ' on (c.id_perkiraan=a.id_perkiraan)'
      'where c.kode_donatur=:donatur'
      'and a.`level`='#39'Detail'#39)
    Left = 152
    Top = 264
  end
  object cxgrdvwrpstryDonatur: TcxGridViewRepository
    Left = 56
    Top = 320
    object gridDonatur: TcxGridDBTableView
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
      DataController.DataSource = DSDonaturAmil
      DataController.KeyFieldNames = 'kode_donatur'
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
      OptionsView.IndicatorWidth = 0
      object gcolmDonaturkode_donatur: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_donatur'
      end
      object gcolmDonaturnama_lengkap: TcxGridDBColumn
        Caption = 'Nama Donatur'
        DataBinding.FieldName = 'nama_lengkap'
      end
      object gcolmDonaturkode_amil: TcxGridDBColumn
        DataBinding.FieldName = 'kode_amil'
        Visible = False
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
    Left = 376
    Top = 220
  end
  object cxgrdvwrpstry1: TcxGridViewRepository
    Left = 400
    Top = 220
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
      object gcolmPenerimaanAlokasiAmil: TcxGridDBColumn
        Caption = 'Alokasi Amil'
        DataBinding.FieldName = 'alokasi_amil'
      end
    end
  end
  object ds1: TDataSource
    DataSet = spPenerimaan
    Left = 432
    Top = 220
  end
end
