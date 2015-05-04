object frmPengaturan: TfrmPengaturan
  Left = 178
  Top = 68
  Width = 1118
  Height = 466
  Caption = 'Pengaturan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 1110
    Height = 379
    Align = alClient
    TabOrder = 0
    TabStop = False
    object cxpgcntrl1: TcxPageControl
      Left = 10
      Top = 10
      Width = 289
      Height = 193
      ActivePage = cxtbsht1
      Style = 8
      TabOrder = 0
      ClientRectBottom = 193
      ClientRectRight = 289
      ClientRectTop = 25
      object cxtbsht1: TcxTabSheet
        Caption = 'Pengaturan'
        ImageIndex = 0
        object dxlytcntrl2: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 168
          Align = alClient
          TabOrder = 0
          TabStop = False
          LayoutLookAndFeel = dxlytsknlkndfl1
          object cbbPenyimpanan: TcxExtLookupComboBox
            Left = 156
            Top = 74
            Properties.View = gridMediaPenyimpanan
            Properties.KeyFieldNames = 'kode_penyimpanan'
            Properties.ListFieldItem = gcolmMediaPenyimpanannama_tempat
            Style.HotTrack = False
            TabOrder = 1
            Width = 204
          end
          object cbbPenyaluran: TcxExtLookupComboBox
            Left = 156
            Top = 135
            Properties.DropDownWidth = 400
            Properties.View = gridKabupaten
            Properties.KeyFieldNames = 'kode_kab'
            Properties.ListFieldItem = gcolmKabupatennama_kab_kota
            Style.HotTrack = False
            TabOrder = 2
            Width = 229
          end
          object btn1: TcxButton
            Left = 10
            Top = 10
            Width = 83
            Height = 25
            Caption = 'Terapkan'
            TabOrder = 0
            OnClick = btn1Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFBFBFBD2D2D231302D080908ADADADF8F8F8FAFAFAFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE1E1E12C28236E52333A
              2B1B454545E3E3E3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF4F4F4413F3C8966409A724784623D1B140C767676F2F2F2FCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA7A7A74F3A24AA7E4FA3794C9C
              7449584129101010E8E8E8F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EEEEEE383026B48A5DB08557B08455AA7E4F8F6A421B140C9F9F9FFAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFF9F9F95E5E5D9B7348B79066C2A17DDFCDBAC9
              AC8CA97D4E513C26242424E3E3E3FCFCFCFFFFFFFFFFFFFFFFFFFEFEFED8D8D8
              493926C09D77B68E63423221070707D1B89EB68E638D69420E0C08C3C3C3FBFB
              FBFDFDFDFFFFFFFFFFFFF5F5F543413CC19F7ABF9C76493724A8A8A7B0B0B042
              3221D7C1AAAF83543D2D1C3C3C3CE3E3E3FDFDFDFFFFFFFFFFFF9D9D9DB18658
              DBC7B2513D28939392F0F0F0FDFDFD929292AD8050BD997281603C0B0C0BC2C2
              C2FCFCFCFEFEFEFFFFFF493E31ECE2D74A3927A3A3A3F3F3F3FEFEFEFFFFFFDC
              DCDC6A6A68CEB397B3895C281E13565656EFEFEFFDFDFDFFFFFF8D6C473B352C
              CFCFCFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F85633ED1B89E85633E1616
              15BEBEBEF8F8F8FFFFFFF6F6F6FBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFD686867CCB193B992684B38234B4B49EEEEEEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE715B40C8AA89A57A
              4C373430B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF7C7C7CAF8557CCB1936F53344A4A4AFAFAF9FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC897054C2A4
              81CFC5AF544C40F7F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBFBFBF666666434343D2D2D2F4F2EF}
          end
          object cbbOprerasional: TcxExtLookupComboBox
            Left = 156
            Top = 257
            Properties.DropDownWidth = 400
            Properties.View = gridPerkiraan
            Properties.KeyFieldNames = 'id_perkiraan'
            Properties.ListFieldItem = gcolmPerkiraannama_perkiraan
            Style.HotTrack = False
            TabOrder = 4
            Width = 195
          end
          object cbbZakat: TcxExtLookupComboBox
            Left = 514
            Top = 74
            Properties.DropDownWidth = 400
            Properties.View = gridKelPen
            Properties.KeyFieldNames = 'kd_kel'
            Properties.ListFieldItem = gcolmKelPennama_kel
            Style.HotTrack = False
            TabOrder = 5
            Width = 145
          end
          object cbbInfaq: TcxExtLookupComboBox
            Left = 514
            Top = 135
            Properties.DropDownWidth = 400
            Properties.View = gridKelPen
            Properties.KeyFieldNames = 'kd_kel'
            Properties.ListFieldItem = gcolmKelPennama_kel
            Style.HotTrack = False
            TabOrder = 6
            Width = 200
          end
          object cbbKemitraan: TcxExtLookupComboBox
            Left = 156
            Top = 196
            Properties.DropDownWidth = 400
            Properties.View = gridKemitraan
            Properties.KeyFieldNames = 'id_perkiraan'
            Properties.ListFieldItem = gcolmKemitraannama_perkiraan
            Style.HotTrack = False
            TabOrder = 3
            Width = 145
          end
          object cbbKelOperasional: TcxExtLookupComboBox
            Left = 514
            Top = 196
            Properties.DropDownWidth = 400
            Properties.View = gridKel
            Properties.KeyFieldNames = 'kd_kel'
            Properties.ListFieldItem = gcolmKelnama_kel
            Style.HotTrack = False
            TabOrder = 7
            Width = 145
          end
          object dxlytgrpLayoutControl1Group_Root1: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ItemIndex = 2
            ShowBorder = False
            object dxlytmdxlytcntrl2Item4: TdxLayoutItem
              AlignHorz = ahLeft
              CaptionOptions.Visible = False
              Control = btn1
              ControlOptions.ShowBorder = False
            end
            object batasdxlytcntrl2SeparatorItem2: TdxLayoutSeparatorItem
              CaptionOptions.Text = 'Separator'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = False
              SizeOptions.SizableVert = False
            end
            object dxlytgrpdxlytcntrl2Group3: TdxLayoutGroup
              CaptionOptions.Text = 'Hidden Group'
              ButtonOptions.Buttons = <>
              Hidden = True
              LayoutDirection = ldHorizontal
              ShowBorder = False
              object dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup
                CaptionOptions.Text = 'Hidden Group'
                ButtonOptions.Buttons = <>
                Hidden = True
                ItemIndex = 6
                ShowBorder = False
                object dxlytlbldtmdxlytcntrl2LabeledItem1: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Jenis Penyimpanan Untuk Saldo Kas Harian'
                end
                object dxlytmdxlytcntrl2Item1: TdxLayoutItem
                  CaptionOptions.Text = 'Nama Media Penyimpanan'
                  Control = cbbPenyimpanan
                  ControlOptions.ShowBorder = False
                end
                object dxlytsprtrtmdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem
                  CaptionOptions.Text = 'Separator'
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = False
                  SizeOptions.SizableVert = False
                end
                object dxlytlbldtmdxlytcntrl2LabeledItem2: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Wilayah Penyaluran Keuangan'
                end
                object dxlytmdxlytcntrl2Item2: TdxLayoutItem
                  CaptionOptions.Text = 'Wilayah Penyaluran'
                  Control = cbbPenyaluran
                  ControlOptions.ShowBorder = False
                end
                object batasdxlytcntrl2SeparatorItem5: TdxLayoutSeparatorItem
                  CaptionOptions.Text = 'Separator'
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = False
                  SizeOptions.SizableVert = False
                end
                object dxlytlbldtmdxlytcntrl2LabeledItem6: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Nama Perkiraan Untuk Kemitraan'
                end
                object LCIdxlytcntrl2Item1: TdxLayoutItem
                  CaptionOptions.Text = 'Nama Pekiraan'
                  Control = cbbKemitraan
                  ControlOptions.ShowBorder = False
                end
                object dxlytsprtrtmdxlytcntrl2SeparatorItem2: TdxLayoutSeparatorItem
                  CaptionOptions.Text = 'Separator'
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = False
                  SizeOptions.SizableVert = False
                end
                object dxlytlbldtmdxlytcntrl2LabeledItem3: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Nama Perkiraan Untuk Dana Operasional Amil'
                end
                object dxlytmdxlytcntrl2Item3: TdxLayoutItem
                  CaptionOptions.Text = 'Nama Perkiraan'
                  Control = cbbOprerasional
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlytspltrtmdxlytcntrl2SplitterItem1: TdxLayoutSplitterItem
                CaptionOptions.Text = 'Splitter'
                SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                SizeOptions.SizableHorz = False
                SizeOptions.SizableVert = False
              end
              object dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup
                ButtonOptions.Buttons = <>
                Hidden = True
                ShowBorder = False
                object dxlytlbldtmdxlytcntrl2LabeledItem4: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Kelompok Perkiraan Untuk Zakat'
                end
                object lbldxlytcntrl2Item1: TdxLayoutItem
                  CaptionOptions.Text = 'Kelompok Perkiraan'
                  Control = cbbZakat
                  ControlOptions.ShowBorder = False
                end
                object batasdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem
                  CaptionOptions.Text = 'Separator'
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = False
                  SizeOptions.SizableVert = False
                end
                object dxlytlbldtmdxlytcntrl2LabeledItem5: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Kelompok Perkiraan Untuk Infaq'
                end
                object lbldxlytcntrl2Item2: TdxLayoutItem
                  CaptionOptions.Text = 'Kelompok Perkiraan'
                  Control = cbbInfaq
                  ControlOptions.ShowBorder = False
                end
                object batasdxlytcntrl2SeparatorItem3: TdxLayoutSeparatorItem
                  CaptionOptions.Text = 'Separator'
                  SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                  SizeOptions.SizableHorz = False
                  SizeOptions.SizableVert = False
                end
                object dxlytlbldtmdxlytcntrl2LabeledItem7: TdxLayoutLabeledItem
                  CaptionOptions.Text = 'Kelompok Perkiraaan Operasional'
                end
                object LCIdxlytcntrl2Item2: TdxLayoutItem
                  CaptionOptions.Text = 'Kelompok Perkiraan'
                  Control = cbbKelOperasional
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlytspltrtmdxlytcntrl2SplitterItem2: TdxLayoutSplitterItem
                CaptionOptions.Text = 'Splitter'
                SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
                SizeOptions.SizableHorz = False
                SizeOptions.SizableVert = False
              end
            end
            object batasdxlytcntrl2SeparatorItem4: TdxLayoutSeparatorItem
              CaptionOptions.Text = 'Separator'
              SizeOptions.AssignedValues = [sovSizableHorz, sovSizableVert]
              SizeOptions.SizableHorz = False
              SizeOptions.SizableVert = False
            end
          end
        end
      end
      object cxtbsht2: TcxTabSheet
        Caption = 'Pengaturan User'
        ImageIndex = 1
        object dxlytcntrl3: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 289
          Height = 168
          Align = alClient
          TabOrder = 0
          TabStop = False
          LayoutLookAndFeel = dxlytsknlkndfl1
          object ePasswod: TcxTextEdit
            Left = 130
            Top = 10
            ParentFont = False
            Properties.EchoMode = eemPassword
            Properties.PasswordChar = #8226
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Verdana'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 247
          end
          object btn4: TcxButton
            Left = 224
            Top = 66
            Width = 153
            Height = 25
            Caption = 'Ubah Password'
            TabOrder = 2
            OnClick = btn4Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFBFBFBD2D2D231302D080908ADADADF8F8F8FAFAFAFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDE1E1E12C28236E52333A
              2B1B454545E3E3E3FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFF4F4F4413F3C8966409A724784623D1B140C767676F2F2F2FCFCFCFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBA7A7A74F3A24AA7E4FA3794C9C
              7449584129101010E8E8E8F8F8F8FEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              EEEEEE383026B48A5DB08557B08455AA7E4F8F6A421B140C9F9F9FFAFAFAFDFD
              FDFFFFFFFFFFFFFFFFFFFFFFFFF9F9F95E5E5D9B7348B79066C2A17DDFCDBAC9
              AC8CA97D4E513C26242424E3E3E3FCFCFCFFFFFFFFFFFFFFFFFFFEFEFED8D8D8
              493926C09D77B68E63423221070707D1B89EB68E638D69420E0C08C3C3C3FBFB
              FBFDFDFDFFFFFFFFFFFFF5F5F543413CC19F7ABF9C76493724A8A8A7B0B0B042
              3221D7C1AAAF83543D2D1C3C3C3CE3E3E3FDFDFDFFFFFFFFFFFF9D9D9DB18658
              DBC7B2513D28939392F0F0F0FDFDFD929292AD8050BD997281603C0B0C0BC2C2
              C2FCFCFCFEFEFEFFFFFF493E31ECE2D74A3927A3A3A3F3F3F3FEFEFEFFFFFFDC
              DCDC6A6A68CEB397B3895C281E13565656EFEFEFFDFDFDFFFFFF8D6C473B352C
              CFCFCFF9F9F9FFFFFFFFFFFFFFFFFFFFFFFF9F9F9F85633ED1B89E85633E1616
              15BEBEBEF8F8F8FFFFFFF6F6F6FBFBFBFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFDFDFD686867CCB193B992684B38234B4B49EEEEEEFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBEBEBE715B40C8AA89A57A
              4C373430B9B9B9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF7C7C7CAF8557CCB1936F53344A4A4AFAFAF9FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDC897054C2A4
              81CFC5AF544C40F7F6F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFBFBFBF666666434343D2D2D2F4F2EF}
          end
          object eUlangPass: TcxTextEdit
            Left = 130
            Top = 38
            ParentFont = False
            Properties.EchoMode = eemPassword
            Properties.PasswordChar = #8226
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Verdana'
            Style.Font.Style = [fsBold]
            Style.HotTrack = False
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 121
          end
          object dxlytgrpLayoutControl1Group_Root2: TdxLayoutGroup
            AlignHorz = ahLeft
            AlignVert = avTop
            ButtonOptions.Buttons = <>
            Hidden = True
            ShowBorder = False
            object dxlytmdxlytcntrl3Item2: TdxLayoutItem
              CaptionOptions.Text = 'Password baru'
              Control = ePasswod
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl3Item4: TdxLayoutItem
              CaptionOptions.Text = 'Ulangi Password baru'
              Control = eUlangPass
              ControlOptions.ShowBorder = False
            end
            object dxlytmdxlytcntrl3Item3: TdxLayoutItem
              AlignHorz = ahRight
              CaptionOptions.Visible = False
              Control = btn4
              ControlOptions.ShowBorder = False
            end
          end
        end
      end
    end
    object dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytmdxlytcntrl1Item1: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = cxpgcntrl1
        ControlOptions.AutoColor = True
        ControlOptions.ShowBorder = False
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1110
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 1110
      Height = 52
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
      Left = 51
      Top = 36
      Width = 213
      Height = 16
      Caption = 'Pengaturan Aplikasi Lebih Lanjut'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lbl2: TLabel
      Left = 51
      Top = 11
      Width = 126
      Height = 23
      Alignment = taCenter
      Caption = 'Pengaturan'
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
      Left = 11
      Top = 7
      Width = 32
      Height = 32
      AutoSize = True
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        0000200806000000737A7AF4000000097048597300000048000000480046C96B
        3E000000097670416700000020000000200087FA9C9D00000006624B474400FF
        00FF00FFA0BDA79300000A47494441547801C5576974544516FE5E2FEFF59E4E
        9385907D2102619110404C02466570832812082A2A088773DC7504C48341392C
        02232A0C01151022382423484464202A91EE8010C232EE4411862149A7935ED2
        EBEB756EBD10F487F3C3598E49DDAA7AF5EADDFBD5AD5BB7BEE6F03BFF71BFB3
        7D5C03D0DC722A5BAD52BF2A08422EAFE2C382528052A994442693FD4738A3D1
        2842A1902462484430105488A2F8A33FE0FFE3E851453F31A51280CFCDE6748D
        5ABD57AD568F22001CCFF3A016AC552814F86F0084C36104834190E1BE36E6F7
        FB5B7C7EFFD409A5A597B9C39F7C324AC9F3BB351A751E81E8352C0810A4D5F3
        50F24AC8657206F6374B241A4128C83C4000C813415194809071F87CFE1F42C1
        602577E0E0C7CB341ACD125A3D4702AD568778639CB47A6698AD9EC96FB64E1F
        B02D60C280302F389C2E78BD1E900798C47C3EDF726EDFFEFA237A9DFE26954A
        8D388301275ACE61D9B2E5805C412AD80EF5093DFEE612A32FAE4A2482A5552F
        60CCA8EBE1EAE94120E087DBE36EE46AF7FCD56C34184BD41A350C7A3DA64C7D
        10FEFE132053EAC0D136707219B81809E1884931DBAB30C6514B053446AF108B
        02D223D55C2C86A8F410432C12A6774C82D0B47F860FF7D4A0C7ED86DFE787B3
        C769E1DE7D6FE7D17E2653A946AD85A052A1BC723E14F9E5D0669742A1E4C1D1
        0108DA55501A7D9257C22E1DF878515A59D8A9A5F10061E01074A8A130FAC111
        B010EBC7D17C42253A04C8350E782E9E40F8BB5AD4EF7E136220009FDF8B6EBB
        DDCC6D7D67EBD184848452AD460B955A8D8A471641995E0A4D4E29E4820A6926
        1EB78F49C65F0EB7C217D320169F0C95E841300C440C09E049192727006A3D54
        3E3762310EA24E07A5DB8528FD87685CE6B0C1DDFA1942AD0750B76525027E3F
        BC3E2FBABABACCDCC6CD9BCCC9C9C9255A8D062C08673F5E85D90FDF87333623
        5ABE89E086A121543F5F8E1BA6AD8722B300F794E4E0C61C035EFAE012227C3C
        824EFA2E45495E9041B47250A548CE81DF1A832A2142EE0F211A0AC2FED547E0
        2E3660C79F5F620148007CB05AAD166EDDFA37CCFDFBF72FD1D1EA05B5064F2E
        5C89872AFF40CA13B1B1D18A229307BB37BF88E1773E8368DC60D42E9D882E6B
        3B9EDA7E097CBF1CE4E4A5E24A6790B6478D902E0EAA50881090177805789F8F
        622088A8E84757CB2EE89D67F0FACAE720FA7DF09017DADBDB9BB8D5AFAE3527
        272597E8C96D2C06AA5655237B8001CB5EAE42D3A9565C3F381B69198938F7F5
        05B8DC114C1C3F1455CB3760EF090E0FCD188B6573CB70C7531FC26AC88542DB
        0FA28D837A804086A3E4851078530811BF0BB6E36F2143D186A50BE74931E0F6
        78D061ED38C62D5FB5C29C949454A2630078016FD77C88EB724C9835EB0164A6
        6550B0F870E9CA15C49B4C30E8E8A4D0BCB6B66E1C3AFE0D9E7E68326A76D561
        F19E9F10973A068AB8144434060850D0C99143141490BB9C08F9ECB0995FC7F0
        01323C3EBB1C6250848701E8E838CE2D7D79A939F12A009E001C6838092E6CC7
        9D93EFC2A4B29B71E6DC9798F3D86224A46491BB7351327A28A6DC3A0E5999E9
        5256BB615225AC7C01C6171661C8F05CD43553807A8C50A519294A01FF1517A0
        B6A3F3C82B281B998119534A2925F702A02D38C12D7C619185B6A058A7D38317
        787C7EFC3CF6D4EEC094F2BBB0E1D555E8A1A431A6E279C494F108D34A62C11E
        14A4E9F1C423D3513EF9761C6830E3FB8B1D786E7E25DEAFFF18551F74219652
        00953201114A3E62D48388AD0DDD963FE1DE4925B8B978108262903CE0465B7B
        DB09EEC9679FB62425264A00549407FEDEEAC096AD5B90953F0C07EBD6212D29
        05632B96A053CC832A955CECED46CFB7C710759CC0FA150B30637A0558BADDB0
        711356541F8426AF18A6B47C3C73CF28D4375FC6A92F2F6058A21FCAF64F905D
        301EC3F28C9405031280F68E8E93DCBC47E75B1213128B5910D2750C6B8F0AEB
        366D45DAC011787FE393484F1980769B1D5D9E280E36FD88BAA63684950A8CD3
        5DC4AA050F424E39C04BD13EF7B105B8E4A564A65443A936606FF5A3F8A8E134
        5ED9F1050A33E4E0BDDF6354C93D48D20740D731A56129084F72B3663F68A144
        54ACD56AA116D490E9B2B17EC36B7865D9020CCACF46466A1AA59318443A5E49
        F1265C6A73C2ED135138381DDD2E07BEFAFA6B5CBE7C9912B20CE3279462674D
        0DF61FB2E0FECA7B5151518E75EB6B90DE3F0EFBF7D56162F93C443D17E0A763
        E9F57A591E68E6A6CD9C6EA1542C0150092A24658DC5671F6DC3B48A6974FC32
        30BC6028E5F528940A25384AF0A170588A62311CC4E1C30DA8AEDE8691238650
        12E3317D6625789AB773671DE6CC9D85FEC9C9E022C0D97367B17AF51A4C7F78
        11AC178F232006E856F4C266EB6AE6EE289FDC0B8032A1A01230A4F076EC7A7B
        251E7DE23168745A988F1C85DB45815730043367DE079787DD6422AA37BF852D
        DBF763C22D6508F5B441508491959D8BC52F2E86401CE27CEB05844311E46566
        62CF9EBD58BD761D5E5AF316BE3D7D90F2802865425B1701289B748BC5146F2A
        D6D25DC04E41C9ADF763DF7B6FE0B63B6E4303AD304C8462F1A2E7B1AFBE1EE9
        5919281A5344C86DD8B0F11D9CBA1040DDA685C8484FC76B6BD6A26CE2CD1834
        78102C4D6771E0B019C58539B8AFB21216B31955555558B27A1B9A3EDD259D02
        E92EE82600378E2FB6C41BE38BD96A19059B543E1FB5DBD7A0B0A810471B1B31
        BA68342AA64EC38E776BD0D965C3E4F22970D8BBB1FFC0A7F8FC742772935558
        B2682ECD2F82D361474363330E1F3D83FC44401F67C0BD1515B0B6B5D116ACC5
        D34B5EC7A1FA37290F04E1F3786177D89BB9C2B14516A331AE98D13106E0EECA
        67B06FF7260C1C988968380AA7DD4E170D70BEF5070C1B310C7A831E366B272C
        C75A70C91A20CAE5C5DD13C7A2F28119686A3A8D23C7CFA120230EA9A9A9ECB6
        C3F09144409C4E7C71F20C2A673F4BD7F16BBD00E82E70389CCDDCD091C38F91
        D2711AB5063CDDFFB795CF41EB775F61FFFBDB404C49321E0E8529106374DE89
        E3D169603C8F9193A4A4443849B95EAFA36B18B0767641C52BC0F209DD48C42F
        0484C311BAFD7CB873EAC3185430027FABDF8660883C4017528FD37586BB6ED8
        E063647C9C86C50031A038633FDC3469064CFD92990E1289DA502BF19EAB2D35
        52F9E53B69802A36D637971EE980B2DADE6D45E3A15AB89CDD042044A4D44B81
        E86DE1F286E4D790EB6769357AFA0DC0283807855C4E0986F565440DE590112D
        928829E9E5388E54B20EA965B6A8A101898F1101234FD02015961DA3C48822E4
        01D68F10350B536A8EB2A34C1EF5127921AA5ECB65E7E79611F7DFACD1EAF335
        048219271621FD1660BC4F76CD60AF516287B42DD46786C9106B2400ACC3B820
        714256080935B46D34C6114B6220400B61207C64DCE775FF288A81C799267946
        6ED64DBC206C349952AED3E98C88125A865EFA88D430DD3F0BFBA4CFF2CFA3BD
        BD5F7BC7498B91BC484CDBE371C26E6F3F4FB4ECA97FFEF48F4FD91799F4F148
        92D92465245A12A2A254FFEF0B716778496D23807748CE7254F5156694FD0462
        3F08589F097BF7CB39EC99498CAA7F374EAFA4C2E6489DAB157B66002839A34F
        AEEDDED53952D367587AF83F540CC435B5FF0203598F97D016B6E80000002574
        455874646174653A63726561746500323031302D30322D31305430313A32363A
        32372D30363A3030753F074C0000002574455874646174653A6D6F6469667900
        323030392D30392D31305431353A35383A33302D30353A3030EA71B3E6000000
        0049454E44AE426082}
      Stretch = True
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 536
    Top = 8
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object spPenyimpanan: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_penyimpanan'
    Parameters = <>
    Left = 840
    Top = 165
    object smlntfldPenyimpanankode_penyimpanan: TSmallintField
      FieldName = 'kode_penyimpanan'
    end
    object fieldPenyimpanannama_tempat: TStringField
      FieldName = 'nama_tempat'
      Size = 25
    end
    object crncyfldPenyimpanansaldo_awal: TCurrencyField
      FieldName = 'saldo_awal'
    end
  end
  object dsPenyimpanan: TDataSource
    DataSet = spPenyimpanan
    Left = 840
    Top = 197
  end
  object cxgrdvwrpstry1: TcxGridViewRepository
    Left = 840
    Top = 128
    object gridMediaPenyimpanan: TcxGridDBTableView
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
      DataController.DataSource = dsPenyimpanan
      DataController.KeyFieldNames = 'kode_penyimpanan'
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
      OptionsView.Header = False
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      object gcolmMediaPenyimpanankode_penyimpanan: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'kode_penyimpanan'
        Visible = False
      end
      object gcolmMediaPenyimpanannama_tempat: TcxGridDBColumn
        Caption = 'Nama'
        DataBinding.FieldName = 'nama_tempat'
      end
      object gcolmMediaPenyimpanansaldo_awal: TcxGridDBColumn
        DataBinding.FieldName = 'saldo_awal'
        Visible = False
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
    Left = 808
    Top = 168
  end
  object dsKabupaten: TDataSource
    DataSet = spKabupaten
    Left = 808
    Top = 196
  end
  object cxgrdvwrpstryKab: TcxGridViewRepository
    Left = 808
    Top = 132
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
  object dsKel: TDataSource
    DataSet = qryKelompok
    Left = 768
    Top = 196
  end
  object qryKelompok: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from tbl_kelompok where jenis='#39'OUT'#39
      ''
      '')
    Left = 770
    Top = 168
  end
  object GridRepKel: TcxGridViewRepository
    Left = 768
    Top = 132
    object gridKel: TcxGridDBTableView
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
      DataController.DataSource = dsKel
      DataController.KeyFieldNames = 'kd_kel'
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
      object gcolmKelkd_kel: TcxGridDBColumn
        Caption = 'Kode '
        DataBinding.FieldName = 'kd_kel'
        Visible = False
      end
      object gcolmKelnama_kel: TcxGridDBColumn
        Caption = 'Nama Kelompok'
        DataBinding.FieldName = 'nama_kel'
      end
      object gcolmKeljenis: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'jenis'
      end
    end
    object gridKelPen: TcxGridDBTableView
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
      DataController.KeyFieldNames = 'kd_kel'
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
      OptionsView.HeaderHeight = 25
      object gcolmKelPenkd_kel: TcxGridDBColumn
        Caption = 'Kode Kel'
        DataBinding.FieldName = 'kd_kel'
      end
      object gcolmKelPennama_kel: TcxGridDBColumn
        Caption = 'Nama Kelompok'
        DataBinding.FieldName = 'nama_kel'
      end
      object gcolmKelPenjenis: TcxGridDBColumn
        Caption = 'Jenis'
        DataBinding.FieldName = 'jenis'
      end
    end
    object gridPerkiraan: TcxGridDBTableView
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
      DataController.DataSource = ds2
      DataController.KeyFieldNames = 'id_perkiraan'
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
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      object gcolmPerkiraannama_perkiraan: TcxGridDBColumn
        Caption = 'Nama Perkiraan'
        DataBinding.FieldName = 'nama_perkiraan'
      end
      object gcolmPerkiraannama_kel: TcxGridDBColumn
        Caption = 'Kelompok Perkiraan'
        DataBinding.FieldName = 'nama_kel'
      end
    end
    object gridKemitraan: TcxGridDBTableView
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
      DataController.DataSource = ds3
      DataController.KeyFieldNames = 'id_perkiraan'
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
      OptionsView.HeaderHeight = 25
      OptionsView.Indicator = True
      OptionsView.IndicatorWidth = 0
      object gcolmKemitraanid_perkiraan: TcxGridDBColumn
        Caption = 'Kode'
        DataBinding.FieldName = 'id_perkiraan'
      end
      object gcolmKemitraannama_perkiraan: TcxGridDBColumn
        Caption = 'Nama Perkiraan'
        DataBinding.FieldName = 'nama_perkiraan'
      end
      object gcolmKemitraannama_kel: TcxGridDBColumn
        Caption = 'Kelompok'
        DataBinding.FieldName = 'nama_kel'
      end
    end
  end
  object qry1: TADOQuery
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <>
    Prepared = True
    SQL.Strings = (
      'select * from tbl_kelompok where jenis='#39'IN'#39
      ''
      '')
    Left = 738
    Top = 168
  end
  object ds1: TDataSource
    DataSet = qry1
    Left = 736
    Top = 196
  end
  object spPenerimaan: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_kel_penerimaan'
    Parameters = <>
    Left = 872
    Top = 164
  end
  object ds2: TDataSource
    DataSet = spPenerimaan
    Left = 874
    Top = 197
  end
  object ds3: TDataSource
    DataSet = sp1
    Left = 906
    Top = 197
  end
  object sp1: TADOStoredProc
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    ProcedureName = 'sp_view_kel_penerimaan'
    Parameters = <>
    Left = 904
    Top = 164
  end
end
