unit UPengeluaran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, Menus, 
  cxCustomData, cxDataStorage, DB, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutControl, dxLayoutLookAndFeels,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxMemo,
  cxCurrencyEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxTextEdit, cxMaskEdit, cxCalendar, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, pngimage, ExtCtrls, cxDBExtLookupComboBox, ActnList,
  ADODB, Provider, DBClient, UGeneral, Pengeluaran, jpeg, ppPrnabl,
  ppClass, ppCtrls, ppBands, ppCache, ppDB, ppParameter, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppReport, cxCheckBox, UHijriah, SaldoHarian,
  SaldoOperasional, cxLookAndFeels, cxStyles, cxFilter, cxData;

type
  TfrmPenyaluran = class(TFGeneral)
    dxLayoutControl1: TdxLayoutControl;
    btnTambah: TcxButton;
    btnBatal: TcxButton;
    btnSimpan: TcxButton;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    dxLayoutControl1Item6: TdxLayoutItem;
    dxLayoutControl1Item7: TdxLayoutItem;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    grid: TcxGrid;
    gridPengeluaran: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    DtTanggal: TcxDateEdit;
    dxlytmLayoutControl1Item2: TdxLayoutItem;
    eKode: TcxTextEdit;
    dxlytmLayoutControl1Item3: TdxLayoutItem;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    cbbPenerimaan: TcxExtLookupComboBox;
    dxlytmLayoutControl1Item4: TdxLayoutItem;
    mKeterangan: TcxMemo;
    dxlytmLayoutControl1Item5: TdxLayoutItem;
    cxgrdvwrpstry1: TcxGridViewRepository;
    spPenerimaan: TADOStoredProc;
    ds1: TDataSource;
    gridPenerimaan: TcxGridDBTableView;
    cdsPengeluaran: TClientDataSet;
    dtstprvdr1: TDataSetProvider;
    dsPengeluaran: TDataSource;
    spPengeluaran: TADOStoredProc;
    crncyfldcds1jumlah: TCurrencyField;
    strngfldcds1keterangan: TStringField;
    gcolmPengeluaranid_penerimaan: TcxGridDBColumn;
    gcolmPengeluaranjumlah: TcxGridDBColumn;
    gcolmPengeluaranketerangan: TcxGridDBColumn;
    dscbPengeluaran: TDataSource;
    cxgrdvwrpstry2: TcxGridViewRepository;
    gridcbbPengeluaran: TcxGridDBTableView;
    spcbPengeluaran: TADOStoredProc;
    gcolmPengeluaranid_perkiraan: TcxGridDBColumn;
    gcolmPengeluarannama_perkiraan: TcxGridDBColumn;
    gcolmPengeluarannama_kel: TcxGridDBColumn;
    gcolmPenerimaanid_perkiraan: TcxGridDBColumn;
    gcolmPenerimaannama_perkiraan: TcxGridDBColumn;
    gcolmPenerimaannama_kel: TcxGridDBColumn;
    strngfldPengeluarankode_bukti: TStringField;
    gcolmPengeluaranBukti: TcxGridDBColumn;
    spKodebaru: TADOStoredProc;
    fieldKodebaru: TStringField;
    eCrTotal: TcxCurrencyEdit;
    dxlytmLayoutControl1Item6: TdxLayoutItem;
    qryUpdate: TADOQuery;
    cbbKab: TcxExtLookupComboBox;
    dxlytmLayoutControl1Item7: TdxLayoutItem;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    cxgrdvwrpstryKab: TcxGridViewRepository;
    spKabupaten: TADOStoredProc;
    dsKabupaten: TDataSource;
    gridKabupaten: TcxGridDBTableView;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    fieldPengeluarannama_perkiraan: TStringField;
    gcolmPengeluaranColumn1: TcxGridDBColumn;
    lblLayoutControl1Item1: TdxLayoutItem;
    cbxCetak: TcxCheckBox;
    hjrhCetak: THijriah;
    fieldPengeluaranid_perkiraan: TStringField;
    fieldPengeluarannama_perkiraan1: TStringField;
    fieldPengeluarannama_kel: TStringField;
    intgrfldPengeluarankode_kel: TIntegerField;
    gcolmPengeluaranColumn2: TcxGridDBColumn;
    eCrSaldoOperasional: TcxCurrencyEdit;
    lblLayoutControl1Item2: TdxLayoutItem;
    fieldPenerimaanid_perkiraan: TStringField;
    fieldPenerimaannama_perkiraan: TStringField;
    fieldPenerimaannama_kel: TStringField;
    FPenerimaanalokasi_amil: TFloatField;
    fieldPengeluaranid_perkiraan1: TStringField;
    FPengeluarankd_kel: TSmallintField;
    procedure btnTambahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant;
      AIsFooter: Boolean; var AText: string);
    procedure crncyfldcds1jumlahChange(Sender: TField);
    procedure btnSimpanClick(Sender: TObject);
    procedure DtTanggalPropertiesChange(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure intgrfldcds1id_penerimaanChange(Sender: TField);
    procedure cdsPengeluaranAfterPost(DataSet: TDataSet);
    procedure cbbPenerimaanPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    FsaldoHarian: TSaldoHarian;
    FsaldoOperasional: TSaldoOperasional;
    procedure SimpanDetail;
    procedure getKodeBaru;
    procedure cetak_nota();
    //function hitung_operasional: Double;
  public
    { Public declarations }
  end;

var
  frmPenyaluran: TfrmPenyaluran;

implementation

uses
  UVariabel, UMNotaPengeluaran, ULog;

{$R *.dfm}

procedure TfrmPenyaluran.btnTambahClick(Sender: TObject);
var
  loop: Integer;
begin
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else
  begin
    Logika_Button(True);
    cbbPenerimaan.SetFocus;
    cdsPengeluaran.Open;
    loop := 0;
    while loop <= 10 do
    begin
      cdsPengeluaran.Append;
      cdsPengeluaran.Post;
      loop := loop + 1;
    end;
    cdsPengeluaran.First;
    DtTanggal.Date := Date;
    getKodeBaru;
    Tag := 1;
    cbbKab.EditValue := FPPenyaluran;
  end;
end;

procedure TfrmPenyaluran.FormCreate(Sender: TObject);
begin
  if FPengeluaran = nil then
    FPengeluaran := TFPengeluaran.Create(Application);
  if FDetailPengeluaran = nil then
    FDetailPengeluaran := TFDetailPengeluaran.Create(Application);
  Logika_Button(False);
  FsaldoHarian := TSaldoHarian.Create(nil);
  FsaldoOperasional := TSaldoOperasional.Create(nil);
end;

procedure TfrmPenyaluran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure
  TfrmPenyaluran.gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := 'Total Akhir';
end;

procedure
  TfrmPenyaluran.gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  if (AText <> '') then
  begin
    eCrTotal.Value := AValue;
    {if (cbbPenerimaan.EditText<>'') then
    begin
      FsaldoOperasional.id_perkiraan := cbbPenerimaan.EditValue;
      if (FsaldoOperasional.Saldo < AValue) then
        MessageBox(Handle, 'Jumlah Saldo Operasional untuk ' + #13#10 +
          'penerimaan ini  tidak mencukupi untuk pengeluaran ini', 'Perhatian', MB_ICONWARNING
            +
          MB_OK);
    end;           }
  end
  else
    eCrTotal.Value := 0;
end;

procedure TfrmPenyaluran.getKodeBaru;
begin
  spKodebaru.Close;
  spKodebaru.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    DtTanggal.Date);
  spKodebaru.Parameters[1].Value := '1';
  spKodebaru.Open;
  if (fieldKodebaru.Text = '') then
    eKode.Text := FormatDateTime('YYYYMMDD', DtTanggal.Date) + '001' + '001'
  else
    eKode.Text := FormatDateTime('YYYYMMDD', DtTanggal.Date) + '001' +
      FormatFloat('00#', fieldKodebaru.AsInteger + 1);
