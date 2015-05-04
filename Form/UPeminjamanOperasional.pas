unit UPeminjamanOperasional;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, dxSkinsdxBarPainter, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxMemo, cxCurrencyEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, dxLayoutControl,
  cxTextEdit, cxMaskEdit, cxCalendar, cxClasses, dxBar, Menus, 
  cxDataStorage, DB, cxDBData,
  dxLayoutLookAndFeels, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  StdCtrls, cxButtons, UGeneral, ADODB, MutasiOperasional, dxSkinBlack,
  dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, pngimage, ExtCtrls, cxDBExtLookupComboBox, cxSpinEdit,
  SaldoOperasional, SaldoHarian, cxLookAndFeels, cxStyles, cxCustomData,
  cxFilter, cxData;

type
  TfrmPeminjamanOperasional = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    edTgl: TcxDateEdit;
    dxLayoutControl1Item1: TdxLayoutItem;
    ceJumlah: TcxCurrencyEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    memKet: TcxMemo;
    dxLayoutControl1Item5: TdxLayoutItem;
    btnBaru: TcxButton;
    dxLayoutControl1Item6: TdxLayoutItem;
    btnBatal: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxLayoutControl1Item8: TdxLayoutItem;
    btnHapus: TcxButton;
    dxLayoutControl1Item10: TdxLayoutItem;
    dxLayoutControl1Group2: TdxLayoutGroup;
    gridMutasi: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qryMutasi: TADOQuery;
    dsMutasi: TDataSource;
    gcolmMutasino_mutasi: TcxGridDBColumn;
    gcolmMutasitgl_mutasi: TcxGridDBColumn;
    gcolmMutasidari: TcxGridDBColumn;
    gcolmMutasike: TcxGridDBColumn;
    gcolmMutasijumlah: TcxGridDBColumn;
    gcolmMutasiketerangan: TcxGridDBColumn;
    qryAsal: TADOQuery;
    dsAsal: TDataSource;
    gcolmMutasisumber: TcxGridDBColumn;
    gcolmMutasitujuan: TcxGridDBColumn;
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
    gcolmMutasiStatus: TcxGridDBColumn;
    pm1: TPopupMenu;
    Lunasi1: TMenuItem;
    qryTujuan: TADOQuery;
    dsTujuan: TDataSource;
    GridRep1: TcxGridViewRepository;
    gridAsal: TcxGridDBTableView;
    gridTujuan: TcxGridDBTableView;
    gcolmAsalnama_perkiraan: TcxGridDBColumn;
    gcolmAsalsaldo_operasional: TcxGridDBColumn;
    gcolmTujuannama_perkiraan: TcxGridDBColumn;
    gcolmTujuansaldo_operasional: TcxGridDBColumn;
    cbblkpSource: TcxExtLookupComboBox;
    lblLayoutControl1Item14: TdxLayoutItem;
    cbbDestin: TcxExtLookupComboBox;
    lblLayoutControl1Item15: TdxLayoutItem;
    dxlytgrpLayoutControl1Group5: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    gcolmAsalid_perkiraan: TcxGridDBColumn;
    gcolmTujuanid_perkiraan: TcxGridDBColumn;
    LCILCI: TdxLayoutItem;
    btnUbah: TcxButton;
    gcolmMutasitgl_lunas: TcxGridDBColumn;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group6: TdxLayoutGroup;
    LCILayoutControl1Item2: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ceJumlahClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spePagePropertiesChange(Sender: TObject);
    procedure Lunasi1Click(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FMutasi: TFMutasiOperasional;
    FSaldoHarian: TSaldoHarian;
    FSaldoOp: TSaldoOperasional;
    procedure buka_ado;
  public
    { Public declarations }
  end;

var
  frmPeminjamanOperasional: TfrmPeminjamanOperasional;

implementation

uses cxGridDBDataDefinitions, UVariabel;

{$R *.dfm}

procedure TfrmPeminjamanOperasional.FormCreate(Sender: TObject);
begin
  FMutasi := TFMutasiOperasional.Create(Self);
  Koneksikan;
  FSaldoHarian := TSaldoHarian.Create(nil);
  FSaldoOp := TSaldoOperasional.Create(nil);
  Logika_Button(False);
  spePage.Value := 1;
  spePer.Value := 20;
end;

procedure TfrmPeminjamanOperasional.btnBaruClick(Sender: TObject);
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
    cbbDestin.EditValue := FPOperasional;
    //cbbDestin.Properties.ReadOnly := True;
  end;
end;

procedure TfrmPeminjamanOperasional.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  spePage.Value := 1;
  spePer.Value := 20;
end;

procedure TfrmPeminjamanOperasional.btnUbahClick(Sender: TObject);
begin
  if (FsaldoHarian.SudahTutup = True) then
    MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
      'anda tidak bisa mengubah transaski hari ini ',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else if (DateToStr(gcolmMutasitgl_mutasi.DataBinding.Field.AsDateTime)
    = DateToStr(Date)) then
  begin
    Logika_Button(True);
    Self.Tag := 2;
    edTgl.Date := gridMutasi.Columns[1].DataBinding.Field.AsDateTime;
    cbblkpSource.EditValue :=
      gridMutasi.Columns[8].DataBinding.Field.AsString;
    cbbDestin.EditValue :=
      gridMutasi.Columns[9].DataBinding.Field.AsString;
    ceJumlah.EditValue :=
      gridMutasi.Columns[4].DataBinding.Field.AsCurrency;
    memKet.Text := gridMutasi.Columns[7].DataBinding.Field.Value;
    cxGrid1.Hint := gridMutasi.Columns[0].DataBinding.Field.AsString;
    spePage.Value := 1;
    spePer.Value := 20;
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini ' +
      #13#10 +
      'anda tidak dapat merubah transaksi hari ini',
      'Perhatian', MB_ICONWARNING + MB_OK);
