object frmRekapPenerimaManfaat: TfrmRekapPenerimaManfaat
  Left = 270
  Top = 144
  Width = 762
  Height = 419
  Caption = 'REKAP'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
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
  object dxlytcntrl1: TdxLayoutControl
    Left = 0
    Top = 53
    Width = 754
    Height = 332
    Align = alClient
    TabOrder = 0
    TabStop = False
    object DtTgl: TcxDateEdit
      Left = 115
      Top = 11
      TabOrder = 0
      Width = 145
    end
    object grid1: TcxGrid
      Left = 11
      Top = 69
      Width = 250
      Height = 200
      TabOrder = 7
      LookAndFeel.Kind = lfUltraFlat
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
      object gridMutasi: TcxGridDBTableView
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
        DataController.DataSource = dsMutasi
        DataController.Summary.DefaultGroupSummaryItems = <
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
            Position = spFooter
          end
          item
            Format = 'Rp ,0.00;- Rp ,0.00'
            Kind = skSum
          end>
        DataController.Summary.FooterSummaryItems = <
          item
            Format = '0'
            Kind = skSum
            FieldName = 'total'
            Column = gcolmMutasitotal
          end>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 20
        object gcolmMutasidari_perkiraan: TcxGridDBColumn
          Caption = 'Perkiraan'
          DataBinding.FieldName = 'dari_perkiraan'
        end
        object gcolmMutasinama_perkiraan: TcxGridDBColumn
          DataBinding.FieldName = 'nama_perkiraan'
        end
        object gcolmMutasitotal: TcxGridDBColumn
          Caption = 'Total Penerima Manfaat'
          DataBinding.FieldName = 'total'
          HeaderAlignmentHorz = taRightJustify
        end
      end
      object cxgrdlvlgrid1Level1: TcxGridLevel
        Caption = 'Data Penerimaan'
        GridView = gridMutasi
      end
    end
    object Dt1: TcxDateEdit
      Left = 364
      Top = 11
      Style.HotTrack = False
      TabOrder = 1
      Width = 160
    end
    object btnFilter: TcxButton
      Left = 271
      Top = 38
      Width = 107
      Height = 25
      Caption = 'Lihat Data'
      TabOrder = 3
      OnClick = btnFilterClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFCFCFC
        FAFAFAFAFAFAFAFAFAF9F9F9F8F8F8F8F8F8F8F8F8F7F7F7F8F8F8F9F9F9F8F8
        F8F2F2F2C0C0C08A8A8BFAFAFAE4E4E4CFCFCFCBCBCBCBCBCBA3A2A3B7B7B7B6
        B6B6B5B4B5B4B3B49F9F9FC7C7C7C1C1C19D9D9D777778E2E2E2FDFDFDF4F4F4
        E8E8E8E5E5E5E5E5E5BCBCBCB7B2B5B5B0B4B1ACB0AEAAADB3B3B3DADADAA4A4
        A5868687E3E2E2FDFDFDCBCBCBA09E9FA2A0A2A7A5A6ABA9ABABAAABC3BFC2B4
        B0B39C999B9C999B8A8889938D819B9A99959292A9A398CBCAC8C8C6C74B4C4B
        5354545F605F6C6C6B787777787877828181A3A2A298979789878884775D6C69
        686E6C6C666360D0CECECCCACB191B192225233336334748465A5A5960605FA1
        A0A0A3A2A19E9D9D9493939392925B59595A57584A4848D0CDCFCFCDCE181A19
        2023212F3230414441535452686867A2A2A1A8A7A7A8A7A7A7A7A7ABABAB6867
        66565454484746D2D0D1D3D1D21819181E201E2A2D2B383B39484A47525351A1
        A1A0A6A6A5A9A9A8AFAFAFB8B8B8585756545352484747D5D3D4DCDADB181818
        1D1E1D2427252E312E3B3E3B4749476667669F9F9EA5A6A5B6B6B57676755352
        51525251494948DAD9D9DADADA1818181B1B1B1D1F1D2528252F32303E413E47
        48464E504E6162605151504E4F4D4F4F4E51504F4A4A49E1E0E0DDDCDC171717
        1819191818181E201E2528253437353C3E3C4043414345434547454749474A4B
        494D4E4C484947E2E1E2E0DEDF161616171717151515191A191E201E2C2F2D32
        3533373A383B3D3B3E403E4143414546454A4B49464746E5E4E4E3E2E2161616
        161616181717151515191A192628262C2F2C303331353735383B393C3E3C4143
        41474846454644E7E6E7E8E6E8706E70706F70737172727071706F7076757679
        79797B7A7B7C7B7C7D7C7D7D7D7D7F7E7E807F807F7D7EEBE9EAFFFFFFFFFFFF
        FFFFFFFFFFFFFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object btn1: TcxButton
      Left = 384
      Top = 38
      Width = 98
      Height = 25
      Caption = 'Cetak Data'
      TabOrder = 4
      OnClick = btn1Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFD1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9D1BDA9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9FFFEFDFFFEFDFF
        FEFDFFFEFDFFFEFDFFFEFDD1BDA9FFFFFFFFFFFFFFFFFFFFFFFF909090909090
        9090903B3B3BC3B09EEBE7E3D5C8BBD5C8BBD5C8BBD5C8BBEBE7E3C3B09E3B3B
        3B8F8A838F8A838F8A83A09B95D7D7D7D7D7D74747478D8072A7A098A7A098A7
        A098A7A098A7A098A7A0988D8072474747D7D7D7D7D7D78F8A83A09B95909090
        9090904545454545454545454545454545454545454545454545454545454545
        45ECEAE950B0408F8A83A09B95D6D2CFD6D2CFDFDFDFDFDFDFDFDFDFDFDFDFDF
        DFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFDFD6D2CF9090908F8A83A09B95909090
        CEC9C4BEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBEBE
        BECEC9C4CEC9C48F8A83A09B95C7C1BCC7C1BC70707070707070707070707070
        7070707070707070707070707070707070C7C1BCC7C1BC8F8A83A09B95C2BBB5
        C2BBB54646464646464646464646464646464646464646464646464646464646
        46C2BBB5C2BBB58F8A83A09B95BEB7B1BEB7B12E2E2E2E2E2E2E2E2E2E2E2E2E
        2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2EBEB7B1BEB7B18F8A83A09B95BCB5AF
        BCB5AF2525252525252525252525252525252525252525252525252525252525
        25BCB5AFBCB5AF8F8A83A09B95A09B95A09B95A09B9590857BB7AA9EDECFC1DE
        CFC1DECFC1DECFC1B7AA9E90857B8F8A838F8A838F8A838F8A83FFFFFFFFFFFF
        FFFFFFFFFFFF90857BBFB6ADEEE6DFEEE6DFEEE6DFEEE6DFBFB6AD90857BFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9F9F6F3F9F6F3F9
        F6F3F9F6F3F9F6F3F9F6F3D1BDA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD1BDA9FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFED1BDA9FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1BDA9D1BDA9D1BDA9D1
        BDA9D1BDA9D1BDA9D1BDA9D1BDA9FFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object cbbKab: TcxExtLookupComboBox
      Left = 115
      Top = 40
      Properties.View = gridKab
      Properties.KeyFieldNames = 'kode_kab'
      Properties.ListFieldItem = gcolmKabnama_kab_kota
      Style.HotTrack = False
      TabOrder = 2
      Width = 150
    end
    object rb1: TcxRadioButton
      Left = 488
      Top = 42
      Width = 113
      Height = 17
      Caption = 'Penerimaan'
      Checked = True
      TabOrder = 5
      TabStop = True
    end
    object rb2: TcxRadioButton
      Left = 607
      Top = 42
      Width = 113
      Height = 17
      Caption = 'Pengeluaran'
      TabOrder = 6
    end
    object dxlytgrp1: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutLookAndFeel = dxlytsknlkndfl1
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      object dxlytgrpLayoutControl1Group3: TdxLayoutGroup
        ButtonOptions.Buttons = <>
        Hidden = True
        LayoutDirection = ldHorizontal
        ShowBorder = False
        object dxlytgrpLayoutControl1Group5: TdxLayoutGroup
          AlignHorz = ahLeft
          ButtonOptions.Buttons = <>
          Hidden = True
          ShowBorder = False
          object dxlytgrpLayoutControl1Group2: TdxLayoutGroup
            ButtonOptions.Buttons = <>
            Hidden = True
            LayoutDirection = ldHorizontal
            ShowBorder = False
            object dxlytgrpLayoutControl1Group6: TdxLayoutGroup
              AlignHorz = ahLeft
              ButtonOptions.Buttons = <>
              Hidden = True
              ShowBorder = False
              object dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object LCI1: TdxLayoutItem
                  AlignHorz = ahLeft
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Mulai Tanggal'
                  Control = DtTgl
                  ControlOptions.AlignHorz = ahLeft
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item1: TdxLayoutItem
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Sampai Tanggal'
                  Control = Dt1
                  ControlOptions.ShowBorder = False
                end
              end
              object dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup
                ButtonOptions.Buttons = <>
                Hidden = True
                LayoutDirection = ldHorizontal
                ShowBorder = False
                object LCIdxlytcntrl1Item4: TdxLayoutItem
                  AlignHorz = ahLeft
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Nama Kabupaten'
                  Control = cbbKab
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item2: TdxLayoutItem
                  CaptionOptions.Visible = False
                  Control = btnFilter
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item3: TdxLayoutItem
                  CaptionOptions.Visible = False
                  Control = btn1
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item5: TdxLayoutItem
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Penerimaan'
                  CaptionOptions.Visible = False
                  Control = rb1
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
                object LCIdxlytcntrl1Item6: TdxLayoutItem
                  AlignVert = avCenter
                  CaptionOptions.Text = 'Pengeluaran'
                  CaptionOptions.Visible = False
                  Control = rb2
                  ControlOptions.AutoColor = True
                  ControlOptions.ShowBorder = False
                end
              end
            end
          end
        end
      end
      object LCIdxlytcntrl1Item11: TdxLayoutItem
        AlignHorz = ahClient
        AlignVert = avClient
        Control = grid1
        ControlOptions.ShowBorder = False
      end
    end
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 754
    Height = 53
    Align = alTop
    BevelOuter = bvNone
    Caption = 'pnl1'
    TabOrder = 1
    object img4: TImage
      Left = 0
      Top = 0
      Width = 754
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
      Left = 50
      Top = 36
      Width = 170
      Height = 16
      Caption = 'Rekap Penerimaa Manfaat'
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
      Top = 12
      Width = 67
      Height = 23
      Alignment = taCenter
      Caption = 'Rekap'
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
      Left = 12
      Top = 12
      Width = 32
      Height = 32
      AutoSize = True
      Center = True
      Picture.Data = {
        0A54504E474F626A65637489504E470D0A1A0A0000000D494844520000002000
        000020100600000023EAA6B700000009704859730000375C0000375C01CBC7A4
        B9000000097670416700000020000000200087FA9C9D00000006624B4744FFFF
        FFFFFFFF0958F7DC00000EC7494441547801AD997B9096551DC7BFCFFBEEBB57
        16165C16928B1BB088A8880A434A5E2831D33FD4A4A4B2C2B199A62947CB4B63
        1775EC5EDAC5B2999C344DA7C96B6933D218634D080922482AA2140B7295EBC2
        DED8DBF3F6F93EE73DEE0A2C60D3BECFEFF93DE739BF73CEEF7E7EE7D944FFE3
        DF4C4DD1058C6DD7DBEA06AFD15EFD03ECAB81DB4DFAB6AE52A2267D50C7836B
        759ABAC0AF6AB81E549FEA18D528A95177E836F048FD556783530D55AB0A5ACF
        E82759A34B13B44917EADF5AC7AF4E3FD535FA9DEE82D2578B86E9384648D53C
        55F26A1B2377808FF54A06236C80C5C974EE508BDE0417E59F94643FE9D3BA1A
        16A5E9BA589394D344CDD248FA4ED738DAA9DE624C3363F6EA52CDE5F9223D8D
        28D2329E3DCB6BFA891E80F6002ADAC8D86ED5A2C2F3515285F66BB60E288F22
        A6A80765B4AB82E7DDEA60EC2214FB3A4A18A3D351E5FD2AA32FC7FA3995B37A
        AAE7F47DBD0E5DAA5E56E7E1285712064B69F63B94BA4AFE25A8A30E48B0E7B9
        B0273DA647F43863E288ED2CB784C628601AB00026AF57BD4E42FCE37526161A
        854873B41B8136EA3CEC5F509BA681F36AA7B71BF60F30AE8F797AC029B8084E
        C009C224999065FA17EB6ED11FB4583FD61FF54928A4D7186BC3CC87B60C7E73
        BCED55E700EE7831C8954CC786D3E92C439765E09DF24F3A37FB09674D01E166
        75685C58A999A9A52DDA816BD620CA029DCAAF5E13B0E1B92C3F1C11E7608F1A
        049E41BB5A9528E22D6CBB96F9D723EE2B60336928C2B4D56F4173D9B3FDC33D
        1021980D639A60E9843597673C3CAD2F6AB53E6022A0DFE9CBE5758562DB33BE
        E93CE235680884518592001369F622D02C9D8545CF24FAAFD2777489CE41D06A
        54371EA1CBE9B71DF2B00D79E96A41F09D08B60ADB2FC62616262D51D8FB6C65
        83C98DDDEFE7086EFB7D8E55AC96FDDA467848CFEA662CFF517CA71E1EFE8292
        EBE02147C858F0541BC848BBB3493C3A7B38EC2D1921FF12D8EC028A385B2F30
        4DA764BF87D164373005776DC37605ECDCA446499FD29DA8412C3A8C96C8141D
        DA83CE5BA0DE85801177305B2B6DBB761F944909A26087B217DE843BC45C7E36
        D85302E4F4B21EC41B7EA4CB742F3EFC3594D2CA4A397D976478278A2EA09A53
        187BB45048EA71CF7AE2CBE27731D0E27693B86613E9B3F52734DA0314D1FB76
        6DC59243D0F730F00CDDA0F7312E471CB720603729CAB15B861F1458B816D50C
        075B016DE05EE6763F8F508B19AC02B7020401FDDCFF145BE18DEF45529E3D2E
        61475844102E23E9DDA2B504A26985090316FE5209774229075839BE3D142776
        5A2718B3537C87F41C9D91FDFE46DC0F07F2DA4CD46F627C1F19C0569CAEF91A
        4FFB342DD058702DD6AF078FC0194782F7C08C237335AEBF94B62F8FB3187E0E
        2AF03DB4E2DD7CF43FBB3F8C28472487409A89157251073EF9943E8737CC6688
        47AE561D3E5A8D8A832C453C733DA6A17B90CB3CD15542D88506D744BD3FFB2D
        654B9B0434683BFBBD337D0B02ED638153D8BA4E84F22AFD908DD08C2699FAF6
        1302FB78BF9A80B0E0F68056DA663E0FB638017CE745E9EA6F5910CF17DEE4F0
        2873974770E33E56B1707D38BD95B14CBF54B3BEAC13F4612A827BA0760ECA61
        B489A4C3544FE872AD608D3EF80A33D2187079CE01CDF8984793DEF616125FDE
        27E6A2EB76202D292247E08C004452BC9DC545988C9205EFC4433AB369C2D4BE
        1B2C96193064DD2565F7B72DB47BC21B6F836E551272565C37CE9CF222282265
        3DEF0F39847F56BBF4A45ED00F2896AE80426C95DE49124A2F874215AA73281C
        7E5B4CE692D5E7326CB9FC4BB264D706739E3ED5ED59209C41ADE66AA00AED6F
        26136C66CA3C2C14187732DB915D7E3CD55A1DED36CA98767017731C005B7843
        5400AFB2CBEDECA174B3D8017C1796CCE16716C02287EDD80AE823D43CB60885
        C5DC430668273C17E94BEC0AB34AB36D29E184801C41362AE22F7BE0B8F47A00
        4A420EB0F63DAD59756F6042FA081135015848BC8F07922C196E83A405BDDBE2
        E76B1E5E2052E6573495F74BB5518BC066CEB318B2260A313E5CBBFF9D737C68
        45CB07813D5BE0AD0B570EBB895DDDF46DA844B8F95D78C365EC699334444F61
        A20A14E86DB11BB3A528E721F298E5B41ACD4980306B78E61E9B810991E7BD49
        8ED0529D9CFD1A71F37D409150D846564850CE942C04A6E8EB1442A264CD53A8
        D88245D296178C10E764192EAB1B945DEE896D2764735181DD9C377A11CFFD56
        84590F39C073FA6DCAAE50C017727A831D6BBBEE667BFE1506B90E3F14C19850
        AD087598976AE8EC49EF0E05AF9531116F3F927FD24DD94F446039F0049BDD34
        E06368D6E54B8AD36D0172B8988B25716CB999BC2112CF49D078A103259BC725
        CCB0198F2B0591C35BBF0F6D0B5E969184710E45D374E1C0C1F25927739BBEC8
        6E5F037F09678F65A4DD55FA278658478116A81C8CE1A90CCAA0D00E3C22BCF3
        3DACC293C52C07873AC0A434DE21FD2A3B817783BBD490FDAC80ADB8540E87DC
        8F8DA4C9FA0C3D22315E5A52405C3CCC65763DA3C1020D6C87777EEB535D65E6
        39D1D2DD25C163DBB486C87815821578B1531BC85F5D7A51B7EA3F28C002E769
        556914BE94C06377A6B49D04CB7EE8E315E789ED128EAF0353E2A03A92B3DE48
        CA0EAB61128EB71B7DEF827A37C1B0173C8E6DB1013C5ED7E315B6682F2D5FEF
        9ECB331ADC63888AB05F99B29AB9ED01D1E231E64D6BF0EEE0F1AE0BBC3BF80C
        93C350AD387D17AA6F6647D8A11B31D8951ACDB139EC1739F2D3959C3D53FD02
        EE1632514A9DE279BC26CDA35DC31956092C66A2A9C0C9D82554885BD915B692
        6E86917E86324D93BEC1C1C925B2EB4B27A9C31F4BBD38E4B06E91C4DC164988
        EF338573493BDEE5500AFD91D1E8093E625951214452B2BCB3448ED4FC22AA78
        46ABF43D92E2255E228398ECF39C6EEC932EE89C53E2BC19D1C05B0DD15C8360
        DEFDDB719ED0F75B4EEF4DC002125E2DD01F0ADE683C5993AE250C443E381BD7
        B3001DA5D1EEB5678499E23D0A348CDC5DC1CB209010A21D1B85EC3F70A4FBCD
        F8D0127D07A25BC5CE0F3E64B57342E8A2487E014F7C13AF644AAE0D28B61E7E
        121261057E52A43ADC529A9FEEC12FEBCABD5ED2F89A2C1046EA3794BF638122
        4BED025C3FECA250125BE5C59902C6F0C1A48621D674B076108357D9155DDF7D
        86517890E97753BC7642E1C2C74245CB99DE74C67453E90DC56B7C086B450551
        B13ECC7510EF0979E02182F34AE8A6A1AA47316519904311C3C931291E721B1E
        62057BB6412132EDA54D340D077249B458A1541E8A263B01E17ADB2992851813
        B3109844361ECE9024CBD166302A91975C766CCF6AC7772CDB039C84DF26B774
        D0EF32C8AB9B2680EFDE5EDD630FAB4518F1F5622FDB9D0531B567653036DEA1
        E7D9AEEF2535DFA339FA02FCD9AB12FD1C353C8D4F8624E971A63F66A866B86D
        F21C961E0FCC429B4E43298CF8434A38B53B369B740BDEE26DB109153817B836
        F44266D4A16167F687969A4C1047B055D486383D9079954069E5057AABC0B1EF
        AC5FC528AFB393AAC30A73BDE80F2AE6C0635B298C3BB58683D237F94A781633
        FAEACFFF3117C435DC7B04886466C1643FE3E0711C701DB1EE33438ADDF60239
        E26A5F96BC1AF5D92C141A385AD732A48F4DCA020AEBD0C40661AE71E46AF76F
        45856D74F4946A7EAF18C077D7F2FEA2E06DB60E2FB442427B3FF37633AE8C79
        1DB056807117F6EF21C5AEE5B0B48983520D7B40A5FE4E1EA8250FB8DCB2CA8A
        1894C147BF3CA5A98208D2C7893FEF0A8FB2CB8E0244FCFB706A37DB4D3528AC
        3F834F1322546EC8145164DF08330437AD25C996F3A21E15568137B09BD83E66
        2B881CDCD30EEF76F83027BE303730D2C7E15694ED2F00FE80632F09A751D379
        8532D2A88BE166FD9E1C753515EB87C8590FA0923C9050B8CD5323664858FB18
        AE4816AC267659EFDB392D41387F5269602AA7A7227A6F017C08198A938A8FA2
        77C0B4783E0EED0BBA501F8C6664352B8740702CEFC992593EB30F1DA5CB36F2
        AAF96CB415EB2D5994E19B324F1B8262BDFD9A8331CC7E06629E4D1A5CAB67F8
        2856A607D8F91FD3E729973CE17DF0329A874457502C993E4AC6CB63BB2A10A5
        82C80F5F9016B2157A3BBC8038772D99669ED0863BC64F5153F972348EA9EB29
        A68681CB33FD8BEC5CC74CC2810F20823DA72313287A409E50708C576267EF0E
        23196B212720CA64049D44AA9DC6BBC9F8DF89ACE73D6108ED5E66F137A0FBF5
        6BBE54E4741F2A78984FE99332BFB9558DD4AC7538FE2318AF857912C6BC872B
        92DB261E7607762900DF82AD6A2065F91E2087353B605D44DE8584833DE13A8D
        61482DCA2B80AB50997127B16F412B50858FD363E93F01C62CE0547013A3A720
        E068026A14E35CD9F5805D80AD07BFAA57D9D27AF5925672A06F06BF04AC20F1
        6DC44B96A0DC22FCFD19BFAA643B7C0BD1BD313B743AE1318419D31CEB75B002
        2E6242E7DC8558D3BEE1641562D2773BFB109CCEAE7E29FFB098C3322370CF7A
        04B335C7834F44C053996522C97022B886ECE29CD04276DF01FD3AB2F91AF06A
        3E82BF4434AF44D017795E497E5FC3D1A705C5F582738C4D5046CA9CFE82C910
        AE3EE0C85772E4EE837B2379F480E34B044BC8CCAE0F1AA9037C804E497EAE14
        92D207156906FF1C990993E338628F65541582DAF2DE3CB7D05EC3FF735EA1A2
        78197BAEE023C70AEC689BAED3067C64091456F42A7011119BF109F3D281637B
        6314A7C1E7A9FC5D1F34649E76893E41F0256482251445915FF11F8CC96409E9
        15FEDFB599D93C0BE8D8AF797C009907F9E3FC5FE87170B89EE413E97CE072BE
        CF9E07A488E75D22877DDA0027BF1E700FE234F345772376B4ABAEE46CB60ABB
        2DA5AF13DF588E60B6E51B640ADB724F989E7B3D315F069ECFA7977AF00CCADC
        99E01BF90FD13360D7A1B6771E25D364AE7EA1DD1E0CDEA30222B959F1948E46
        E36BA9B6E600779704DF8B83BE0CBCC117A46DC0721301CB005FAFF9066C26E2
        2BD808DBC9C9E7A3B82265D05EAAF93C65EA7AE238A182DB43715C44A014FA28
        9445A5899A7CD73B38F6471C7A8F748F120D4253517A3FA4845DB2F831E22A37
        00A7279066FA0644CB6DCC2C9A634FF6F65620259521B2AB0A577EBD50FA4C19
        BEFAD8B5FD8697D0F9EE4FADFF1F1CE73D5431475140EC76B56E565CBA0CC4FE
        87B4DB0572F4302029095C603BF439B2C08EE04F2C16D974116C4D3F474B0E86
        23E3B1FFE0F6C1EF0F9E370A1CB1D77C37FC175B09F9A1C38F3EB0000000227A
        545874536F667477617265000078012B2F2FD7CBCCCB2E4E4E2C48D5CB2F4A07
        0036D8065869231D5B0000000049454E44AE426082}
      Stretch = True
    end
    object btn5: TcxButton
      Left = 264
      Top = 56
      Width = 75
      Height = 25
      Caption = 'btn5'
      TabOrder = 0
    end
  end
  object dxlytlkndflst1: TdxLayoutLookAndFeelList
    Left = 760
    Top = 112
    object dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2010Silver'
    end
  end
  object qryData: TADOQuery
    Tag = 1
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;Data Source=dasi_' +
      'ntb'
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'p'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = '2013-08-02'
      end
      item
        Name = 'p2'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 255
        Size = 255
        Value = '2013-11-02'
      end
      item
        Name = 'p3'
        DataType = ftString
        Size = 1
        Value = ' '
      end>
    SQL.Strings = (
      'CALL `sp_rekap_penerima_manfaat`(:p,:p2,:p3)')
    Left = 728
    Top = 108
    object FDatadari_perkiraan: TStringField
      DisplayLabel = 'Kode Perkiraan'
      FieldName = 'dari_perkiraan'
      Size = 6
    end
    object FDatanama_perkiraan: TStringField
      DisplayLabel = 'Nama Perkiraan'
      FieldName = 'nama_perkiraan'
      Size = 50
    end
    object bcdfldDatatotal: TBCDField
      DisplayLabel = 'Total'
      FieldName = 'total'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
  end
  object dsMutasi: TDataSource
    DataSet = qryData
    Left = 696
    Top = 104
  end
  object dxcmpntprntr1: TdxComponentPrinter
    CurrentLink = dxgrdrprtlnkGridPrintTransaski
    Version = 0
    Left = 488
    Top = 125
    object dxgrdrprtlnkGridPrintTransaski: TdxGridReportLink
      Active = True
      Component = grid1
      PrinterPage.DMPaper = 9
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
      PrinterPage.PageSize.X = 210000
      PrinterPage.PageSize.Y = 297000
      PrinterPage.ScaleMode = smFit
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportDocument.CreationDate = 41738.642784224540000000
      ShrinkToPageWidth = True
      OptionsFormatting.UseNativeStyles = True
      OptionsOnEveryPage.Footers = False
      OptionsOnEveryPage.Caption = False
      OptionsOnEveryPage.FilterBar = False
      OptionsView.Caption = False
      OptionsView.ExpandButtons = False
      OptionsView.FilterBar = False
      OptionsView.GroupFooters = False
      StyleRepository = cxstylrpstry1
      Styles.BandHeader = cxstyl1
      Styles.Caption = cxstyl2
      Styles.Content = cxstyl3
      Styles.Footer = cxstyl5
      Styles.Header = cxstyl4
      BuiltInReportLink = True
    end
  end
  object cxstylrpstry1: TcxStyleRepository
    PixelsPerInch = 96
    object cxstyl1: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstyl2: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstyl3: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstyl4: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
    object cxstyl5: TcxStyle
      AssignedValues = [svColor, svFont, svTextColor]
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      TextColor = clBlack
    end
  end
  object GridRepcxgrdvwrpstry1: TcxGridViewRepository
    Left = 104
    Top = 181
    object gridKab: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.DataSource = dsKabupaten
      DataController.KeyFieldNames = 'kode_kab'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.Header = False
      object gcolmKabkode_kab: TcxGridDBColumn
        DataBinding.FieldName = 'kode_kab'
        Visible = False
      end
      object gcolmKabnama_kab_kota: TcxGridDBColumn
        Caption = 'Nama Kabupaten'
        DataBinding.FieldName = 'nama_kab_kota'
      end
      object gcolmKabalias: TcxGridDBColumn
        DataBinding.FieldName = 'alias'
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
    Left = 48
    Top = 181
    object FKabupatenkode_kab: TStringField
      FieldName = 'kode_kab'
      Size = 10
    end
    object FKabupatennama_kab_kota: TStringField
      FieldName = 'nama_kab_kota'
      Size = 25
    end
    object FKabupatenalias: TStringField
      FieldName = 'alias'
      FixedChar = True
      Size = 2
    end
  end
  object dsKabupaten: TDataSource
    DataSet = spKabupaten
    Left = 77
    Top = 182
  end
  object scxclxprtLap: TscExcelExport
    DataPipe = dpDataSet
    Dataset = qryData
    StyleColumnWidth = cwDefault
    ColumnWidth = 0
    FontHeader.Charset = DEFAULT_CHARSET
    FontHeader.Color = clWindowText
    FontHeader.Height = 1
    FontHeader.Name = 'MS Sans Serif'
    FontHeader.Style = []
    FontHeader.Alignment = haGeneral
    FontHeader.WrapText = False
    FontHeader.Orientation = 0
    BorderHeader.BackAlternateColor = clBlack
    MergeHeaderCells = True
    FontTitles.Charset = DEFAULT_CHARSET
    FontTitles.Color = clWindowText
    FontTitles.Height = 1
    FontTitles.Name = 'MS Sans Serif'
    FontTitles.Style = []
    FontTitles.Alignment = haGeneral
    FontTitles.WrapText = False
    FontTitles.Orientation = 0
    BorderTitles.BackAlternateColor = clBlack
    AutoFilter = False
    FontData.Charset = DEFAULT_CHARSET
    FontData.Color = clWindowText
    FontData.Height = 1
    FontData.Name = 'MS Sans Serif'
    FontData.Style = []
    FontData.Alignment = haGeneral
    FontData.WrapText = False
    FontData.Orientation = 0
    FontSummary.Charset = DEFAULT_CHARSET
    FontSummary.Color = clWindowText
    FontSummary.Height = 1
    FontSummary.Name = 'MS Sans Serif'
    FontSummary.Style = []
    FontSummary.Alignment = haGeneral
    FontSummary.WrapText = False
    FontSummary.Orientation = 0
    BorderSummary.BackAlternateColor = clBlack
    SummarySelection = ssNone
    SummaryCalculation = scSUM
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clWindowText
    FontFooter.Height = 1
    FontFooter.Name = 'MS Sans Serif'
    FontFooter.Style = []
    FontFooter.Alignment = haGeneral
    FontFooter.WrapText = False
    FontFooter.Orientation = 0
    BorderFooter.BackAlternateColor = clBlack
    MergeFooterCells = True
    FontGroup.Charset = DEFAULT_CHARSET
    FontGroup.Color = clWindowText
    FontGroup.Height = 1
    FontGroup.Name = 'MS Sans Serif'
    FontGroup.Style = []
    FontGroup.Alignment = haGeneral
    FontGroup.WrapText = False
    FontGroup.Orientation = 0
    BorderGroup.BackAlternateColor = clBlack
    GroupOptions.ClearContents = True
    GroupOptions.BorderRange = bsRow
    GroupOptions.IntervalFontSize = 2
    Left = 344
    Top = 205
  end
end
