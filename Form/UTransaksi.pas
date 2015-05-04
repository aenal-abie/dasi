unit UTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, cxCustomData,
  cxDataStorage, DB, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, dxBar, UKoneksi, DBClient, Provider,
  ADODB, cxCurrencyEdit, dxLayoutLookAndFeels, ExtCtrls, UGeneral, Transaksi,
  ActnList, cxDBExtLookupComboBox, cxButtonEdit, SaldoKemitraan, SaldoHarian,
  Donasi,
  SaldoOperasional, cxLookAndFeels, cxStyles, cxFilter, cxData;

type
  TfrmTransaksi = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    eNomorKwitansi: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    eTglKwitansi: TcxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item4: TdxLayoutItem;
    btnTambah: TcxButton;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnBatal: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    qryTransaksi: TADOQuery;
    DSTransaksi: TDataSource;
    DSPTransaksi: TDataSetProvider;
    CDSTransaksi: TClientDataSet;
    qryPerkiraan: TADOQuery;
    qryPerkiraannama_perkiraan: TStringField;
    CDSTransaksiid: TLargeintField;
    CDSTransaksikode_kwitansi: TStringField;
    CDSTransaksisubtotal: TFloatField;
    CDSTransaksinama_perkiraan: TStringField;
    cxGrid1DBTableView1id: TcxGridDBColumn;
    cxGrid1DBTableView1kode_kwitansi: TcxGridDBColumn;
    cxGrid1DBTableView1subtotal: TcxGridDBColumn;
    cxGrid1DBTableView1nama_perkiraan: TcxGridDBColumn;
    cxTotal: TcxCurrencyEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnKencrengan: TcxButton;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxLayoutWebLookAndFeel1: TdxLayoutWebLookAndFeel;
    dxLayoutLookAndFeelList2: TdxLayoutLookAndFeelList;
    dxLayoutOfficeLookAndFeel1: TdxLayoutOfficeLookAndFeel;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxLayoutSkinLookAndFeel1: TdxLayoutSkinLookAndFeel;
    dxLayoutLookAndFeelList3: TdxLayoutLookAndFeelList;
    dsPerkiraan: TDataSource;
    lkpAmil: TcxLookupComboBox;
    dxLayoutControl1Item12: TdxLayoutItem;
    qryDonaturAmil: TADOQuery;
    DSDonaturAmil: TDataSource;
    qrylkpAmil: TADOQuery;
    DSlkpAmil: TDataSource;
    CDSTransaksiketerangan: TStringField;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Action4: TAction;
    lkpPenyimpanan: TcxLookupComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    Action5: TAction;
    qryPenyimpanan: TADOQuery;
    qryPenyimpanannama_tempat: TStringField;
    qryPenyimpanansaldo_awal: TFloatField;
    dsPenyimpanan: TDataSource;
    qryPenyimpanankode_penyimpanan: TSmallintField;
    CDSTransaksilkpnmPerkiraan: TStringField;
    cxGrid1DBTableView1lkpnmPerkiraan: TcxGridDBColumn;
    qryPerkiraanid_perkiraan: TStringField;
    CDSTransaksiid_perkiraan: TStringField;
    cxGrid1DBTableView1id_perkiraan: TcxGridDBColumn;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytsprtrtmLayoutControl1SeparatorItem2: TdxLayoutSeparatorItem;
    qryDonasi: TADOQuery;
    cxgrdvwrpstryDonatur: TcxGridViewRepository;
    gridDonatur: TcxGridDBTableView;
    gcolmDonaturkode_donatur: TcxGridDBColumn;
    gcolmDonaturnama_lengkap: TcxGridDBColumn;
    gcolmDonaturkode_amil: TcxGridDBColumn;
    fieldPerkiraannama_kel: TStringField;
    fltfldPerkiraanalokasi_amil: TFloatField;
    spPenerimaan: TADOStoredProc;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridPenerimaan: TcxGridDBTableView;
    gcolmPenerimaanid_perkiraan: TcxGridDBColumn;
    gcolmPenerimaannama_perkiraan: TcxGridDBColumn;
    ds1: TDataSource;
    gcolmPenerimaanAlokasiAmil: TcxGridDBColumn;
    FCDSTransaksialokasi_amil: TFloatField;
    gcolmGrid1DBTableView1AlokasiAmil: TcxGridDBColumn;
    gcolmGrid1DBTableView1Alokasi: TcxGridDBColumn;
    gcolmGrid1DBTableView1Penyaluran: TcxGridDBColumn;
    FCDSTransaksijumlah_alokasi: TFloatField;
    FCDSTransaksipenyaluran: TFloatField;
    eCrSaldoAwal: TcxCurrencyEdit;
    lblSaldoAwal: TdxLayoutItem;
    eCrTambah: TcxCurrencyEdit;
    lblTambahNilai: TdxLayoutItem;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    eCrSaldoAkhir: TcxCurrencyEdit;
    lblSaldoAlhir: TdxLayoutItem;
    batasMitra: TdxLayoutSeparatorItem;
    eDonatur: TcxButtonEdit;
    dxlytmLayoutControl1Item5: TdxLayoutItem;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    FCDSTransaksijumlah: TSmallintField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure CDSTransaksiid_perkiraanChange(Sender: TField);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eTglKwitansiKeyPress(Sender: TObject; var Key: Char);
    procedure eNomorKwitansiKeyPress(Sender: TObject; var Key: Char);
    procedure lkpDonaturKeyPress(Sender: TObject; var Key: Char);
    procedure lkpAmilKeyPress(Sender: TObject; var Key: Char);
    procedure btnKencrenganClick(Sender: TObject);
    procedure lkpPenyimpananKeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure CDSTransaksisubtotalChange(Sender: TField);
    procedure cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure CDSTransaksisubtotalSetText(Sender: TField;
      const Text: string);
    procedure cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
  private
    { Private declarations }
    FSaldoOperasional: TSaldoOperasional;
    FSaldoHarian: TSaldoHarian;
    FDonasi: TFDonasi;
    noKwitansi: string;
    FSaldoKeitraan: TSaldoKemitraan;
    //tal_sub: Currency;
    FTransaksi: TFTransaksi;
    function Insert_Detail: Boolean;
    function Insert_Kencrengan: Boolean;
    procedure aktif_kemitraan(atur: Boolean; value: Byte);

  public
    { Public declarations }
    periode_lama: string;
    procedure setParameter(pTgl, pNamaDonatur, pNoKwitansi, pKodeAmil,
      pKodeDonatur, pPeriodeLama: string; pPenyimpanan, tag: Integer;
      saldo_kemitraan: Double; pkemitraan: Integer; kode_donatur: string);
  end;