end;

procedure TfrmPeminjamanOperasional.btnSimpanClick(Sender: TObject);
begin
  if (cek_kosong(0)) then
  begin
    if (cbblkpSource.Text <> cbbDestin.Text) then
    begin
      with FMutasi do
      begin
        tanggal := FormatDateTime('yyyy-mm-dd hh:mm', edTgl.Date);
        dari := cbblkpSource.EditValue;
        ke := cbbDestin.EditValue;
        jumlah := ceJumlah.EditValue;
        keterangan := memKet.Text;
        if (Self.Tag = 1) then
        begin
          if (qryAsal.FieldByName('saldo_penyaluran').AsCurrency <
            ceJumlah.EditValue) then
            MessageBox(Handle,
              'Saldo Opererasional Lebih Kecil dari Jumlah Peminjaman',
              'Tambah Data', MB_ICONWARNING + MB_OK)
          else
          begin
            if Insert then
            begin
              MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
                MB_ICONINFORMATION + MB_OK);
              // perbaharui jumlah operasional dari dan ke perkiraan
              refresh_AdoQuery(qryMutasi);
              Logika_Button(False);
              Koneksikan;
            end
            else
              MessageBox(Handle, 'Data gagal ditambah', 'Tambah Data',
                MB_ICONWARNING + MB_OK);
          end;
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
              + MB_OK);
        end;
      end;
    end
    else
      MessageBox(Handle, 'Tidak Boleh sama', 'Warning', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TfrmPeminjamanOperasional.btnHapusClick(Sender: TObject);
begin
  if (gcolmMutasiStatus.DataBinding.Field.AsString = 'Belum Lunas') then
  begin
    if (FsaldoHarian.SudahTutup = True) then
      MessageBox(Handle, 'Maaf transaksi hari ini sudah ditutup ' + #13#10 +
        'anda tidak bisa menghapus transaski hari ini ',
        'Perhatian', MB_ICONWARNING + MB_OK)
    else if (DateToStr(gcolmMutasitgl_mutasi.DataBinding.Field.AsDateTime)
      = DateToStr(Date)) then
    begin
      with FMutasi do
      begin
        if (qryMutasi.RecordCount > 0) then
        begin
          no_mutasi :=
            gridMutasi.Columns[0].DataBinding.Field.AsInteger;
          if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) =
            mrok then
            Delete;
          refresh_AdoQuery(qryMutasi);
        end;
      end;
    end
    else
      MessageBox(Handle, 'Maaf transaksi hari ini tidak terjadi pada hari ini '
        + #13#10 + 'anda tidak dapat menghapus transaksi hari ini',
        'Perhatian', MB_ICONWARNING + MB_OK);
  end
  else
    MessageBox(Handle, 'Maaf transaksi hari ini tidak bisa dihapus '
      + #13#10 + 'Transaksi ini sudah dilunasi',
      'Perhatian', MB_ICONWARNING + MB_OK);

end;

procedure TfrmPeminjamanOperasional.FormClose(Sender: TObject; var Action:
  TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPeminjamanOperasional.ceJumlahClick(Sender: TObject);
begin
  ceJumlah.SelectAll;
end;

procedure TfrmPeminjamanOperasional.buka_ado;
begin
  spePage.Properties.ReadOnly := False;
  spePer.Properties.ReadOnly := False;
  FMutasi.view_ado(qryMutasi,
    'SELECT p2.nama_perkiraan AS tujuan, p1.nama_perkiraan AS sumber, op1.* ' +
    ' FROM tbl_peminjaman_operasional AS op1 INNER JOIN tbl_perkiraan AS p1 ON p1.id_perkiraan = op1.dari ' +
    ' INNER JOIN tbl_perkiraan AS p2 ON p2.id_perkiraan = op1.ke   ORDER BY  op1.tgl DESC, ' +
    ' op1.`status` desc, tgl_lunas desc limit ' +
    VarToStr((spePage.Value * spePer.Value) -
    spePer.Value) + ',' + VarToStr(spePer.Value) + '');
end;

procedure TfrmPeminjamanOperasional.FormShow(Sender: TObject);
begin
  buka_ado;
end;

procedure TfrmPeminjamanOperasional.spePagePropertiesChange(Sender: TObject);
begin
  buka_ado;
end;

procedure TfrmPeminjamanOperasional.Lunasi1Click(Sender: TObject);
begin
  // pelunasan;
  Koneksikan(qryTujuan);
  cbbDestin.EditValue := gcolmMutasike.DataBinding.Field.AsString;
  if (gcolmMutasijumlah.DataBinding.Field.AsFloat >
    FSaldoOp.Saldo) then
    MessageBox(Handle, 'Maaf Jumlah Saldo Untuk Pelunasan tidak mencukupi ' +
      #13#10 + 'anda tidak dapat melunasi transaksi',
      'Perhatian', MB_ICONWARNING + MB_OK)
  else
  begin
    with FSaldoOp do
    begin
      FMutasi.no_mutasi := gcolmMutasino_mutasi.DataBinding.Field.AsInteger;
      FMutasi.Lunasi;
      buka_ado;
      Koneksikan;
    end;
  end;
end;

procedure TfrmPeminjamanOperasional.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qryMutasi);
end;

end.

