unit UPengeluaranV2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, Menus, 
  cxCustomData, cxDataStorage, DB, cxDBData,
  dxLayoutcxEditAdapters, dxLayoutControl, dxLayoutLookAndFeels,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, cxButtons, cxMemo,
  cxCurrencyEdit, cxDropDownEdit, 
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
  SaldoOperasional, cxSpinEdit, cxCalc, cxButtonEdit, cxLookAndFeels,
  cxStyles, cxFilter, cxData;

type
  TfrmPenyaluranV2 = class(TFGeneral)
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
    gcolmPengeluaranpenerimaa_manfaat: TcxGridDBColumn;
    spKodebaru: TADOStoredProc;
    fieldKodebaru: TStringField;
    eCrTotal: TcxCurrencyEdit;
    dxlytmLayoutControl1Item6: TdxLayoutItem;
    qryUpdate: TADOQuery;
    cxgrdvwrpstryKab: TcxGridViewRepository;
    spKabupaten: TADOStoredProc;
    dsKabupaten: TDataSource;
    gridKabupaten: TcxGridDBTableView;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    fieldPengeluarannama_perkiraan: TStringField;
    gcolmPengeluaranPerkiraan: TcxGridDBColumn;
    lblLayoutControl1Item1: TdxLayoutItem;
    cbxCetak: TcxCheckBox;
    hjrhCetak: THijriah;
    fieldPengeluaranid_perkiraan: TStringField;
    fieldPengeluarannama_perkiraan1: TStringField;
    fieldPengeluarannama_kel: TStringField;
    intgrfldPengeluarankode_kel: TIntegerField;
    gcolmPengeluaranKel: TcxGridDBColumn;
    fieldPenerimaanid_perkiraan: TStringField;
    fieldPenerimaannama_perkiraan: TStringField;
    fieldPenerimaannama_kel: TStringField;
    FPenerimaanalokasi_amil: TFloatField;
    FPengeluaranid_perkiraan: TStringField;
    FPengeluarankd_kel: TSmallintField;
    fieldPengeluarans_dana: TStringField;
    gcolmPengeluaransdana: TcxGridDBColumn;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    speBaris: TcxSpinEdit;
    LCILayoutControl1Item1: TdxLayoutItem;
    intgrfldPengeluaranpenerimaa_manfaat: TIntegerField;
    FPengeluaransaldo: TFloatField;
    gcolmPengeluaranSaldo: TcxGridDBColumn;
    fieldPengeluaranwilayah_penyaluran: TStringField;
    gcolmPengeluaranPenyaluran: TcxGridDBColumn;
    btn1: TcxButton;
    LCILayoutControl1Item2: TdxLayoutItem;
    cbxsaldo: TcxCheckBox;
    LCILayoutControl1Item3: TdxLayoutItem;
    cbxmitra: TcxCheckBox;
    LCILayoutControl1Item4: TdxLayoutItem;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    fieldPengeluarankode_donatur: TStringField;
    gcolmPengeluaranMitra: TcxGridDBColumn;
    fieldPengeluarannama_mitra: TStringField;
    fieldPenerimaansingkatan: TStringField;
    lrgntfldUpdateid: TLargeintField;
    fieldUpdatekode_pengeluaran: TStringField;
    fieldUpdateid_perkiraan: TStringField;
    fieldUpdatedari_perkiraan: TStringField;
    intgrfldUpdatepenerima_manfaat: TIntegerField;
    FUpdatesub_total: TFloatField;
    fieldUpdateketerangan: TStringField;
    fieldUpdatekode_kab: TStringField;
    fieldUpdatekode_donatur: TStringField;
    fieldUpdatenama_lengkap: TStringField;
    FPengeluaransaldo_update: TFloatField;
    gcolmPengeluaransBelum: TcxGridDBColumn;
    cbxSBelum: TcxCheckBox;
    LCILayoutControl1Item5: TdxLayoutItem;
    FPenerimaankd_kel: TSmallintField;
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
    procedure speBarisPropertiesChange(Sender: TObject);
    procedure fieldPengeluarans_danaSetText(Sender: TField;
      const Text: string);
    procedure fieldPengeluarans_danaChange(Sender: TField);
    procedure btn1Click(Sender: TObject);
    procedure cbxmitraPropertiesEditValueChanged(Sender: TObject);
    procedure cbxsaldoPropertiesEditValueChanged(Sender: TObject);
    procedure gcolmPengeluaranMitraPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cbx1PropertiesEditValueChanged(Sender: TObject);
    procedure cdsPengeluaranBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
    cek_operasional_yes:Boolean;
    FPerkiraanPengeluaran: string;
    FsaldoHarian: TSaldoHarian;
    FsaldoOperasional: TSaldoOperasional;
    Fid_Perkiraan: TStringList;
    Fsaldo: TStringList;
    procedure SimpanDetail;
    procedure getKodeBaru;
    procedure cetak_nota();
    //function hitung_operasional: Double;
    {melakukan pengecekan terhadap dana yang akan dipaki untuk pengeluaran
    cukup atau tidak dengan total seluruhnya}
    function cek_jumlah_dana: Boolean;
    {apakah dana operasional dan penyaluran operasional sesuai}
    function cek_operasional: Boolean;
    {menyimpan jenis penyaluran}
  public
    { Public declarations }
  end;