var
  frmTransaksi: TfrmTransaksi;

implementation

uses UKencrengan, UVariabel, UFindDonatur, ULog;

{$R *.dfm}

procedure TfrmTransaksi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTransaksi.FormCreate(Sender: TObject);
begin
  FTransaksi := TFTransaksi.Create(Self);
  FSaldoKeitraan := TSaldoKemitraan.Create(self);
  FSaldoOperasional := TSaldoOperasional.Create(self);
  FSaldoHarian := TSaldoHarian.Create(self);
  Koneksikan;
  qryTransaksi.Close;
  CDSTransaksi.Open;
  Logika_Button(False);
  lkpPenyimpanan.EditValue := '1';
  //  CDSTransaksi.Open;
  aktif_kemitraan(False, 0);
  FDonasi := TFDonasi.Create(Self);
end;

procedure TfrmTransaksi.CDSTransaksiid_perkiraanChange(Sender: TField);
begin
  CDSTransaksiketerangan.Value := 'TK';
  FCDSTransaksialokasi_amil.AsFloat :=
    spPenerimaan.fieldbyname('alokasi_amil').AsFloat;
  CDSTransaksisubtotalChange(Sender);
end;

procedure TfrmTransaksi.btnTambahClick(Sender: TObject);
begin
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else
  begin
    Logika_Button(True);
    Self.Tag := 1;
    //cbbDonatur.EditValue := '';
    eDonatur.Hint := '';
    eDonatur.Text := '';
    eNomorKwitansi.SetFocus;
    lkpPenyimpanan.EditValue := FPPenyimpanan;
    FTransaksi.total := 0;
    eCrTambah.Tag := 0;
  end;