end;

procedure TfrmPenyaluran.crncyfldcds1jumlahChange(Sender: TField);
begin
  //if(frmPenyaluran.Tag=1)then
  //cdsPengeluaran.Next;
end;

procedure TfrmPenyaluran.btnSimpanClick(Sender: TObject);
{var
  jumlah_operasional: Double; }
begin
  with FPengeluaran do
  begin
    cdsPengeluaran.First;
    {mengecek apakah ada inputan yang kosng dan data di cds pengeluaran <>0}
    if (cek_kosong(1) = True) and
      (cdsPengeluaran.FieldByName('id_perkiraan').AsString <> '') then
    begin
      kode_pengeluaran := eKode.Text;
      tanggal := DtTanggal.Date;
      id_perkiraan := cbbPenerimaan.EditValue;
      total := eCrTotal.Value;
      keterangan := mKeterangan.Text;
      id_user := 1;
      kode_kab := cbbKab.EditValue;
      //dana_operasional := hitung_operasional;
      if (Self.Tag = 1) then
      begin
        try
          FPengeluaran.Mulai_Transaksi;
          FPengeluaran.Insert;
          SimpanDetail;
          cetak_nota;
          MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
            MB_ICONINFORMATION + MB_OK);
          //jumlah_operasional := hitung_operasional;
          {if (jumlah_operasional > 0) then
          begin
            FsaldoOperasional.id_perkiraan := cbbPenerimaan.EditValue;
            FsaldoOperasional.jumlah := -jumlah_operasional;
            FsaldoOperasional.Insert;
          end;}
          Logika_Button(False);
          Koneksikan;
          FPengeluaran.Selesai_Transaksi;
        except on E: Exception do
          begin
            FPengeluaran.Batalkan_Transaksi;
            FLog.Pesan := Sender.ClassName+ ': '+E.Message;
            FLog.SimpanPesan;
            MessageBox(Handle, pchar('Data gagal ditambah' + #13 + e.Message),
              'Tambah Data',
              MB_ICONWARNING
              + MB_OK);
          end;
        end;
      end
      else if (FPengeluaran.Tag = 2) then
      begin
        try
          FPengeluaran.Mulai_Transaksi;
          FPengeluaran.Update;
          FDetailPengeluaran.kode_pengeluaran := eKode.Text;
          FDetailPengeluaran.Delete;
          SimpanDetail;
          MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
            MB_ICONINFORMATION + MB_OK);
          Koneksikan;
          Logika_Button(False);
          FPengeluaran.Tag := 0;
          Close;
          FPengeluaran.Selesai_Transaksi;
        except on E: Exception do
          begin
            FPengeluaran.Batalkan_Transaksi;
            FLog.Pesan := E.Message;
            FLog.SimpanPesan;
            MessageBox(Handle, pchar('Data gagal diubah :' + #13 + E.message),
              'Ubah Data',
              MB_ICONWARNING + MB_OK);
          end;
        end;
      end;
    end;
  end;

end;

procedure TfrmPenyaluran.DtTanggalPropertiesChange(Sender: TObject);
begin
  getKodeBaru;
end;

procedure TfrmPenyaluran.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
end;

procedure TfrmPenyaluran.FormShow(Sender: TObject);
var
  loop: Byte;
begin
  loop := 1;
  with FPengeluaran do
  begin
    if (FPengeluaran.Tag = 2) then
    begin
      Logika_Button(True);
      eKode.Text := kode_pengeluaran;
      cbbPenerimaan.EditValue := id_perkiraan;
      mKeterangan.Text := keterangan;
      cbbKab.EditValue := kode_kab;
      eCrTotal.Value := total;
      qryUpdate.Close;
      qryUpdate.Parameters[0].Value := kode_pengeluaran;
      qryUpdate.Open;
      cdsPengeluaran.Open;
      cdsPengeluaran.Delete;
      while loop <= 15 do
      begin
        cdsPengeluaran.Append;
        cdsPengeluaran.Post;
        loop := loop + 1;
      end;
      qryUpdate.First;
      cdsPengeluaran.First;
      while not qryUpdate.Eof do
      begin
        cdsPengeluaran.Edit;
        cdsPengeluaran.FieldByName('id_perkiraan').AsString :=
          qryUpdate.fieldbyname('id_perkiraan').AsString;
        cdsPengeluaran.FieldByName('penerimaa_manfaat').AsString :=
          qryUpdate.fieldbyname('penerimaa_manfaat').AsString;
        cdsPengeluaran.FieldByName('keterangan').AsString :=
          qryUpdate.fieldbyname('keterangan').AsString;
        cdsPengeluaran.FieldByName('jumlah').AsCurrency :=
          qryUpdate.fieldbyname('sub_total').AsCurrency;
        cdsPengeluaran.Post;
        qryUpdate.Next;

      end;
      cdsPengeluaran.First;
    end;
  end;
  ;
end;

procedure TfrmPenyaluran.SimpanDetail;
begin
  cdsPengeluaran.First;
  while not cdsPengeluaran.Eof do
  begin
    {cek berapa record yang dari awal yang sudah dinputkan jika nilai
      inputan kode kosng berhenti}
    if (cdsPengeluaran.FieldByname('id_perkiraan').AsString <> '') then
    begin
      FDetailPengeluaran.kode_pengeluaran := eKode.Text;
      FDetailPengeluaran.id_perkiraan :=
        cdsPengeluaran.FieldByname('id_perkiraan').AsString;
      FDetailPengeluaran.penerima_manfaat :=
        cdsPengeluaran.FieldByname('penerimaa_manfaat').AsInteger;
      FDetailPengeluaran.sub_total :=
        cdsPengeluaran.FieldByname('jumlah').AsCurrency;
      FDetailPengeluaran.keterangan :=
        cdsPengeluaran.FieldByname('keterangan').AsString;
      FDetailPengeluaran.Insert;
    end;
    cdsPengeluaran.Next;
  end;
end;

procedure TfrmPenyaluran.intgrfldcds1id_penerimaanChange(Sender: TField);
begin
  {  cdsPengeluaran.FieldByName('nama_perkiraan').AsString :=
      spcbPengeluaran.fieldbyname('nama_perkiraan').AsString;
    cdsPengeluaran.FieldByName('kode_kel').AsString :=
      fieldPengeluarankd_kel.AsString;}
end;

procedure TfrmPenyaluran.cetak_nota;
begin
  if (cbxCetak.Checked = True) then
  begin
    with DMNotaPengeluaran do
    begin
      DMNotaPengeluaran := TDMNotaPengeluaran.Create(Application);
      hjrhCetak.TangalMasehi := DtTanggal.Date;
      lblLTanggal.Caption := hjrhCetak.TanggalHijriah + ' / ' +
        FormatDateTime('DD MMMM YYYY ', DtTanggal.Date);
      //lblLTotal.Caption := eCrTotal.Text;
      //lblLNoNota.Caption := 'No : ' + eKode.Text;
      prprtLap.PrintReport;
    end;
  end;
end;

{function TfrmPenyaluran.hitung_operasional: Double;
var
  i: Byte;
begin
  Result := 0;
  with cdsPengeluaran do
  begin
    First;
    while (intgrfldcds1id_penerimaan.AsString <> '') do
    begin
      if (cdsPengeluaran.FieldByName('kode_kel').AsString = FPOperasional) then
      begin
        Result := Result + cdsPengeluaran.FieldByName('jumlah').AsFloat;
      end;
      Next;
    end;
  end;
end;}

procedure TfrmPenyaluran.cdsPengeluaranAfterPost(DataSet: TDataSet);
begin
  {if (FsaldoOperasional.Saldo < hitung_operasional) then
    MessageBox(Handle, 'Jumlah Saldo Operasional untuk ' + #13#10 +
      'penerimaan ini  tidak mencukupi untuk pengeluaran ini', 'Perhatian',
      MB_ICONWARNING + MB_OK);}
end;

procedure TfrmPenyaluran.cbbPenerimaanPropertiesChange(Sender: TObject);
begin
  FPengeluaran.id_perkiraan := fieldPenerimaanid_perkiraan.AsString;
  eCrSaldoOperasional.Value := FPengeluaran.Saldo;
  if (FPengeluaran.id_perkiraan = FPOperasional) then
    lblLayoutControl1Item2.CaptionOptions.Text := 'Saldo Operasional'
  else
    lblLayoutControl1Item2.CaptionOptions.Text := 'Saldo Penyaluran';

end;

end.

