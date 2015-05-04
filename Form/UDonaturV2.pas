unit UDonaturV2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, Menus,
  cxControls, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, cxMemo, cxMaskEdit, cxDropDownEdit, cxCalendar,
  dxLayoutControl, cxTextEdit, jpeg, dxGDIPlusClasses, StdCtrls, cxButtons,
  pngimage, ExtCtrls, 
  cxDataStorage, DB, cxDBData, cxCheckBox, cxRadioGroup, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, DBClient, Provider, ADODB,
  cxDBExtLookupComboBox, cxDBLookupComboBox, cxLookupEdit, cxDBLookupEdit,
  Donatur, UGeneral, Donasi,
  dxLayoutLookAndFeels, Rekening, ActnList, cxSpinEdit, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmDonatur = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    eNama: TcxTextEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    e_lahir: TcxTextEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    Dttgl_lahir: TcxDateEdit;
    dxLayoutControl1Item4: TdxLayoutItem;
    e_istri: TcxTextEdit;
    dxLayoutControl1Item5: TdxLayoutItem;
    malamatrumah: TcxMemo;
    dxLayoutControl1Item6: TdxLayoutItem;
    eTlpRumah: TcxTextEdit;
    dxLayoutControl1Item7: TdxLayoutItem;
    eHanphone: TcxTextEdit;
    dxLayoutControl1Item8: TdxLayoutItem;
    dxLayoutControl1Group3: TdxLayoutGroup;
    dxLayoutControl1Group4: TdxLayoutGroup;
    dxLayoutControl1Group1: TdxLayoutGroup;
    dxLayoutControl1Group5: TdxLayoutGroup;
    dxLayoutControl1Group2: TdxLayoutGroup;
    eKantor: TcxTextEdit;
    dxLayoutControl1Item9: TdxLayoutItem;
    eTlpKantor: TcxTextEdit;
    dxLayoutControl1Item10: TdxLayoutItem;
    mAlamatKantor: TcxMemo;
    dxLayoutControl1Item11: TdxLayoutItem;
    dxLayoutControl1Group6: TdxLayoutGroup;
    dxLayoutControl1Group7: TdxLayoutGroup;
    dxLayoutControl1Item12: TdxLayoutItem;
    grid: TcxGrid;
    gridJenis: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    cmbBulanulai: TcxComboBox;
    dxLayoutControl1Item13: TdxLayoutItem;
    dxLayoutControl1Group8: TdxLayoutGroup;
    eTahunMulai: TcxTextEdit;
    dxLayoutControl1Item14: TdxLayoutItem;
    dxLayoutControl1Group9: TdxLayoutGroup;
    rbAntar: TcxRadioButton;
    dxLayoutControl1Item15: TdxLayoutItem;
    eSetiapTanggal: TcxTextEdit;
    dxLayoutControl1Item16: TdxLayoutItem;
    dxLayoutControl1Group10: TdxLayoutGroup;
    rbRumah: TcxRadioButton;
    dxLayoutControl1Item17: TdxLayoutItem;
    dxLayoutControl1Group11: TdxLayoutGroup;
    rbKantor: TcxRadioButton;
    dxLayoutControl1Item19: TdxLayoutItem;
    dxLayoutControl1Group12: TdxLayoutGroup;
    rbTransfer: TcxRadioButton;
    dxLayoutControl1Item21: TdxLayoutItem;
    dxLayoutControl1LabeledItem1: TdxLayoutLabeledItem;
    dxLayoutControl1LabeledItem2: TdxLayoutLabeledItem;
    dxLayoutControl1Group13: TdxLayoutGroup;
    dxLayoutControl1LabeledItem4: TdxLayoutLabeledItem;
    dxLayoutControl1Item22: TdxLayoutItem;
    btnSimpan: TcxButton;
    dxLayoutControl1Item23: TdxLayoutItem;
    btnTambah: TcxButton;
    dxLayoutControl1Group15: TdxLayoutGroup;
    dxLayoutControl1Item24: TdxLayoutItem;
    btnBatal: TcxButton;
    dxLayoutControl1LabeledItem5: TdxLayoutLabeledItem;
    dtstprvdr: TDataSetProvider;
    cdsDonasi: TClientDataSet;
    crncyfldDonasijumlah: TCurrencyField;
    blnfldDonasirutin: TBooleanField;
    blnfldDonasiisidentil: TBooleanField;
    pnl1: TPanel;
    imgDonasi: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    dxlytgrpLayoutControl1Group16: TdxLayoutGroup;
    dxLayoutControl1LabeledItem3: TdxLayoutLabeledItem;
    dxlytgrpLayoutControl1Group17: TdxLayoutGroup;
    dxLayoutControl1SeparatorItem2: TdxLayoutSeparatorItem;
    dxLayoutControl1SeparatorItem3: TdxLayoutSeparatorItem;
    dxLayoutControl1SeparatorItem4: TdxLayoutSeparatorItem;
    dxLayoutControl1SeparatorItem5: TdxLayoutSeparatorItem;
    dxlytgrpLayoutControl1Group18: TdxLayoutGroup;
    dsPerkiraan: TDataSource;
    gridPerkiraan: TcxGridDBTableView;
    gcolmJenisketerangan: TcxGridDBColumn;
    gcolmJenisjumlah: TcxGridDBColumn;
    gcolmJenisrutin: TcxGridDBColumn;
    gcolmJenisisidentil: TcxGridDBColumn;
    gcolmPerkiraanid_perkiraan: TcxGridDBColumn;
    gcolmPerkiraannama_perkiraan: TcxGridDBColumn;
    gridKabupaten: TcxGridDBTableView;
    dsKabupaten: TDataSource;
    gcolmKabupatenkode_kab: TcxGridDBColumn;
    gcolmKabupatennama_kab_kota: TcxGridDBColumn;
    cbbKab: TcxExtLookupComboBox;
    dxlytmLayoutControl1Item26: TdxLayoutItem;
    spNull: TADOStoredProc;
    gcolmJenisPerkiraan: TcxGridDBColumn;
    strngfldCDSJenisid: TStringField;
    strngfldCDSJenisketerangan: TStringField;
    spKabupaten: TADOStoredProc;
    dsCDS: TDataSource;
    pmDonatur: TPopupMenu;
    DoansiBaru: TMenuItem;
    spDonasi: TADOStoredProc;
    dxlytmLayoutControl1Item18: TdxLayoutItem;
    lbl3: TLabel;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    dxLayoutCxLookAndFeel1: TdxLayoutCxLookAndFeel;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    Rekemning1: TMenuItem;
    spRekening: TADOStoredProc;
    spPerkiraan: TADOStoredProc;
    dxlytgrpLayoutControl1Group15: TdxLayoutGroup;
    dxlytsprtrtmLayoutControl1SeparatorItem6: TdxLayoutSeparatorItem;
    speKemitraan: TcxSpinEdit;
    dxlytmLayoutControl1Item3: TdxLayoutItem;
    cmbJenisDonatur: TcxComboBox;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    cbbKecamatan: TcxExtLookupComboBox;
    lblLayoutControl1Item1: TdxLayoutItem;
    dxlytgrpLayoutControl1Group14: TdxLayoutGroup;
    qryKec: TADOQuery;
    dsKec: TDataSource;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridcKec: TcxGridDBTableView;
    gcolmKeckode_kec: TcxGridDBColumn;
    gcolmKeckode_kab: TcxGridDBColumn;
    gcolmKecnama_kecamatan: TcxGridDBColumn;
    fieldKabupatenkode_kab: TStringField;
    fieldKabupatennama_kab_kota: TStringField;
    fieldKabupatenalias: TStringField;
    fieldKeckode_kec: TStringField;
    fieldKeckode_kab: TStringField;
    fieldKecnama_kecamatan: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rbTransferClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rbAntarClick(Sender: TObject);
    procedure rbRumahClick(Sender: TObject);
    procedure rbKantorClick(Sender: TObject);
    procedure strngfldCDSJenisketeranganSetText(Sender: TField;
      const Text: string);
    procedure DoansiBaruClick(Sender: TObject);
    procedure Rekemning1Click(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cmbJenisDonaturPropertiesChange(Sender: TObject);
    procedure cbbKabPropertiesChange(Sender: TObject);
  private
    { Private declarations }
    Fdonasi: TFDonasi;
    FRekening: TRekening;
    procedure cek_carabayar(data: TComponent);
    procedure simpan_donasi;
    procedure simpan_rekening;
    {cek cara penerimaan jika duupdate}
    procedure cek_radio_aktif;
    procedure open_donasi(donatur: string);
  public
    { Public declarations }
  end;

var
  FrmDonatur: TFrmDonatur;

implementation

uses UControl, URekening;

{$R *.dfm}

{ TForm2 }

procedure TFrmDonatur.FormCreate(Sender: TObject);
begin
  //nonaktif_input(True,Self);
  Logika_Button(False);
  cdsDonasi.ReadOnly := False;
  kosongkanInputan(Self);
  if FDonatur = nil then
    FDonatur := TFDonatur.Create(Application);
  Koneksikan(spKabupaten);
  Koneksikan(spPerkiraan);
  Koneksikan(spNull);
  Koneksikan(spDonasi);
  Koneksikan(spRekening);
  Fdonasi := TFDonasi.Create(Application);
end;

procedure TFrmDonatur.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not Assigned(Application.FindComponent('FrmDataDonatur')) then
    FDonatur.Free;
  //if (FrmDataDonatur = nil) then
  Action := caFree;
end;

procedure TFrmDonatur.rbTransferClick(Sender: TObject);
begin
  if (Tag = 1) or (FDonatur.state = '2') then
  begin
    cek_carabayar(rbTransfer);
  end;

end;

procedure TFrmDonatur.FormShow(Sender: TObject);
begin
  cdsDonasi.Open;
  cdsDonasi.Delete;
  with FDonatur do
  begin
    if (FDonatur.state = '2') then
    begin
      Logika_Button(True);
      eNama.Text := NamaLengkap;
      e_lahir.Text := TempatLahir;
      Dttgl_lahir.Date := TanggalLahir;
      e_istri.Text := SuamiIstri;
      malamatrumah.Text := AlamatRumah;
      eTlpRumah.Text := TlpRumah;
      eHanphone.Text := Handphone;
      eKantor.Text := kantor;
      mAlamatKantor.Text := Alamatkantor;
      eTlpKantor.Text := TlpKantor;
      cmbBulanulai.ItemIndex := StrToInt(MulaiBulan) - 1;
      eTahunMulai.Text := MulaiTahun;
      eSetiapTanggal.Text := IntToStr(SetiapTanggal);
      cbbKab.EditValue := KodeKab;
      cbbKecamatan.EditValue := kode_kec;
      if (Jmlkemitraan > 0) then
      begin
        cmbJenisDonatur.ItemIndex := 1;
        speKemitraan.EditValue := Jmlkemitraan;
        speKemitraan.Properties.ReadOnly := False;
      end
      else
        cmbJenisDonatur.ItemIndex := 0;
      cek_radio_aktif;
      open_donasi(FDonatur.Kode);
      cdsDonasi.First;
    end;
  end;

end;

procedure TFrmDonatur.cek_carabayar(data: TComponent);
begin
  if (data.Name = 'rbAntar') then
  begin
    FDonatur.CaraBayar := 'A';
    FDonatur.Jemput := '';
    eSetiapTanggal.SetFocus;
  end
  else if (data.Name = 'rbRumah') then
  begin
    FDonatur.CaraBayar := 'D';
    FDonatur.Jemput := 'R';
    eSetiapTanggal.SetFocus;
  end
  else if (data.Name = 'rbKantor') then
  begin
    FDonatur.CaraBayar := 'D';
    FDonatur.Jemput := 'K';
    eSetiapTanggal.SetFocus;
  end
  else if (data.Name = 'rbTransfer') then
  begin
    FDonatur.CaraBayar := 'T';
    FDonatur.Jemput := '';
    eSetiapTanggal.SetFocus;
  end
end;

procedure TFrmDonatur.rbAntarClick(Sender: TObject);
begin
  cek_carabayar(rbAntar);
end;

procedure TFrmDonatur.rbRumahClick(Sender: TObject);
begin
  cek_carabayar(rbRumah);
end;

procedure TFrmDonatur.rbKantorClick(Sender: TObject);
begin
  cek_carabayar(rbKantor);
end;

procedure TFrmDonatur.cek_radio_aktif;
begin
  with FDonatur do
  begin
    //ShowMessage(CaraBayar+Jemput);
    if (CaraBayar = 'A') then
      rbAntar.Checked := True
    else if (CaraBayar = 'D') and (Jemput = 'R') then
      rbRumah.Checked := True
    else if (CaraBayar = 'D') and (Jemput = 'K') then
      rbKantor.Checked := True
    else if (CaraBayar = 'T') then
      rbTransfer.Checked := True;
  end;
end;

procedure TFrmDonatur.strngfldCDSJenisketeranganSetText(Sender: TField;
  const Text: string);
begin
  if (Text <> '') then
  begin
    cdsDonasi.FieldByName('id').AsString :=
      gcolmPerkiraanid_perkiraan.DataBinding.Field.AsString;
    cdsDonasi.FieldByName('keterangan').AsString := Text;
  end
  else
  begin
    cdsDonasi.Delete;
  end;

end;

procedure TFrmDonatur.simpan_donasi;
begin
  //ShowMessage(cdsDonasi.Fieldbyname('id').AsString);
  cdsDonasi.First;

  if (Self.Tag = 1) then
    Fdonasi.Donatur := FDonatur.kodeBaru
  else if (FDonatur.state = '2') then
  begin
    Fdonasi.Donatur := FDonatur.Kode;
    //ShowMessage(FDonatur.Kode);
    Fdonasi.Delete;
  end;
  while not (cdsDonasi.Eof) do
  begin
    with Fdonasi, cdsDonasi do
    begin
      //ShowMessage(cdsDonasi.Fieldbyname('id').AsString);
      if (Fieldbyname('id').AsString <> '') then
      begin
        id_perkiraan := Fieldbyname('id').AsString;
        Jumlah := Fieldbyname('jumlah').AsCurrency;
        if (Fieldbyname('rutin').AsBoolean = True) and
          (Fieldbyname('isidentil').AsBoolean = False) then
          Status := 'Rutin'
        else if (Fieldbyname('rutin').AsBoolean = False) and
          (Fieldbyname('isidentil').AsBoolean = True) then
          Status := 'Isidentil';
        //ShowMessage(Status);
        Fdonasi.Insert;
      end
      else
        Exit;
      Next;
    end;
  end;
end;

procedure TFrmDonatur.DoansiBaruClick(Sender: TObject);
begin
  if (Self.Tag = 1) or (FDonatur.state = '2') then
  begin
    cdsDonasi.Append;
    cdsDonasi.FieldByName('jumlah').AsCurrency := 0;
    cdsDonasi.FieldByName('rutin').AsBoolean := False;
    cdsDonasi.FieldByName('isidentil').AsBoolean := False;
    cdsDonasi.Post;
  end;

end;

procedure TFrmDonatur.open_donasi(donatur: string);
begin
  cdsDonasi.Delete;
  with spDonasi do
  begin
    Close;
    Parameters[0].Value := donatur;
    Open;
    while not (spDonasi.Eof) do
    begin
      with cdsDonasi do
      begin
        Append;
        cdsDonasi.FieldByName('id').AsString :=
          spDonasi.Fieldbyname('id_perkiraan').AsString;
        cdsDonasi.FieldByName('keterangan').Value :=
          spDonasi.Fieldbyname('id_perkiraan').AsString;
        cdsDonasi.FieldByName('jumlah').AsCurrency :=
          spDonasi.Fieldbyname('jumlah').AsCurrency;
        if (spDonasi.Fieldbyname('status').AsString = 'Rutin') then
        begin
          cdsDonasi.FieldByName('rutin').AsBoolean := True;
          cdsDonasi.FieldByName('isidentil').AsBoolean := False;
        end
        else
        begin
          cdsDonasi.FieldByName('rutin').AsBoolean := False;
          cdsDonasi.FieldByName('isidentil').AsBoolean := True;
        end;

        Post;
      end;
      Next;
    end;
  end;
end;

procedure TFrmDonatur.simpan_rekening;
begin
  if (FrmRekening <> nil) and (rbTransfer.Checked = True) then
  begin
    with FrmRekening do
    begin
      if (cdsRekening.RecordCount > 0) then
      begin
        cdsRekening.First;
        if (FDonatur.state = '2') then
        begin
          FRekening.KodeDonatur := FDonatur.Kode;
          FRekening.Delete;
        end
        else if (Self.Tag = 1) then
          FRekening.KodeDonatur := FDonatur.kodeBaru;
        while not (cdsRekening.Eof) do
        begin
          //ShowMessage(FRekening.KodeDonatur);
          FRekening.NoRekening :=
            cdsRekening.FieldByName('no_rekening').AsString;
          FRekening.NamaBank := cdsRekening.FieldByName('bank').AsString;
          FRekening.Insert;
          cdsRekening.Next;
        end;
      end;
    end;
    FRekening.Free;
    FrmRekening.Free;
  end
  else if ((rbAntar.Checked = True) or (rbRumah.Checked = True) or
    (rbKantor.Checked = True)) and (FDonatur.state = '2') then
  begin
    if (FRekening = nil) then
      FRekening := TRekening.Create(Application);
    FRekening.KodeDonatur := FDonatur.Kode;
    FRekening.Delete;
  end;
end;

procedure TFrmDonatur.Rekemning1Click(Sender: TObject);
begin
  if (FRekening = nil) then
  begin
    Application.CreateForm(TFrmRekening, FrmRekening);
    FRekening := TRekening.Create(Application);
  end;
  if (FDonatur.state = '2') then
  begin
    spRekening.Close;
    spRekening.Parameters[0].Value := FDonatur.Kode;
    spRekening.Open;

    with FrmRekening do
    begin
      if (cdsRekening.RecordCount > 0) and
        (cdsRekening.FieldByName('no_rekening').AsString = '') then
        cdsRekening.Delete;
      while not spRekening.Eof do
      begin
        cdsRekening.Append;
        cdsRekening.FieldByName('no_rekening').AsString :=
          spRekening.Fieldbyname('no_rekening').AsString;
        cdsRekening.FieldByName('bank').AsString :=
          spRekening.Fieldbyname('bank').AsString;
        cdsRekening.Post;
        spRekening.Next;
      end;
    end;
    FrmRekening.ShowModal;
  end
  else if (Tag = 1) then
    FrmRekening.ShowModal;
end;

procedure TFrmDonatur.btnSimpanClick(Sender: TObject);
begin
  if (cek_kosong(1) = True) then
  begin
    with FDonatur do
    begin
      NamaLengkap := eNama.Text;
      TempatLahir := e_lahir.Text;
      TanggalLahir := Dttgl_lahir.Date;
      SuamiIstri := e_istri.Text;
      AlamatRumah := malamatrumah.Text;
      TlpRumah := eTlpRumah.Text;
      Handphone := eHanphone.Text;
      kantor := eKantor.Text;
      Alamatkantor := mAlamatKantor.Text;
      TlpKantor := eTlpKantor.Text;
      MulaiBulan := IntToStr(cmbBulanulai.ItemIndex + 1);
      MulaiTahun := eTahunMulai.Text;
      SetiapTanggal := StrToInt(eSetiapTanggal.Text);
      KodeKab := cbbKab.EditValue;
      kode_kec := cbbKecamatan.EditValue;
      keyBaru := fieldKabupatenalias.AsString + fieldKeckode_kec.AsString;
      if (cmbJenisDonatur.ItemIndex = 0) then
        Jmlkemitraan := 0
      else
        Jmlkemitraan := speKemitraan.EditValue;
      //ShowMessage(FloatToStr(Jmlkemitraan));
      if (Self.Tag = 1) then
      begin
        if (Insert = True) then
        begin
          simpan_donasi();
          MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
            MB_ICONINFORMATION + MB_OK);
          simpan_rekening;
          cdsDonasi.Close;
          cdsDonasi.Open;
          Logika_Button(False);
        end;
      end
      else if (state = '2') then
      begin
        //ShowMessage(FDonatur.Jemput);
        if (update = True) then
        begin
          MessageBox(Handle, 'Data berhasil diubah', 'ubah Data',
            MB_ICONINFORMATION + MB_OK);
          simpan_donasi();
          simpan_rekening;
          cdsDonasi.Close;
          cdsDonasi.Open;
          FDonatur.state := '0';
          Logika_Button(False);
          //FRekening.Free;
          Self.Close;

        end;
      end;
    end;
  end;