var
  frmPenyaluranV2: TfrmPenyaluranV2;

implementation

uses
  UVariabel, UMNotaPengeluaran, ULog, UFindDonatur;

{$R *.dfm}

procedure TfrmPenyaluranV2.btnTambahClick(Sender: TObject);
var
  loop: Integer;
begin
  //FPerkiraanPengeluaran := '';
  cek_operasional_yes:=True;
  FPengeluaran.Tag := 0;
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else
  begin
    Logika_Button(True);
    //cbbPenerimaan.SetFocus;
    cdsPengeluaran.Open;
    speBaris.Value := 2;
    loop := 0;
    while loop <= 2 do
    begin
      cdsPengeluaran.Append;
      cdsPengeluaran.Post;
      loop := loop + 1;
    end;
    cdsPengeluaran.First;
    DtTanggal.Date := Date;
    getKodeBaru;
    Tag := 1;

  end;
end;

procedure TfrmPenyaluranV2.FormCreate(Sender: TObject);
begin
  if FPengeluaran = nil then
    FPengeluaran := TFPengeluaran.Create(Application);
  if FDetailPengeluaran = nil then
    FDetailPengeluaran := TFDetailPengeluaran.Create(Application);
  Logika_Button(False);
  FsaldoHarian := TSaldoHarian.Create(nil);
  FsaldoOperasional := TSaldoOperasional.Create(nil);
end;

procedure TfrmPenyaluranV2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure
  TfrmPenyaluranV2.gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems1GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  AText := 'Total Akhir';
end;

procedure
  TfrmPenyaluranV2.gridPengeluaranTcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
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

procedure TfrmPenyaluranV2.getKodeBaru;
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

procedure TfrmPenyaluranV2.crncyfldcds1jumlahChange(Sender: TField);
begin
  //if(frmPenyaluran.Tag=1)then
  //cdsPengeluaran.Next;
end;

procedure TfrmPenyaluranV2.btnSimpanClick(Sender: TObject);
{var
  jumlah_operasional: Double; }
