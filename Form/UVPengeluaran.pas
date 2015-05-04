unit UVPengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxLayoutControl, 
  cxDataStorage, cxEdit, DB, cxDBData, dxLayoutcxEditAdapters,
  cxContainer, cxTextEdit, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Menus,
  cxButtons, ADODB, UGeneral,
  dxLayoutLookAndFeels, cxMaskEdit, cxSpinEdit, cxDropDownEdit, cxCalendar,
  cxDBExtLookupComboBox, cxCurrencyEdit,
  SaldoHarian, Provider, DBClient, UHijriah, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData;

type
  TfrmDataPengeluaran = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    gridDonatur: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    grid: TcxGrid;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    btnCari: TcxButton;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    btnUbah: TcxButton;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    btnHapus: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytcntrl1SeparatorItem2: TdxLayoutSeparatorItem;
    dsDonatur: TDataSource;
    gcolmDonaturkode_donatur: TcxGridDBColumn;
    gcolmDonaturnama_lengkap: TcxGridDBColumn;
    gcolmDonaturnama_laporan: TcxGridDBColumn;
    gcolmDonaturtempat_lahir: TcxGridDBColumn;
    gcolmDonaturtanggal_lahir: TcxGridDBColumn;
    gcolmDonatursuami_istri: TcxGridDBColumn;
    gcolmDonaturalamat_rumah: TcxGridDBColumn;
    gcolmDonaturtlp_rumah: TcxGridDBColumn;
    gcolmDonaturhandphone: TcxGridDBColumn;
    gcolmDonaturkantor: TcxGridDBColumn;
    gcolmDonaturalamat_kantor: TcxGridDBColumn;
    gcolmDonaturtelp_kantor: TcxGridDBColumn;
    gcolmDonaturmulai_bulan: TcxGridDBColumn;
    gcolmDonaturmulai_tahun: TcxGridDBColumn;
    gcolmDonaturcara_bayar: TcxGridDBColumn;
    gcolmDonaturjemput: TcxGridDBColumn;
    gcolmDonatursetiap_tanggal: TcxGridDBColumn;
    gcolmDonaturkode_kab: TcxGridDBColumn;
    gcolmDonaturkode_amil: TcxGridDBColumn;
    gcolmDonaturnama_kab_kota: TcxGridDBColumn;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    spPengeluaran: TADOStoredProc;
    btnRefresh: TcxButton;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    DtAwal: TcxDateEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    DtAkhir: TcxDateEdit;
    dxlytmdxlytcntrl1Item10: TdxLayoutItem;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridPengeluaran: TcxGridDBTableView;
    gcolmPengeluarankode_pengeluaran: TcxGridDBColumn;
    gcolmPengeluarantanggal: TcxGridDBColumn;
    gcolmPengeluarantotal: TcxGridDBColumn;
    gcolmPengeluaranIdPerkiraan: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btn1: TcxButton;
    spCetak: TADOStoredProc;
    cdsCetak: TClientDataSet;
    dtstprvdr1: TDataSetProvider;
    dsCetak: TDataSource;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btn2: TcxButton;
    hjrhCetak: THijriah;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FSaldoHarian: TSaldoHarian;
    procedure cetak_voucher;
  public
    { Public declarations }
  end;

var
  frmDataPengeluaran: TfrmDataPengeluaran;

implementation

uses UControl, Pengeluaran, 
  UDetailPengeluaran, UPengeluaranV2, UMNotaPengeluaran;

{$R *.dfm}