end;

procedure TfrmTransaksi.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  eNomorKwitansi.SetFocus;
  Tag := 0;
  aktif_kemitraan(False, 0);
end;

procedure TfrmTransaksi.btnSimpanClick(Sender: TObject);
var
  msg: string;
  hdr: string;
begin
  if (cek_kosong(1)) then
  begin
    if not CDSTransaksi.IsEmpty then
    begin
      try
        FTransaksi.Mulai_Transaksi;
        with FTransaksi do
        begin
          kode_kwitansi := eNomorKwitansi.Text;
          tanggal := FormatDateTime('yyyy-mm-dd hh:mm', eTglKwitansi.Date);
          kode_amil := lkpAmil.EditValue;
          kode_donatur := eDonatur.Hint;
          periode := FPPeriode;
          kode_penyimpanan := lkpPenyimpanan.EditValue;
          {if (eCrTambah.Tag > 0) then
            total := cxTotal.Value + eCrTambah.Value
          else      }
          total := cxTotal.Value;
          saldo_kemitraan := eCrTambah.Value;
          msg := 'ditambah.';
          hdr := 'Tambah Data';
          begin
            if (Self.Tag = 2) then
            begin
              Delete;
              msg := 'diubah.';
              hdr := 'Ubah Data';
            end;
            if Insert then
            begin
              //FSaldoKeitraan.SaldoAkhir := eCrSaldoAkhir.Value;
              //tal := total_sub;
              if Insert_Detail then
              begin
                MessageBox(Handle, PChar('Data berhasil ' + msg), PChar(hdr),
                  MB_ICONINFORMATION + MB_OK);
                Logika_Button(False);
              end
              else
                MessageBox(Handle, PChar('Data gagal ' + msg), PChar(hdr),
                  MB_ICONWARNING + MB_OK);
            end;
          end;
        end;
        FTransaksi.Selesai_Transaksi;
      except on E: Exception do
        begin
          FTransaksi.Batalkan_Transaksi;
          //raise Exception.Create(E.Message);
          FLog.Pesan := E.Message;
          FLog.SimpanPesan;
          MessageBox(Handle, pchar('Kesalahan Pada :' + #13 + E.message),
            'Error', MB_ICONERROR + MB_OK);
        end;
      end;
      aktif_kemitraan(False, 0);
    end;
  end;
end;

procedure TfrmTransaksi.FormShow(Sender: TObject);
begin
  eNomorKwitansi.SetFocus;
  aktif_kemitraan(False, 0);
end;

function TfrmTransaksi.Insert_Detail: Boolean;
var
  FDetailTransaksi: TFDetailTransaksi;
  TambahDonasi: Boolean;
begin
  FDonasi.Donatur := eDonatur.Hint;
  TambahDonasi := FDonasi.AdaDonasi;
  Result := False;
  FDetailTransaksi := nil;
  FDetailTransaksi := TFDetailTransaksi.Create(Self);
  with FDetailTransaksi do
  begin
    with CDSTransaksi do
    begin
      //total_sub := 0;
      First;
      while not Eof do
      begin
        if (frmKencrengan <> nil) then
        begin
          if CDSTransaksiketerangan.Value = 'K' then
          begin
            Insert_Kencrengan;
            frmKencrengan.Release;
          end;
        end;
        {if(eCrTambah.Tag=0) then
          Kemitraan:=0 else}
        Kemitraan := eCrTambah.Value;
        kode_kwitansi := eNomorKwitansi.Text;
        id_perkiraan := CDSTransaksiid_perkiraan.Value;
        subtotal := CDSTransaksisubtotal.Value;
        keterangan := CDSTransaksiketerangan.Value;
        Jumlah_Kencrengan := FCDSTransaksijumlah.Value;
        Operasional := FCDSTransaksijumlah_alokasi.Value;
        Penyaluran := FCDSTransaksipenyaluran.AsCurrency;
        FDetailTransaksi.Insert;
        // cek donasi
        if (TambahDonasi = False) then
        begin
          FDonasi.id_perkiraan := CDSTransaksiid_perkiraan.Value;
          FDonasi.Jumlah := CDSTransaksisubtotal.Value;
          FDonasi.Status := 'Rutin';
          FDonasi.Insert;
        end;
        CDSTransaksi.Next;
      end;
    end;
    Result := True;
    if (eCrTambah.Tag > 0) then
    begin
      kode_kwitansi := eNomorKwitansi.Text;
      id_perkiraan := FPKemitraan;
      subtotal := eCrTambah.Value;
      keterangan := 'K';
      Jumlah_Kencrengan := 0;
      Operasional := 0;
      Penyaluran := eCrTambah.Value;
      FDetailTransaksi.Insert;
    end;
  end;

  FDetailTransaksi.Free;
end;

procedure TfrmTransaksi.eTglKwitansiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    eNomorKwitansi.SetFocus;
  end;
end;

procedure TfrmTransaksi.eNomorKwitansiKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    eDonatur.SetFocus;
  end;
end;

procedure TfrmTransaksi.lkpDonaturKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    lkpAmil.SetFocus;
  end;
end;

procedure TfrmTransaksi.lkpAmilKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    lkpPenyimpanan.SetFocus;
  end;
end;

procedure TfrmTransaksi.btnKencrenganClick(Sender: TObject);
begin
  //  ShowMessage(IntToStr(Self.Tag));
  if not CDSTransaksi.IsEmpty then
  begin
    if not Assigned(Application.FindComponent('frmKencrengan')) then
    begin
      frmKencrengan := TfrmKencrengan.Create(Application);
      frmKencrengan.FormStyle := fsStayOnTop;
      frmKencrengan.Show;
    end;
    if (Self.Tag = 2) then
      frmKencrengan.setKencrengan(noKwitansi,
        CDSTransaksi.fieldbyname('jumlah').AsInteger);
    frmKencrengan.Show;
    frmKencrengan.BringToFront;
  end
  else
    MessageBox(Handle, PChar('Masukkan jenis penerimaan terlebih dahulu!'),
      PChar('Warning'), MB_ICONWARNING + MB_OK);
end;

function TfrmTransaksi.Insert_Kencrengan: Boolean;
var
  FKencrengan: TFKencrengan;
begin
  Result := False;
  FKencrengan := nil;
  FKencrengan := TFKencrengan.Create(Self);
  with FKencrengan do
  begin
    with frmKencrengan do
    begin
      cdsKencrengan.First;
      while not cdsKencrengan.Eof do
      begin
        if cdsKencrenganpilih.AsBoolean = true then
        begin
          kode_kwitansi := eNomorKwitansi.Text;
          kode_nominal := cdsKencrengankode_nominal.Value;
          qty := cdsKencrenganqty.Value;
          jumlah := cdsKencrengancalcJml.Value;
          Insert;
        end;
        cdsKencrengan.Next;
      end;
    end;
  end;
  Result := True;
  FKencrengan.Free;
end;

procedure TfrmTransaksi.lkpPenyimpananKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    key := #0;
    cxGrid1.SetFocus;
  end;
end;

procedure TfrmTransaksi.setParameter(pTgl, pNamaDonatur, pNoKwitansi,
  pKodeAmil, pKodeDonatur, pPeriodeLama: string; pPenyimpanan, tag: Integer;
  saldo_kemitraan: Double; pkemitraan: Integer; kode_donatur: string);
var
  AdoQry: TADOQuery;
begin
  Self.Tag := tag;
  periode_lama := pPeriodeLama;
  noKwitansi := pNoKwitansi;
  Logika_Button(True);
  eTglKwitansi.Date := StrToDateTime(pTgl);
  eNomorKwitansi.Text := pNoKwitansi;
  eDonatur.Hint := pKodeDonatur;
  eDonatur.Text := pNamaDonatur;
  eDonatur.Hint := kode_donatur;
  eCrTambah.Tag := pkemitraan;
  lkpAmil.EditValue := pKodeAmil;
  lkpPenyimpanan.EditValue := pPenyimpanan;
  try
    AdoQry := nil;
    AdoQry := TADOQuery.Create(Self);
    AdoQry.Connection := ADOKoneksi;
    FTransaksi.detailKwitansi(AdoQry, pNoKwitansi);
    with AdoQry do
    begin
      First;
      while not Eof do
      begin
        if (AdoQry.FieldValues['id_perkiraan'] <> FPKemitraan) then
        begin
          CDSTransaksi.Append;
          CDSTransaksiid_perkiraan.Value := AdoQry.FieldValues['id_perkiraan'];
          CDSTransaksisubtotal.Value := AdoQry.FieldValues['subtotal'];
          CDSTransaksiketerangan.Value := AdoQry.FieldValues['keterangan'];
          FCDSTransaksijumlah.Value := AdoQry.FieldValues['jumlah'];
          CDSTransaksi.Post;
        end;
        AdoQry.Next;
      end;
    end;
  finally
    AdoQry.Free;
  end;
  if (pkemitraan > 0) then
  begin
    aktif_kemitraan(True, 0);
    FSaldoKeitraan.KodeDonatur := eDonatur.Hint;
    eCrSaldoAwal.Value := FSaldoKeitraan.SaldoAwal - saldo_kemitraan;
    eCrTambah.Value := saldo_kemitraan;
    eCrTambah.Tag := pkemitraan;
    eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTambah.Value;
    if not CDSTransaksi.IsEmpty then
    begin
      if not Assigned(Application.FindComponent('frmKencrengan')) then
      begin
        frmKencrengan := TfrmKencrengan.Create(Application);
      end;
      if (Self.Tag = 2) then
        frmKencrengan.setKencrengan(noKwitansi,
          CDSTransaksi.fieldbyname('jumlah').AsInteger);
    end;
  end;
end;

procedure
  TfrmTransaksi.cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  cxTotal.EditValue := AValue;
  if (eCrTambah.Tag > 0) and (AValue <> Null) then
  begin
    //    eCrTambah.Value := ((eCrTambah.tag / 100) * AValue);
      //  eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTambah.Value;
    cxTotal.EditValue := AValue + eCrTambah.Value;
  end;
end;

procedure TfrmTransaksi.CDSTransaksisubtotalChange(Sender: TField);
begin
  //  if(eCrTambah.Tag>0) then
    //  CDSTransaksi.FieldByName('subtotal').AsFloat := StrToInt(Text)*((100-eCrTambah.Tag)/100);

  if (eCrTambah.Tag > 0) then
  begin
    CDSTransaksi.FieldByName('jumlah_alokasi').AsFloat := (
      CDSTransaksi.FieldByName('alokasi_amil').AsFloat / 100 *
      CDSTransaksi.FieldByName('subtotal').AsFloat);
    CDSTransaksi.FieldByName('penyaluran').AsFloat :=
      CDSTransaksi.FieldByName('subtotal').AsFloat - (
      CDSTransaksi.FieldByName('alokasi_amil').AsFloat / 100 *
      CDSTransaksi.FieldByName('subtotal').AsFloat);
  end
  else
  begin
    CDSTransaksi.FieldByName('jumlah_alokasi').AsFloat := (
      CDSTransaksi.FieldByName('alokasi_amil').AsFloat *
      CDSTransaksi.FieldByName('subtotal').AsFloat) / 100;
    CDSTransaksi.FieldByName('penyaluran').AsFloat :=
      CDSTransaksi.FieldByName('subtotal').AsFloat - (
      CDSTransaksi.FieldByName('alokasi_amil').AsFloat *
      CDSTransaksi.FieldByName('subtotal').AsFloat) / 100;
  end;
end;

procedure
  TfrmTransaksi.cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := 'Total Ahir ';
end;

procedure TfrmTransaksi.eDonaturPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  if (Self.tag = 1) or (Self.tag = 2) then
  begin
    Application.CreateForm(TfrmFindDonatur, frmFindDonatur);
    with frmFindDonatur do
    begin
      if (ShowModal = mrOk) then
      begin
        eDonatur.EditValue :=
          gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
        eDonatur.Hint := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
        lkpAmil.EditValue := gcolmDonaturkode_amil.DataBinding.Field.AsString;
        with qryDonasi do
        begin
          Close;
          Parameters[0].Value := eDonatur.Hint;
          Open;
          First;
          CDSTransaksi.Close;
          CDSTransaksi.Open;
          while not Eof do
          begin
            CDSTransaksi.Append;
            CDSTransaksi.FieldByName('id_perkiraan').AsString :=
              FieldByName('id_perkiraan').AsString;
            // Masukan Nilai Nol untuk semua perkiraan transaksi
            CDSTransaksi.FieldByName('subtotal').AsInteger := 0;
            CDSTransaksi.FieldByName('alokasi_amil').AsFloat :=
              FieldByName('alokasi_amil').AsFloat;
            CDSTransaksi.FieldByName('jumlah_alokasi').AsFloat := 0;
            CDSTransaksi.FieldByName('penyaluran').AsFloat := 0;
            CDSTransaksi.FieldByName('jumlah').AsInteger := 0;
            CDSTransaksi.Post;
            qryDonasi.Next;
          end;
        end;
        if (gcolmDonaturKemitraan.DataBinding.Field.AsInteger <> 0) then
          aktif_kemitraan(True,
            gcolmDonaturKemitraan.DataBinding.Field.AsInteger)
        else
          aktif_kemitraan(False, 0);
      end;
    end;
  end;
  FreeAndNil(frmFindDonatur);
end;

procedure TfrmTransaksi.aktif_kemitraan(atur: Boolean; value: Byte);
begin
  eCrSaldoAwal.Properties.ReadOnly := True;
  eCrTambah.Properties.ReadOnly := not atur;
  eCrSaldoAkhir.Properties.ReadOnly := True;
  lblSaldoAwal.Visible := atur;
  lblTambahNilai.Visible := atur;
  lblSaldoAlhir.Visible := atur;
  eCrSaldoAwal.Visible := atur;
  eCrSaldoAkhir.Visible := atur;
  eCrTambah.Visible := atur;
  batasMitra.Visible := atur;
  eCrTambah.Tag := 0;
  if (value <> 0) then
  begin
    FSaldoKeitraan.KodeDonatur := eDonatur.Hint;
    eCrSaldoAwal.EditValue := FSaldoKeitraan.SaldoAwal;
    eCrTambah.Value := ((value / 100) * cxTotal.EditValue);
    eCrTambah.Tag := value;
    eCrSaldoAkhir.Value := eCrSaldoAwal.Value + eCrTambah.Value;
  end;
end;

procedure TfrmTransaksi.CDSTransaksisubtotalSetText(Sender: TField;
  const Text: string);
begin
  //if(eCrTambah.Tag>0) then
  //CDSTransaksi.FieldByName('subtotal').AsFloat := StrToInt(Text)*((100-eCrTambah.Tag)/100);
  CDSTransaksi.FieldByName('subtotal').AsString := Text;
  CDSTransaksi.Post;
end;

procedure
  TfrmTransaksi.cxGrid1DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems3GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (AValue > 0) then
    FTransaksi.total := AValue;
end;

end.