begin
  if (cek_jumlah_dana = false) then
    Exit
  else
  begin
    with FPengeluaran do
    begin
      cdsPengeluaran.First;
      {mengecek apakah ada inputan yang kosng dan data di cds pengeluaran <>0}
      if (cek_kosong(1) = True) and
        (cdsPengeluaran.FieldByName('id_perkiraan').AsString <> '') and
        (fieldPengeluarans_dana.AsString <> '') then
      begin
        kode_pengeluaran := eKode.Text;
        tanggal := DtTanggal.Date;
        total := eCrTotal.Value;
        id_user := 1;
        //if (Self.Tag = 1) then
        //begin
        try
          FPengeluaran.Mulai_Transaksi;
          if (FPengeluaran.Tag = 2) then
          begin
            FPengeluaran.Delete;
          end;
          FPengeluaran.Insert;
          SimpanDetail;
          MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
            MB_ICONINFORMATION + MB_OK);
          cetak_nota;
          Logika_Button(False);
          Koneksikan;
          FPengeluaran.Selesai_Transaksi;
        except on E: Exception do
          begin
            FPengeluaran.Batalkan_Transaksi;
            FLog.Pesan := Sender.ClassName + ': ' + E.Message;
            FLog.SimpanPesan;
            MessageBox(Handle, pchar('Data gagal ditambah' + #13 + e.Message),
              'Tambah Data',
              MB_ICONWARNING
              + MB_OK);
          end;
        end;
        //end;

        {begin
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
        end;}
      end;
    end;
  end;
end;

procedure TfrmPenyaluranV2.DtTanggalPropertiesChange(Sender: TObject);
begin
  getKodeBaru;
end;

procedure TfrmPenyaluranV2.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  FPengeluaran.Tag := 0;
  cdsPengeluaran.Close;
  cdsPengeluaran.Open;
  //FPerkiraanPengeluaran := '';
end;

procedure TfrmPenyaluranV2.FormShow(Sender: TObject);
var
  loop: Byte;
begin
  Self.Tag := 2;
  loop := 1;
  with FPengeluaran do
  begin
    if (FPengeluaran.Tag = 2) then
    begin
      LCILayoutControl1Item5.Visible := true;
      Logika_Button(True);
      eKode.Text := kode_pengeluaran;
      //cbbPenerimaan.EditValue := id_perkiraan;
      //mKeterangan.Text := keterangan;

      eCrTotal.Value := total;
      qryUpdate.Close;
      qryUpdate.Parameters[0].Value := kode_pengeluaran;
      qryUpdate.Open;
      cdsPengeluaran.Open;
      cdsPengeluaran.Delete;
      speBaris.Value := 2;
      while loop <= 2 do
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
        cdsPengeluaran.FieldByName('s_dana').AsString :=
          qryUpdate.fieldbyname('dari_perkiraan').AsString;
        cdsPengeluaran.FieldByName('id_perkiraan').AsString :=
          qryUpdate.fieldbyname('id_perkiraan').AsString;
        cdsPengeluaran.FieldByName('penerimaa_manfaat').AsString :=
          qryUpdate.fieldbyname('penerima_manfaat').AsString;
        cdsPengeluaran.FieldByName('keterangan').AsString :=
          qryUpdate.fieldbyname('keterangan').AsString;
        cdsPengeluaran.FieldByName('jumlah').AsCurrency :=
          qryUpdate.fieldbyname('sub_total').AsCurrency;
        cdsPengeluaran.FieldByName('kode_donatur').AsString :=
          qryUpdate.fieldbyname('kode_donatur').AsString;
        cdsPengeluaran.FieldByName('nama_mitra').AsString :=
          qryUpdate.fieldbyname('nama_lengkap').AsString;
        cdsPengeluaran.FieldByName('saldo_update').AsString :=
          qryUpdate.fieldbyname('sub_total').AsString;
        cdsPengeluaran.Post;
        cdsPengeluaran.Next;
        qryUpdate.Next;
      end;
      cdsPengeluaran.First;
    end;
  end;
  Self.Tag := 0;
  cek_operasional_yes:=False;
end;

procedure TfrmPenyaluranV2.SimpanDetail;
begin
  cdsPengeluaran.First;
  while not cdsPengeluaran.Eof do
  begin
    {cek berapa record yang dari awal yang sudah dinputkan jika nilai
      inputan kode kosng berhenti}
    //ShowMessage(fieldPengeluarans_dana.AsString);
    if (fieldPengeluarans_dana.AsString <> '') then
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
      FDetailPengeluaran.dari_perkiraan := fieldPengeluarans_dana.AsString;
      FDetailPengeluaran.kode_kab :=
        fieldPengeluaranwilayah_penyaluran.AsString;
      FDetailPengeluaran.kode_donatur := fieldPengeluarankode_donatur.AsString;
      FDetailPengeluaran.Insert;
    end
    else
      Exit;
    cdsPengeluaran.Next;
  end;
end;

procedure TfrmPenyaluranV2.intgrfldcds1id_penerimaanChange(Sender: TField);
begin
  {  cdsPengeluaran.FieldByName('nama_perkiraan').AsString :=
      spcbPengeluaran.fieldbyname('nama_perkiraan').AsString;
    cdsPengeluaran.FieldByName('kode_kel').AsString :=
      fieldPengeluarankd_kel.AsString;}
end;

procedure TfrmPenyaluranV2.cetak_nota;
begin
  cdsPengeluaran.First;
  if (cbxCetak.Checked = True) then
  begin
    with DMNotaPengeluaran do
    begin
      DMNotaPengeluaran := TDMNotaPengeluaran.Create(Application);

      pdbplnLap.DataSource := dsPengeluaran;
      prprtLap.Template.FileName := ExtractFilePath(Application.ExeName) +
        'template\voucher.rtm';
      prprtLap.Template.LoadFromFile;
      //prprtLap.Template.FileName

      hjrhCetak.TangalMasehi := DtTanggal.Date;
      //lblLAkun.Caption := cbbPenerimaan.Text;
      lblLTanggal.Caption := hjrhCetak.TanggalHijriah + ' / ' +
        FormatDateTime('DD MMMM YYYY ', DtTanggal.Date);
      //lblLKet.Caption := mKeterangan.Text;
      lblVoucher.Text := FPerkiraanPengeluaran;
      //lblLTotal.Caption := eCrTotal.Text;
      lblLNoNota.Caption := 'No : ' + eKode.Text;
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

procedure TfrmPenyaluranV2.cdsPengeluaranAfterPost(DataSet: TDataSet);
begin
  if (fieldPengeluarans_dana.AsString <> '') and (Self.Tag <> 2) and (cek_operasional_yes=True) then
  begin
    FPerkiraanPengeluaran := fieldPengeluarannama_perkiraan1.AsString;
    if (cek_operasional = False) then
      cek_jumlah_dana;
  end;
  //cek_operasional_yes:=True;
  {if (FsaldoOperasional.Saldo < hitung_operasional) then
    MessageBox(Handle, 'Jumlah Saldo Operasional untuk ' + #13#10 +
      'penerimaan ini  tidak mencukupi untuk pengeluaran ini', 'Perhatian',
      MB_ICONWARNING + MB_OK);}
end;

procedure TfrmPenyaluranV2.cbbPenerimaanPropertiesChange(Sender: TObject);
begin

  //FPengeluaran.id_perkiraan := fieldPenerimaanid_perkiraan.AsString;
  //eCrSaldoOperasional.Value := FPengeluaran.Saldo;
  {if (FPengeluaran.id_perkiraan = FPOperasional) then
    //lblLayoutControl1Item2.CaptionOptions.Text := 'Saldo Operasional'
  else
    //lblLayoutControl1Item2.CaptionOptions.Text := 'Saldo Penyaluran';
   }
end;

procedure TfrmPenyaluranV2.speBarisPropertiesChange(Sender: TObject);
var
  loop: Byte;
begin
  cdsPengeluaran.Close;
  cdsPengeluaran.Open;
  loop := 0;
  while loop <= speBaris.Value do
  begin
    cdsPengeluaran.Append;
    cdsPengeluaran.Post;
    loop := loop + 1;
  end;
  cdsPengeluaran.First;
end;

procedure TfrmPenyaluranV2.fieldPengeluarans_danaSetText(Sender: TField;
  const Text: string);
begin
  //ShowMessage(Text);
  fieldPengeluarans_dana.AsString := Text;
  FPengeluaran.id_perkiraan := Text;
  //fieldPengeluaranid_perkiraan1.Value:=
  //eCrSaldoOperasional.Value := FPengeluaran.Saldo;
  //FPengeluaransaldo.Value := FPengeluaran.Saldo;
  FPengeluaransaldo.Value := FPengeluaran.Saldo;
  //  fieldPengeluarans_dana.AsString;
    //ShowMessage(FloatToStr(FPengeluaran.Saldo));
end;

procedure TfrmPenyaluranV2.fieldPengeluarans_danaChange(Sender: TField);
begin
  FPengeluaran.id_perkiraan := cdsPengeluaran.fieldbyname('s_dana').AsString;
  //fieldPengeluaranid_perkiraan1.Value:=
  //eCrSaldoOperasional.Value := FPengeluaran.Saldo;
  FPengeluaransaldo.Value := FPengeluaran.Saldo;
  crncyfldcds1jumlah.Value := 0;
  //cdsPengeluaran.FieldByName('jumlah').
  fieldPengeluaranwilayah_penyaluran.AsString := FPPenyaluran;
  intgrfldPengeluaranpenerimaa_manfaat.AsInteger := 1;
  if (fieldPenerimaansingkatan.AsString = '') then
    fieldPengeluarannama_perkiraan.AsString :=
      fieldPenerimaannama_perkiraan.AsString
  else
    fieldPengeluarannama_perkiraan.AsString :=
      fieldPenerimaansingkatan.AsString;
end;

procedure TfrmPenyaluranV2.btn1Click(Sender: TObject);
begin
  if (cdsPengeluaran.FieldByName('s_dana').AsString <> '') then
  begin
    cdsPengeluaran.IndexDefs.Clear;
    cdsPengeluaran.IndexDefs.Add('MyIndex', 's_dana', [ixDescending]);
    cdsPengeluaran.IndexName := 'MyIndex';
    cdsPengeluaran.Aggregates.Clear;
    with cdsPengeluaran.Aggregates.Add do
    begin
      AggregateName := 'pengeluaran';
      Expression := 'SUM(jumlah)';
      GroupingLevel := 1;
      IndexName := 'MyIndex';
      Active := True
    end;

    if (FPengeluaransaldo.AsInteger < cdsPengeluaran.Aggregates[0].Value) then
      MessageBox(Handle, pchar('Ma''af saldo perkiraan ini tidak cukup' + #13 +
        'Karena sumber dana saldonya sebesar ' + FormatFloat('###,###0',
        FPengeluaransaldo.AsFloat) + #13
        + 'Total Penyaluran Sebesar ' +
        FormatFloat('###,###0', cdsPengeluaran.Aggregates[0].value)),
        'Saldo Penerimaan',
        MB_ICONWARNING + MB_OK)
    else
      MessageBox(Handle, pchar('Saldo perkiraan ini  cukup' + #13 +
        'Karena sumber dana saldonya sebesar ' + FormatFloat('###,###0',
        FPengeluaransaldo.AsFloat) + #13
        + 'Total Penyaluran Sebesar ' +
        FormatFloat('###,###0', cdsPengeluaran.Aggregates[0].value)),
        'Saldo Penerimaan',
        MB_ICONINFORMATION + MB_OK);

  end;
end;

function TfrmPenyaluranV2.cek_jumlah_dana: Boolean;
begin
  Result := True;
  cdsPengeluaran.First;
  while (not cdsPengeluaran.Eof) do
  begin
    if (cdsPengeluaran.FieldByName('s_dana').AsString <> '') then
    begin
      cdsPengeluaran.IndexDefs.Clear;
      cdsPengeluaran.IndexDefs.Add('MyIndex', 's_dana', [ixDescending]);
      cdsPengeluaran.IndexName := 'MyIndex';
      cdsPengeluaran.Aggregates.Clear;
      with cdsPengeluaran.Aggregates.Add do
      begin
        AggregateName := 'pengeluaran';
        Expression := 'SUM(jumlah)';
        GroupingLevel := 1;
        IndexName := 'MyIndex';
        Active := True
      end;

      if (FPengeluaran.Tag = 2) then
      begin
        with cdsPengeluaran.Aggregates.Add do
        begin
          AggregateName := 'saldo';
          Expression := 'SUM(saldo_update)';
          GroupingLevel := 1;
          IndexName := 'MyIndex';
          Active := True
        end;
      end;
      //ShowMessage(IntToStr(cdsPengeluaran.Aggregates[0].Value));
      if (FPengeluaransaldo.AsInteger < cdsPengeluaran.Aggregates[0].Value) and
        (Self.Tag = 1) then
      begin
        MessageBox(Handle, pchar('Ma''af saldo perkiraan ini tidak cukup' + #13
          +
          'Karena sumber dana saldonya sebesar ' + FormatFloat('###,###0',
          FPengeluaransaldo.AsFloat) + #13
          + 'Total Penyaluran Sebesar ' +
          FormatFloat('###,###0', cdsPengeluaran.Aggregates[0].value)),
          'Saldo Penerimaan',
          MB_ICONWARNING + MB_OK);
        Result := False;
        Exit;
      end
      else if (FPengeluaran.Tag = 2) then
      begin
        if (FPengeluaransaldo.AsInteger + cdsPengeluaran.Aggregates[1].Value
          < cdsPengeluaran.Aggregates[0].Value) then
        begin
          MessageBox(Handle, pchar('Ma''af saldo perkiraan ini tidak cukup' + #13
            + 'Karena sumber dana saldonya sebesar ' + FormatFloat('###,###0',
            FPengeluaransaldo.AsFloat + cdsPengeluaran.Aggregates[1].Value) + #13
            +
            'Total Penyaluran Sebesar ' +
            FormatFloat('###,###0', cdsPengeluaran.Aggregates[0].value)),
            'Saldo Penerimaan', MB_ICONWARNING + MB_OK);
          Result := False;
          Exit;
        end;
      end;
      cdsPengeluaran.Next;
    end
    else
      Exit;
  end;
end;

procedure TfrmPenyaluranV2.cbxmitraPropertiesEditValueChanged(
  Sender: TObject);
begin
  gcolmPengeluaranMitra.Visible := cbxmitra.Checked;
end;

procedure TfrmPenyaluranV2.cbxsaldoPropertiesEditValueChanged(
  Sender: TObject);
begin
  gcolmPengeluaranSaldo.Visible := cbxsaldo.Checked;
end;

procedure TfrmPenyaluranV2.gcolmPengeluaranMitraPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  if (Self.tag = 1) or (FPengeluaran.tag = 2) then
  begin
    Application.CreateForm(TfrmFindDonatur, frmFindDonatur);
    with frmFindDonatur do
    begin
      if (ShowModal = mrOk) then
      begin
        cdsPengeluaran.Edit;
        fieldPengeluarannama_mitra.AsString :=
          gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
        fieldPengeluarankode_donatur.AsString :=
          gcolmDonaturkode_donatur.DataBinding.Field.AsString;
        cdsPengeluaran.Post;
      end;
    end;
  end;
  FreeAndNil(frmFindDonatur);
end;

procedure TfrmPenyaluranV2.cbx1PropertiesEditValueChanged(Sender: TObject);
begin
  gcolmPengeluaransBelum.Visible := cbxSBelum.Checked;
end;

function TfrmPenyaluranV2.cek_operasional: Boolean;
begin
  Result := False;
  if ((fieldPengeluarans_dana.AsString = FPOperasional) and
    (fieldPengeluaranid_perkiraan.AsString <> '') and
    (FPengeluarankd_kel.AsString
    <> FPKOperasional)) then
  begin
    MessageBox(Handle, 'Dana Operasional Harus Dipakai Untuk Operasional !!!' +
      #13#10 + 'Harap Masukan Transaksi Untuk Operasional !!!',
      'Perhatian [Warning]', MB_ICONWARNING + MB_OK);
    //FPengeluaranid_perkiraan.AsString:='';
    cdsPengeluaran.Delete;
    Result := True;
  end
  else if (((FPengeluarankd_kel.AsString = FPKOperasional)
    and (fieldPengeluaranid_perkiraan.AsString <> '') and
    (fieldPengeluarans_dana.AsString
    <> FPOperasional))) then
  begin
    cdsPengeluaran.Delete;
    MessageBox(Handle,
      'Pengeluaran Operasional Harus Berasal Dari Dana Operasional !!!' +
      #13#10 + 'Harap Masukan Dana Untuk Operasional  yang Sesuai !!!',
      'Perhatian [Warning]', MB_ICONWARNING + MB_OK);
    Result := True;
  end;
end;

procedure TfrmPenyaluranV2.cdsPengeluaranBeforePost(DataSet: TDataSet);
begin
  {  if (cdsPengeluaran.Bof) and (fieldPengeluaranid_perkiraan.AsString <> '') then
      FPerkiraanPengeluaran := fieldPengeluaranid_perkiraan.AsString
    else if (FPerkiraanPengeluaran <> fieldPengeluaranid_perkiraan.AsString) then
      cdsPengeluaran.Cancel;
    {
      //  (cek_operasional = False)
      //ShowMessage(fieldPengeluaranid_perkiraan.AsString);
        }
end;

end.