procedure TfrmDataPengeluaran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmDataPengeluaran.btnHapusClick(Sender: TObject);
begin
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else if (FormatDateTime('YYYY-MM-DD',
    gcolmPengeluarantanggal.DataBinding.Field.AsDateTime) <>
    FormatDateTime('YYYY-MM-DD', Date)) then
    MessageBox(Handle, 'Transaksi ini tidak bisa di hapus' + #13 +
      'Karena tidak terjadi pada hari ini', 'Kesalahan',
      MB_ICONWARNING + MB_OK)
  else
  begin
    if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
      then
    begin
      try
        if (FPengeluaran = nil) then
          FPengeluaran := TFPengeluaran.Create(Application);
        {if (FDetailPengeluaran = nil) then
          FDetailPengeluaran := TFDetailPengeluaran.Create(Application); }
        FPengeluaran.kode_pengeluaran :=
          gcolmPengeluarankode_pengeluaran.DataBinding.Field.AsString;
        {FDetailPengeluaran.kode_pengeluaran :=
          gcolmPengeluarankode_pengeluaran.DataBinding.Field.AsString;
        FDetailPengeluaran.Delete;  }
        FPengeluaran.Delete;
        MessageBox(Handle, 'Data berhasil dihapus', 'Hapus Data',
          MB_ICONINFORMATION + MB_OK);
        Koneksikan(spPengeluaran);
      except on E: Exception do
        begin
          FPengeluaran.Batalkan_Transaksi;
          MessageBox(Handle, pchar('Data gagal dihapus' + #13 + e.Message),
            'Hapus Data', MB_ICONERROR + MB_OK);
        end;
      end;
    end;
  end;
end;

procedure TfrmDataPengeluaran.btnUbahClick(Sender: TObject);
begin
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else if (FormatDateTime('YYYY-MM-DD',
    gcolmPengeluarantanggal.DataBinding.Field.AsDateTime) <>
    FormatDateTime('YYYY-MM-DD', Date)) then
    MessageBox(Handle, 'Transaksi ini tidak bisa di ubah' + #13 +
      'Karena tidak terjadi pada hari ini', 'Kesalahan',
      MB_ICONWARNING + MB_OK)
  else
  begin
    if spPengeluaran.RecordCount > 0 then
    begin
      if FPengeluaran = nil then
        FPengeluaran := TFPengeluaran.Create(Application);
      FPengeluaran.Tag := 2;
      with FPengeluaran do
      begin
        kode_pengeluaran :=
          gcolmPengeluarankode_pengeluaran.DataBinding.Field.AsString;
        tanggal := gcolmPengeluarantanggal.DataBinding.Field.AsDateTime;
        total := gcolmPengeluarantotal.DataBinding.Field.AsCurrency;
      end;
      set_button('dde', btnUbah, btnHapus, btnBatal);
      Application.CreateForm(TfrmPenyaluranV2, frmPenyaluranV2);
      frmPenyaluranV2.Show;
    end;
  end;
end;

procedure TfrmDataPengeluaran.FormCreate(Sender: TObject);
begin
  DtAwal.Date := Date;
  DtAkhir.Date := Date;
  spPengeluaran.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    DtAwal.Date);
  spPengeluaran.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
    DtAkhir.Date);
  Koneksikan(spPengeluaran);
  FSaldoHarian := TSaldoHarian.Create(nil);
end;

procedure TfrmDataPengeluaran.FormActivate(Sender: TObject);
begin
  if (FPengeluaran <> nil) then
  begin
    FormCreate(Sender);
    if (FPengeluaran.Tag = 0) then
    begin
      spPengeluaran.Close;
      spPengeluaran.Open;
      set_button('eed', btnUbah, btnHapus, btnBatal);
    end;
  end;
end;

procedure TfrmDataPengeluaran.btnBatalClick(Sender: TObject);
begin
  set_button('eed', btnUbah, btnHapus, btnBatal);
end;

procedure TfrmDataPengeluaran.btnCariClick(Sender: TObject);
begin
  spPengeluaran.Close;
  spPengeluaran.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    DtAwal.Date);
  spPengeluaran.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
    DtAkhir.Date);
  spPengeluaran.Open;

end;

procedure TfrmDataPengeluaran.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(spPengeluaran);
end;

procedure TfrmDataPengeluaran.btn1Click(Sender: TObject);
begin
  if not spPengeluaran.IsEmpty then
  begin
    if not assigned(Application.FindComponent('frmDetailPengeluaran')) then
    begin
      frmDetailPengeluaran := TfrmDetailPengeluaran.Create(Application);
    end;
    frmDetailPengeluaran.LihatDetail(gcolmPengeluarankode_pengeluaran.DataBinding.Field.Value);
    frmDetailPengeluaran.BringToFront;
  end;

end;

procedure TfrmDataPengeluaran.btn2Click(Sender: TObject);
begin
  if (spPengeluaran.RecordCount > 0) then
  begin
    with spCetak do
    begin
      cdsCetak.Close;
      Close;
      Parameters[0].Value :=
        gcolmPengeluarankode_pengeluaran.DataBinding.Field.AsString;
      Open;
      cdsCetak.Open;
      cetak_voucher;
    end;
  end;
end;

procedure TfrmDataPengeluaran.cetak_voucher;
begin
  with DMNotaPengeluaran do
  begin
    DMNotaPengeluaran := TDMNotaPengeluaran.Create(Application);

    pdbplnLap.DataSource := dsCetak;
    prprtLap.Template.FileName := ExtractFilePath(Application.ExeName) +
      'template\voucher.rtm';
    prprtLap.Template.LoadFromFile;
    //prprtLap.Template.FileName

    hjrhCetak.TangalMasehi :=
      gcolmPengeluarantanggal.DataBinding.Field.AsDateTime;
    //lblLAkun.Caption := cbbPenerimaan.Text;
    lblLTanggal.Caption := hjrhCetak.TanggalHijriah + ' / ' +
      FormatDateTime('DD MMMM YYYY ',
        gcolmPengeluarantanggal.DataBinding.Field.AsDateTime);
    //lblLKet.Caption := mKeterangan.Text;
    lblVoucher.Text := spCetak.FieldByName('sumber').AsString;
    //lblLTotal.Caption := '';
    lblLNoNota.Caption := 'No : ' +
      gcolmPengeluarankode_pengeluaran.DataBinding.Field.AsString;
    prprtLap.PrintReport;
  end;
end;

end.

