unit UMutasi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxMemo, cxCurrencyEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  cxTextEdit, cxMaskEdit, cxCalendar, cxClasses, dxBar, Menus, 
  cxDataStorage, DB, cxDBData,
  dxLayoutLookAndFeels, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, UGeneral, ADODB, Mutasi, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, pngimage, ExtCtrls, SaldoHarian, cxSpinEdit,
  cxCheckBox, ppPrnabl, ppClass, ppCtrls, ppBands, ppCache, ppParameter,
  ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, jpeg, Provider,
  DBClient, cxControls, cxLookAndFeels, cxStyles, cxCustomData, cxFilter,
  cxData;

type
  TfrmMutasi = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edTgl: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    lkpSource: TcxLookupComboBox;
    dxLayoutControl1Item2: TdxLayoutItem;
    lkpDestin: TcxLookupComboBox;
    dxLayoutControl1Item3: TdxLayoutItem;
    ceJumlah: TcxCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    memKet: TcxMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnTambah: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnBatal: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnUbah: TcxButton;
    dxLayoutControl1Item9: TdxLayoutItem;
    btnHapus: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qryMutasi: TADOQuery;
    dsMutasi: TDataSource;
    cxGrid1DBTableView1no_mutasi: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_mutasi: TcxGridDBColumn;
    cxGrid1DBTableView1dari: TcxGridDBColumn;
    cxGrid1DBTableView1ke: TcxGridDBColumn;
    cxGrid1DBTableView1jumlah: TcxGridDBColumn;
    cxGrid1DBTableView1keterangan: TcxGridDBColumn;
    qryRekening: TADOQuery;
    dsRekening: TDataSource;
    qryMutasino_mutasi: TLargeintField;
    qryMutasitgl_mutasi: TDateTimeField;
    qryMutasidari: TSmallintField;
    qryMutasike: TSmallintField;
    qryMutasijumlah: TFloatField;
    qryMutasiketerangan: TStringField;
    qryMutasisumber: TStringField;
    qryMutasitujuan: TStringField;
    cxGrid1DBTableView1sumber: TcxGridDBColumn;
    cxGrid1DBTableView1tujuan: TcxGridDBColumn;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn5: TcxButton;
    lblLayoutControl1Item12: TdxLayoutItem;
    spePage: TcxSpinEdit;
    lblLayoutControl1Item13: TdxLayoutItem;
    spePer: TcxSpinEdit;
    dxlytgrpLayoutControl1Group4: TdxLayoutGroup;
    LCILayoutControl1Item12: TdxLayoutItem;
    btnRefresh: TcxButton;
    dxlytgrpLayoutControl1Group5: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    eNoCek: TcxTextEdit;
    LCILayoutControl1Item13: TdxLayoutItem;
    LCILayoutControl1Item14: TdxLayoutItem;
    btn1: TcxButton;
    LCILayoutControl1Item15: TdxLayoutItem;
    cbxCetak: TcxCheckBox;
    FMutasino_cek: TStringField;
    gcolmGrid1DBTableView1no_cek: TcxGridDBColumn;
    pdbpln1: TppDBPipeline;
    prprtNota: TppReport;
    prmtrlst1: TppParameterList;
    phdrbnd1: TppHeaderBand;
    lblL1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    plbl1: TppLabel;
    plbl2: TppLabel;
    plblTerbilang: TppLabel;
    pmg1: TppImage;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl5: TppLabel;
    plbl6: TppLabel;
    plbl7: TppLabel;
    plblDariBank: TppLabel;
    plblNoRekening: TppLabel;
    plblNoCek: TppLabel;
    plblKeperluan: TppLabel;
    plblNominal: TppLabel;
    plbl13: TppLabel;
    plbl14: TppLabel;
    plbl15: TppLabel;
    plbl16: TppLabel;
    plbl17: TppLabel;
    plbl18: TppLabel;
    plbl19: TppLabel;
    plblTanggal: TppLabel;
    plbl21: TppLabel;
    plbl22: TppLabel;
    plbl23: TppLabel;
    FRekeningkode_penyimpanan: TSmallintField;
    FRekeningnama_tempat: TStringField;
    FRekeningsaldo_awal: TFloatField;
    FRekeningakumulasi: TStringField;
    FRekeningno_rekening: TStringField;
    pdbplnLap: TppDBPipeline;
    prprtLap: TppReport;
    prmtrlst2: TppParameterList;
    qryCetak: TADOQuery;
    cdsCetak: TClientDataSet;
    dtstprvdr1: TDataSetProvider;
    dsCetak: TDataSource;
    FCetakketerangan: TStringField;
    FCetakjumlah: TFloatField;
    phdrbnd2: TppHeaderBand;
    pln18: TppLine;
    pln8: TppLine;
    pln12: TppLine;
    plbl8: TppLabel;
    plblVTanggal: TppLabel;
    plblL2: TppLabel;
    plblL5: TppLabel;
    pln9: TppLine;
    pln10: TppLine;
    pln13: TppLine;
    pln14: TppLine;
    plblL4: TppLabel;
    pln19: TppLine;
    plblLNoNota: TppLabel;
    plbl9: TppLabel;
    plblL6: TppLabel;
    lblLSumber: TppDetailBand;
    pln1: TppLine;
    pln2: TppLine;
    pln4: TppLine;
    pln5: TppLine;
    pln7: TppLine;
    pln20: TppLine;
    pdbtxtketerangan: TppDBText;
    pdbtxtjumlah: TppDBText;
    pdbclcjumlah: TppDBCalc;
    pftrbnd2: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    pln3: TppLine;
    pln15: TppLine;
    plblL7: TppLabel;
    pln16: TppLine;
    pln17: TppLine;
    plbl11: TppLabel;
    plbl12: TppLabel;
    plbl20: TppLabel;
    plbl24: TppLabel;
    pln22: TppLine;
    pdbclcjumlah1: TppDBCalc;
    procedure FormCreate(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ceJumlahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spePagePropertiesChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure lkpSourcePropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
    FMutasi: TFMutasi;
    FSaldoHarian: TSaldoHarian;
    procedure buka_ado;
    procedure cetak_nota_simpan;
  public
    { Public declarations }
  end;

var
  frmMutasi: TfrmMutasi;

implementation

uses cxGridDBDataDefinitions, Uterbilang, UVariabel;

{$R *.dfm}

procedure TfrmMutasi.FormCreate(Sender: TObject);
begin
  FMutasi := TFMutasi.Create(Self);
  Koneksikan;
  FSaldoHarian := TSaldoHarian.Create(nil);
  Logika_Button(False);
  spePage.Value := 1;
  spePer.Value := 20;
end;

procedure TfrmMutasi.btnTambahClick(Sender: TObject);
begin
  if (FSaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Transaksi hari ini sudah ditutup !!!' + #13#10 +
      'Harap Masukan Transaksi Pada hari Berikutnya !!!', 'Perhatian [Warning]',
      MB_ICONWARNING + MB_OK)
  else
  begin
    Self.Tag := 1;
    Logika_Button(True);
    spePage.Value := 1;
    spePer.Value := 20;
    lkpSource.Hint := '';
    lkpSource.EditValue := 0;
  end;
end;

procedure TfrmMutasi.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  spePage.Value := 1;
  spePer.Value := 20;
end;

procedure TfrmMutasi.btnUbahClick(Sender: TObject);
begin
  if (FsaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
      'anda tidak bisa mengubah transaski hari ini ',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else if (DateToStr(cxGrid1DBTableView1tgl_mutasi.DataBinding.Field.AsDateTime)
    =
    DateToStr(Date)) then
  begin
    Logika_Button(True);
    Self.Tag := 2;
    edTgl.Date := cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value;
    lkpSource.EditValue :=
      cxGrid1DBTableView1.Columns[7].DataBinding.Field.AsInteger;
    lkpDestin.EditValue :=
      cxGrid1DBTableView1.Columns[8].DataBinding.Field.AsInteger;
    ceJumlah.EditValue :=
      cxGrid1DBTableView1.Columns[4].DataBinding.Field.AsCurrency;
    memKet.Text := cxGrid1DBTableView1.Columns[6].DataBinding.Field.Value;
    eNoCek.Text := cxGrid1DBTableView1.Columns[5].DataBinding.Field.AsString;
    cxGrid1.Hint := cxGrid1DBTableView1.Columns[0].DataBinding.Field.AsString;
    spePage.Value := 1;
    spePer.Value := 20;
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini ' +
      #13#10 +
      'anda tidak dapat merubah transaksi hari ini',
      'Perhatian', MB_ICONWARNING + MB_OK);
end;

procedure TfrmMutasi.btnSimpanClick(Sender: TObject);
begin
  if ((cek_kosong(0))) then
  begin
    if (lkpSource.Text <> lkpDestin.Text) then
    begin
      if (lkpSource.EditValue <> FPPenyimpanan) and (lkpDestin.EditValue <>
        FPPenyimpanan) then
      begin
        MessageBox(Handle,
          'Ma''af Tujuan atau sumber salah satu harus berasal dari Kas',
          'Mutasi Keuangan', MB_ICONWARNING + MB_OK);
        Exit;
      end;
      with FMutasi do
      begin
        tanggal := FormatDateTime('yyyy-mm-dd hh:mm', edTgl.Date);
        dari := lkpSource.EditValue;
        ke := lkpDestin.EditValue;
        jumlah := ceJumlah.EditValue;
        keterangan := memKet.Text;
        no_cek := eNoCek.Text;
        if (Self.Tag = 1) then
        begin
          if Insert then
          begin
            MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
              MB_ICONINFORMATION + MB_OK);
            refresh_AdoQuery(qryMutasi);
            if (cbxCetak.Checked = true) then
              cetak_nota_simpan;
            Logika_Button(False);
          end
          else
            MessageBox(Handle, 'Data gagal ditambah', 'Tambah Data',
              MB_ICONWARNING
              + MB_OK);
        end
        else if (Self.Tag = 2) then
        begin
          no_mutasi := StrToInt(cxGrid1.Hint);
          if Update then
          begin
            MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
              MB_ICONINFORMATION + MB_OK);
            refresh_AdoQuery(qryMutasi);
            Logika_Button(False);
          end
          else
            MessageBox(Handle, 'Data gagal diubah', 'Ubah Data', MB_ICONWARNING
              +
              MB_OK);
        end;
      end;
    end
    else
      MessageBox(Handle, 'Tidak Boleh sama', 'Warning', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TfrmMutasi.btnHapusClick(Sender: TObject);
begin
  if (FsaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
      'anda tidak bisa menghapus transaski hari ini ',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else if (DateToStr(cxGrid1DBTableView1tgl_mutasi.DataBinding.Field.AsDateTime)
    = DateToStr(Date)) then
  begin
    with FMutasi do
    begin
      if (qryMutasi.RecordCount > 0) then
      begin
        no_mutasi :=
          StrToInt(cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value);
        if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
          then
          Delete;
        refresh_AdoQuery(qryMutasi);
      end;
    end;
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini ' +
      #13#10 +
      'anda tidak dapat menghapus transaksi hari ini',
      'Perhatian', MB_ICONWARNING + MB_OK);
end;

procedure TfrmMutasi.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmMutasi.ceJumlahClick(Sender: TObject);
begin
  ceJumlah.SelectAll;
end;

procedure TfrmMutasi.buka_ado;
begin
  spePage.Properties.ReadOnly := False;
  spePer.Properties.ReadOnly := False;
  FMutasi.view_ado(qryMutasi,
    'select m.*, p1.nama_tempat as sumber, p2.nama_tempat as ' +
    ' tujuan from tbl_mutasi m left join tbl_penyimpanan p1 ' +
    ' on m.dari=p1.kode_penyimpanan left join tbl_penyimpanan p2 on ' +
    ' m.ke=p2.kode_penyimpanan   order by m.tgl_mutasi desc limit ' +
    VarToStr((spePage.Value * spePer.Value) -
    spePer.Value) + ',' + VarToStr(spePer.Value) + '');
end;

procedure TfrmMutasi.FormShow(Sender: TObject);
begin
  buka_ado;
end;

procedure TfrmMutasi.spePagePropertiesChange(Sender: TObject);
begin
  buka_ado;
end;

procedure TfrmMutasi.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qryMutasi);
end;

