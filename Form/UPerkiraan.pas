unit UPerkiraan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, 
  cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, cxDropDownEdit, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, dxGDIPlusClasses, pngimage, ExtCtrls, UGeneral,
  Perkiraan,
  ADODB, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, cxPC, SaldoPenyaluran, cxSpinEdit, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmPerkiraan = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    dxlytcntrl1: TdxLayoutControl;
    grid: TcxGrid;
    gridPerkiraan: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    btnBatal: TcxButton;
    btnTambah: TcxButton;
    btnSimpan: TcxButton;
    btnUbah: TcxButton;
    btnHapus: TcxButton;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    dxlytm1: TdxLayoutItem;
    cmbLevel: TcxComboBox;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    qry_perkiraan: TADOQuery;
    ds_perkiraan: TDataSource;
    gcolmPerkiraanid_perkiraan: TcxGridDBColumn;
    gcolmPerkiraankd_kel: TcxGridDBColumn;
    gcolmPerkiraannama_perkiraan: TcxGridDBColumn;
    gcolmPerkiraanlevel: TcxGridDBColumn;
    gcolmPerkiraansaldo_awal: TcxGridDBColumn;
    gcolmPerkiraannama_kelompok: TcxGridDBColumn;
    qry_perkiraannama_perkiraan: TStringField;
    qry_perkiraanlevel: TStringField;
    qry_perkiraannama_kelompok: TStringField;
    lkpNama_Kelompok: TcxLookupComboBox;
    dxlytcntrl1Item2: TdxLayoutItem;
    qryLkpKel: TADOQuery;
    DSLkpKel: TDataSource;
    eNama_Perkiraan: TcxTextEdit;
    dxlytcntrl1Item3: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    lkpHeader: TcxLookupComboBox;
    dxlytcntrl1Item4: TdxLayoutItem;
    qryHeader: TADOQuery;
    dsHeader: TDataSource;
    tabs: TcxTabControl;
    dxlytcntrl1Item5: TdxLayoutItem;
    qry_perkiraanid_perkiraan: TStringField;
    qry_perkiraankd_header: TStringField;
    qryLkpKelnama_kel: TStringField;
    qryLkpKeljenis: TStringField;
    qryHeaderid_perkiraan: TStringField;
    qryHeadernama_perkiraan: TStringField;
    qry_perkiraancalc_namaPerkiraan: TStringField;
    gcolmPerkiraankd_header: TcxGridDBColumn;
    gcolmPerkiraancalc_namaPerkiraan: TcxGridDBColumn;
    field_perkiraanjenis: TStringField;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    dxlytsprtrtmdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    img2: TImage;
    fltfld_perkiraansaldo_awal: TFloatField;
    eCrSaldo: TcxCurrencyEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    eAlias: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    gcolmGrid1DBTableView1Singkatan: TcxGridDBColumn;
    field_perkiraansingkatan: TStringField;
    gcolmPerkiraanAlokasiAmil: TcxGridDBColumn;
    fltfld_perkiraanalokasi_amil: TFloatField;
    gcolmPerkiraanSaldoOperasional: TcxGridDBColumn;
    fieldHeaderjenis: TStringField;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group6: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group7: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group8: TdxLayoutGroup;
    F_perkiraansaldo_penyaluran: TFloatField;
    gcolmPerkiraansaldo_penyaluran: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnRefresh: TcxButton;
    F_perkiraankd_kel: TSmallintField;
    FLkpKelkd_kel: TSmallintField;
    spePrioritas: TcxSpinEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group9: TdxLayoutGroup;
    F_perkiraanprioritas: TSmallintField;
    gcolmPerkiraanprioritas: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure tabsChange(Sender: TObject);
    procedure qry_perkiraanCalcFields(DataSet: TDataSet);
    procedure cmbLevelPropertiesChange(Sender: TObject);
    procedure lkpNama_KelompokExit(Sender: TObject);
    procedure lkpHeaderExit(Sender: TObject);
    procedure cmbLevelExit(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FPerkiraan: TFPerkiraan;
    //FsaldoOperasional: TSaldoOperasional;
    FsaldoPenyaluran: TSaldoPenyaluran;
    procedure tambah_saldo_operasional();
    procedure tambah_saldo_penyaluran();
    function not_header(header: Byte): Boolean;
  public
    { Public declarations }
  end;

var
  frmPerkiraan: TfrmPerkiraan;

implementation

uses cxGridDBDataDefinitions, UKoneksi, SaldoAwal, UVariabel;

{$R *.dfm}

procedure TfrmPerkiraan.FormCreate(Sender: TObject);
begin
  FPerkiraan := TFPerkiraan.Create(Self);
  Koneksikan;
  Logika_Button(False);
  with tabs do
  begin
    Tabs.Clear;
    qryLkpKel.First;
    Tabs.Append('Penerimaan');
    Tabs.Append('Pengeluaran/Penyaluran');
  end;
  qry_perkiraan.Close;
  qry_perkiraan.Parameters[0].Value := FPPeriode;
  qry_perkiraan.Open;
  qry_perkiraan.Filtered := False;
  qry_perkiraan.Filter := 'jenis=' + QuotedStr('IN');
  qry_perkiraan.Filtered := True;
  FPerkiraan.refresh_AdoQuery(qry_perkiraan);
  //FsaldoOperasional := TSaldoOperasional.Create(nil);
  FsaldoPenyaluran := TSaldoPenyaluran.Create(Self);
end;

procedure TfrmPerkiraan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmPerkiraan.btnTambahClick(Sender: TObject);
begin
  Self.Tag := 1;
  Logika_Button(True);
  eNama_Perkiraan.SetFocus;
  lkpHeader.Properties.ReadOnly := True;
  eCrSaldo.Properties.ReadOnly := True;
  eCrSaldo.Value := 0;
  //eCrSaldoOperasional.Value := 0;
end;

procedure TfrmPerkiraan.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  btnTambah.SetFocus;
  lkpHeader.Properties.ReadOnly := True;
end;

procedure TfrmPerkiraan.btnSimpanClick(Sender: TObject);
var
  header: string;
begin
  if cek_kosong(0) = True then
  begin
    if lkpNama_Kelompok.Text = '' then
    begin
      ShowMessage('Isi kelompok penerimaan/pengeluaran!');
      lkpNama_Kelompok.SetFocus;
      Exit;
    end;
    if eNama_Perkiraan.Text = '' then
    begin
      ShowMessage('Isi nama penerimaan/pengeluaran!');
      eNama_Perkiraan.SetFocus;
      Exit;
    end;
    if cmbLevel.Text = '' then
    begin
      ShowMessage('Isi level penerimaan/pengeluaran!');
      cmbLevel.SetFocus;
      Exit;
    end;
    if cmbLevel.Text = 'Detail' then
      if lkpHeader.Text = '' then
      begin
        ShowMessage('Isi header!');
        lkpHeader.SetFocus;
        Exit;
      end;
    with FPerkiraan do
    begin
      kd_kel := lkpNama_Kelompok.EditValue;
      if cmbLevel.Text = 'Header' then
      begin
        header := '1';
        alokasi_amil := eCrSaldo.EditValue;
      end
      else
      begin
        header := lkpHeader.EditValue;
        alokasi_amil := 0;
      end;
      {if cmbLevel.Text = 'Header' then
        kd_header := '-1'
      else                  }
      kd_header := header;
      nama_perkiraan := eNama_Perkiraan.Text;
      level := cmbLevel.Text;
      singkatan := eAlias.Text;
      prioritas:=spePrioritas.Value;
      if (Self.Tag = 1) then
      begin
        try
          Mulai_Transaksi;
          createIDPerkiraan(header, cmbLevel.Text);
          if Insert then
          begin
            MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
              MB_ICONINFORMATION + MB_OK);
            if (cmbLevel.Text = 'Detail') then
            begin
              FSaldoAwal := TFSaldoAwal.Create(Application);
              FSaldoAwal.id_perkiraan := id_perkiraan;
              FSaldoAwal.priode := FPPeriode;
              FSaldoAwal.saldo_awal := eCrSaldo.Value;
              FSaldoAwal.Insert;
              //ShowMessage(fieldHeaderjenis.AsString);
              if (fieldHeaderjenis.AsString = 'IN') then
                tambah_saldo_penyaluran;
            end;
            refresh_AdoQuery(qry_perkiraan);
            Logika_Button(False);
          end;
          Selesai_Transaksi;
        except on E: Exception do
          begin
            Batalkan_Transaksi;
            //raise Exception.Create(E.Message);
            MessageBox(Handle, pchar('Data gagal ditambah .. Kesalahan Pada :' +
              #13 + E.message),
              'Error', MB_ICONERROR + MB_OK);
          end;

        end;
      end
      else if (Self.Tag = 2) then
      begin
        try
          Mulai_Transaksi;
          id_perkiraan := grid.Hint;
          id_perkiraan_lama := grid.Hint;
          if (header_lama <> lkpHeader.EditValue) and (cmbLevel.Text <> 'Header')
            then
            createIDPerkiraan(header, cmbLevel.Text);
          if Update then
          begin
            MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
              MB_ICONINFORMATION + MB_OK);
            refresh_AdoQuery(qry_perkiraan);
            if (cmbLevel.Text = 'Detail') then
            begin
              FSaldoAwal := TFSaldoAwal.Create(Application);
              FSaldoAwal.id_perkiraan := id_perkiraan;
              FSaldoAwal.priode := FPPeriode;
              FSaldoAwal.saldo_awal := eCrSaldo.EditValue;
              //ShowMessage(CurrToStr(eCrSaldo.EditValue));
              FSaldoAwal.Update;
            end;
            Koneksikan(qry_perkiraan);
            Logika_Button(False);
          end;
          Selesai_Transaksi;
        except on E: Exception do
          begin
            Batalkan_Transaksi;
            //raise Exception.Create(E.Message);
            MessageBox(Handle, pchar('Data gagal diubah .. Kesalahan Pada :' +
              #13 + E.message),
              'Error', MB_ICONERROR + MB_OK);
          end;

        end;
      end;
    end;
  end;
end;

procedure TfrmPerkiraan.btnUbahClick(Sender: TObject);
begin
  Self.Tag := 2;
  Logika_Button(True);
  lkpNama_Kelompok.EditValue := F_perkiraankd_kel.Value;
  eNama_Perkiraan.Text := qry_perkiraannama_perkiraan.Value;
  cmbLevel.Text := qry_perkiraanlevel.Value;
  spePrioritas.Value:=F_perkiraanprioritas.Value;
  if cmbLevel.Text = 'Detail' then
  begin
    lkpHeader.EditValue := qry_perkiraankd_header.Value;
    FPerkiraan.header_lama := qry_perkiraankd_header.Value;
    FPerkiraan.alokasi_amil := 0;
  end
  else
  begin
    eCrSaldo.EditValue := fltfld_perkiraanalokasi_amil.Value;
  end;

  grid.Hint := qry_perkiraanid_perkiraan.Value;
  eAlias.Text := field_perkiraansingkatan.AsString;
  if (fltfld_perkiraansaldo_awal.AsString <> '') then
  begin
    eCrSaldo.EditValue := fltfld_perkiraansaldo_awal.AsInteger;
  end;
  eNama_Perkiraan.SetFocus;
end;

procedure TfrmPerkiraan.btnHapusClick(Sender: TObject);
begin
  with FPerkiraan do
  begin
    if (qry_perkiraan.RecordCount > 0) then
    begin
      id_perkiraan := qry_perkiraanid_perkiraan.Value;
      if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
        then
        Delete;
      refresh_AdoQuery(qry_perkiraan);
    end;
  end;
end;

procedure TfrmPerkiraan.tabsChange(Sender: TObject);
begin
  qry_perkiraan.Filtered := False;
  if (tabs.TabIndex = 0) then
    qry_perkiraan.Filter := 'jenis=' + QuotedStr('IN')
  else if (tabs.TabIndex = 1) then
    qry_perkiraan.Filter := 'jenis=' + QuotedStr('OUT');
  qry_perkiraan.Filtered := True;
end;

procedure TfrmPerkiraan.qry_perkiraanCalcFields(DataSet: TDataSet);
begin
  if qry_perkiraanlevel.Value = 'Header' then
    qry_perkiraancalc_namaPerkiraan.AsString := qry_perkiraannama_perkiraan.Value
  else
    qry_perkiraancalc_namaPerkiraan.AsString := '          ' +
      qry_perkiraannama_perkiraan.Value;
end;

procedure TfrmPerkiraan.cmbLevelPropertiesChange(Sender: TObject);
begin
  if cmbLevel.Text = 'Detail' then
  begin
    //FPerkiraan.refresh_AdoQuery(qryHeader);
    with qryHeader do
    begin
      Close;
      Parameters[0].Value := lkpNama_Kelompok.EditValue;
      Open;
    end;
    lkpHeader.Properties.ReadOnly := False;
    eCrSaldo.Properties.ReadOnly := false;
    //eCrSaldoOperasional.Properties.ReadOnly := False;
    dxlytmdxlytcntrl1Item1.CaptionOptions.Text := 'Saldo Awal';
    eCrSaldo.Properties.DisplayFormat := 'Rp,0.00;(Rp,0.00)';
    //eCrSaldo.Width := 388;
  end
  else
  begin
    lkpHeader.Properties.ReadOnly := True;
    dxlytmdxlytcntrl1Item1.CaptionOptions.Text := 'Alokasi Dana Amil';
    eCrSaldo.Properties.DisplayFormat := '0.00 %';
    //eCrSaldo.Width := 388;
    eCrSaldo.Properties.ReadOnly := False;
    eCrSaldo.EditValue := 0;
    //eCrSaldoOperasional.Properties.ReadOnly := True;
  end;

end;

procedure TfrmPerkiraan.tambah_saldo_operasional;
begin
  {  with FsaldoOperasional do
    begin
      id_perkiraan := FPerkiraan.id_perkiraan;
      //jumlah := eCrSaldoOperasional.Value;
      FsaldoOperasional.Insert;
    end;}
end;

procedure TfrmPerkiraan.lkpNama_KelompokExit(Sender: TObject);
begin
  cmbLevelPropertiesChange(Sender);
end;

procedure TfrmPerkiraan.lkpHeaderExit(Sender: TObject);
begin
  if (fieldHeaderjenis.AsString = 'OUT') then
    //eCrSaldoOperasional.Properties.ReadOnly := True;
end;

procedure TfrmPerkiraan.cmbLevelExit(Sender: TObject);
begin
  if (fieldHeaderjenis.AsString = 'OUT') and (cmbLevel.Text = 'Header') then
    eCrSaldo.Properties.ReadOnly := True;
end;

procedure TfrmPerkiraan.tambah_saldo_penyaluran;
begin
  with FsaldoPenyaluran do
  begin
    id_perkiraan := FPerkiraan.id_perkiraan;
    jumlah := eCrSaldo.Value;
    FsaldoPenyaluran.Insert;
  end;
end;

function TfrmPerkiraan.not_header(header: Byte): Boolean;
var
  ulang: Integer;
begin
  Result := false;
  for ulang := 1 to 13 do
  begin

    {if (header = arabics[a]) then
      Result := true;}
  end;
end;

procedure TfrmPerkiraan.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qry_perkiraan);
end;

end.