end;

procedure TFrmDonatur.btnTambahClick(Sender: TObject);
var
  a: Byte;
begin
  Logika_Button(Enabled);
  nonaktif_input(False, Self);
  Tag := 1;
  eTahunMulai.Text := FormatDateTime('YYYY', Now);
  cmbBulanulai.ItemIndex := StrToInt(FormatDateTime('m', Now));
  for a := 1 to 10 do
  begin
    cdsDonasi.Append;
    cdsDonasi.FieldByName('jumlah').AsCurrency := 0;
    cdsDonasi.FieldByName('rutin').AsBoolean := False;
    cdsDonasi.FieldByName('isidentil').AsBoolean := False;
    cdsDonasi.Post;
  end;
  eNama.SetFocus;
  cdsDonasi.First;
  cdsDonasi.Edit;
  cdsDonasi.FieldByName('jumlah').AsCurrency := 0;
  cdsDonasi.FieldByName('rutin').AsBoolean := False;
  cdsDonasi.FieldByName('isidentil').AsBoolean := False;
  cdsDonasi.Post;
  cmbJenisDonatur.ItemIndex := 0;
end;

procedure TFrmDonatur.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  kosongkanInputan(Self);
  nonaktif_input(True, Self);
  Tag := 0;
  cdsDonasi.Close;
  cdsDonasi.Open;
  if (FDonatur.state = '2') then
  begin
    FDonatur.state := '0';
    Close;
  end;
end;

procedure TFrmDonatur.cmbJenisDonaturPropertiesChange(Sender: TObject);
begin
  if (cmbJenisDonatur.ItemIndex = 0) then
    speKemitraan.Properties.ReadOnly := True
  else
    speKemitraan.Properties.ReadOnly := False;
end;

procedure TFrmDonatur.cbbKabPropertiesChange(Sender: TObject);
begin
  qryKec.Close;
  qryKec.Parameters[0].Value := cbbKab.EditValue;
  qryKec.Open;
end;

end.