procedure TfrmMutasi.cetak_nota_simpan;
var
  jumlah, ulang: Byte;
begin
  if (cbxCetak.Checked = true) and (lkpDestin.EditValue = FPPenyimpanan) then
  begin
    plblTerbilang.Caption := terbilang(ceJumlah.EditValue) + ' Rupiah';
    plblDariBank.Caption := ':  ' + lkpSource.Text;
    plblNoRekening.Caption := ':  ' + lkpSource.Hint;
    plblNoCek.Caption := ':  ' + eNoCek.Text;
    plblKeperluan.Caption := ':  ' + memKet.Text;
    plblNominal.Caption := ':  ' + FormatFloat('###,###,###', ceJumlah.Value) +
      ',-';
    plblTanggal.Caption := 'Maataram, ' + FormatDateTime('DD MMMM YYYY',
      edTgl.Date);
    prprtNota.PrintReport;
  end
  else if (Tag = 0) then
  begin
    jumlah := qryCetak.RecordCount;
    if (jumlah < 10) then
    begin
      for ulang := 1 to 10 - jumlah do
      begin
        cdsCetak.Append;
        cdsCetak.Post;
      end;
    end;
    prprtLap.Print;
  end;

end;

procedure TfrmMutasi.lkpSourcePropertiesChange(Sender: TObject);
begin
  lkpSource.Hint := qryRekening.FieldByName('no_rekening').AsString;
end;

procedure TfrmMutasi.btn1Click(Sender: TObject);
begin
  if (cxGrid1DBTableView1.Columns[8].DataBinding.Field.AsString = FPPenyimpanan)
    then
  begin
    edTgl.Date := cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value;
    lkpSource.EditValue :=
      cxGrid1DBTableView1.Columns[7].DataBinding.Field.AsInteger;
    lkpDestin.EditValue :=
      cxGrid1DBTableView1.Columns[8].DataBinding.Field.AsInteger;
    ceJumlah.EditValue :=
      cxGrid1DBTableView1.Columns[4].DataBinding.Field.AsCurrency;
    memKet.Text := cxGrid1DBTableView1.Columns[6].DataBinding.Field.Value;
    eNoCek.Text := cxGrid1DBTableView1.Columns[5].DataBinding.Field.AsString;
    cxGrid1.Hint := cxGrid1DBTableView1.Columns[0].DataBinding.Field.AsString;
  end
  else
  begin
    cdsCetak.ReadOnly := False;
    lkpDestin.EditValue := 0;
    cdsCetak.Active := False;
    {ShowMessage(FormatDateTime('YYYY-MM-DD',
      cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value)); }
    qryCetak.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value);
    Koneksikan(qryCetak);
    plblVTanggal.Caption := FormatDateTime('DD MMMM YYYY',
      cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value);
    //ShowMessage(IntToStr(qryCetak.RecordCount));
    cdsCetak.Active := True;
    //qryCetak.Close;
    //ShowMessage(cdsCetak.fieldbyname('keterangan').AsString);
  end;
  cetak_nota_simpan;
end;

end.

