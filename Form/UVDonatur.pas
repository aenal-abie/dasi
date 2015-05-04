unit UVDonatur;

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
  cxButtons, ADODB, Donatur, UGeneral,
  dxLayoutLookAndFeels, cxMaskEdit, cxSpinEdit, cxCurrencyEdit,
  scExcelExport, cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmDataDonatur = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    gridDonatur: TcxGridDBTableView;
    cxgrdlvl: TcxGridLevel;
    grid: TcxGrid;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    eNamaDonatur: TcxTextEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
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
    spDonatur: TADOStoredProc;
    spPage: TcxSpinEdit;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    spperPage: TcxSpinEdit;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    btnRefresh: TcxButton;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    gcolmDonaturKemitraan: TcxGridDBColumn;
    eCrJumlahData: TcxCurrencyEdit;
    lbldxlytcntrl1Item2: TdxLayoutItem;
    gcolmDonaturNamaKec: TcxGridDBColumn;
    gcolmDonaturKodeKec: TcxGridDBColumn;
    btn1: TcxButton;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    qry1: TADOQuery;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnExport: TcxButton;
    scxclxprtLap: TscExcelExport;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnHapusClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure cxspndt1PropertiesChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCariClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btnExportClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDataDonatur: TFrmDataDonatur;

implementation

uses UDonaturV2, UControl, UFilterDonatur,
  cxDBExtLookupComboBox;

{$R *.dfm}

procedure TFrmDataDonatur.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmDataDonatur.btnHapusClick(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FDonatur')) then
    FDonatur := TFDonatur.Create(Application);
  if (spDonatur.RecordCount > 0) then
  begin
    FDonatur.Kode := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
    if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
      then
      FDonatur.Delete;
    Koneksikan(spDonatur);
  end;
end;

procedure TFrmDataDonatur.btnUbahClick(Sender: TObject);
begin
  if spDonatur.RecordCount > 0 then
  begin
    FDonatur.state := '2';
    with FDonatur do
    begin
      Kode := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
      NamaLengkap := gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      TempatLahir := gcolmDonaturtempat_lahir.DataBinding.Field.AsString;
      TanggalLahir := gcolmDonaturtanggal_lahir.DataBinding.Field.AsDateTime;
      SuamiIstri := gcolmDonatursuami_istri.DataBinding.Field.AsString;
      AlamatRumah := gcolmDonaturalamat_rumah.DataBinding.Field.AsString;
      TlpRumah := gcolmDonaturtlp_rumah.DataBinding.Field.AsString;
      Handphone := gcolmDonaturhandphone.DataBinding.Field.AsString;
      kantor := gcolmDonaturkantor.DataBinding.Field.AsString;
      Alamatkantor := gcolmDonaturalamat_kantor.DataBinding.Field.AsString;
      TlpKantor := gcolmDonaturtelp_kantor.DataBinding.Field.AsString;
      MulaiBulan := gcolmDonaturmulai_bulan.DataBinding.Field.AsString;
      MulaiTahun := gcolmDonaturmulai_tahun.DataBinding.Field.AsString;
      CaraBayar := gcolmDonaturcara_bayar.DataBinding.Field.AsString;
      Jemput := gcolmDonaturjemput.DataBinding.Field.AsString;
      SetiapTanggal := gcolmDonatursetiap_tanggal.DataBinding.Field.AsInteger;
      KodeKab := gcolmDonaturkode_kab.DataBinding.Field.AsString;
      Jmlkemitraan := gcolmDonaturKemitraan.DataBinding.Field.AsFloat;
      kode_kec := gcolmDonaturKodeKec.DataBinding.Field.AsString;
    end;
    set_button('dde', btnUbah, btnHapus, btnBatal);
    Application.CreateForm(TFrmDonatur, FrmDonatur);
    FrmDonatur.Show;
  end;

end;

procedure TFrmDataDonatur.FormCreate(Sender: TObject);
begin
  if not Assigned(Application.FindComponent('FDonatur')) then
    FDonatur := TFDonatur.Create(Application);
  Koneksikan(spDonatur);
  eNamaDonatur.Clear;
  eCrJumlahData.Value := FDonatur.JumlahData;
end;

procedure TFrmDataDonatur.FormActivate(Sender: TObject);
begin
  if (FDonatur.state <> '2') then
  begin
    Koneksikan(spDonatur);
    set_button('eed', btnUbah, btnHapus, btnBatal);
  end;
end;

procedure TFrmDataDonatur.btnBatalClick(Sender: TObject);
begin
  set_button('eed', btnUbah, btnHapus, btnBatal);
end;

procedure TFrmDataDonatur.cxspndt1PropertiesChange(Sender: TObject);
begin
  spDonatur.Parameters[0].Value := (spPage.Value * spperPage.Value) -
    spperPage.Value;
  spDonatur.Parameters[1].Value := spperPage.Value;
  Koneksikan(spDonatur);
end;

procedure TFrmDataDonatur.FormShow(Sender: TObject);
begin
  spPage.Properties.ReadOnly := False;
  spperPage.Properties.ReadOnly := False;
end;

procedure TFrmDataDonatur.btnCariClick(Sender: TObject);
begin
  spDonatur.DisableControls;
  spDonatur.Parameters[0].Value := (spPage.Value * spperPage.Value) -
    spperPage.Value;
  spDonatur.Parameters[1].Value := spperPage.Value;
  spDonatur.Parameters[2].Value := eNamaDonatur.Text;
  Koneksikan(spDonatur);
  spDonatur.EnableControls;
end;

procedure TFrmDataDonatur.btnRefreshClick(Sender: TObject);
begin
  spDonatur.DisableControls;
  spDonatur.Parameters[0].Value := (spPage.Value * spperPage.Value) -
    spperPage.Value;
  spDonatur.Parameters[1].Value := spperPage.Value;
  spDonatur.Parameters[2].Value := '';
  Koneksikan(spDonatur);
  spDonatur.EnableControls;
end;

procedure TFrmDataDonatur.btn1Click(Sender: TObject);
begin
  if (qry1.Active = false) then
    Koneksikan(qry1);
  if not Assigned(Application.FindComponent('frmFilterKab')) then
    Application.CreateForm(TfrmFilterKab, frmFilterKab);
  with frmFilterKab do
  begin
    if (ShowModal = mrOk) then
    begin
      qry1.Close;
      qry1.DisableControls;
      if (cbx1.Checked = True) then
        qry1.Parameters[1].Value := cbbKecamatan.EditValue
      else
        qry1.Parameters[1].Value := '';
      qry1.Parameters[0].Value := cbbKab.EditValue;
      dsDonatur.DataSet := qry1;
      //Koneksikan(qry1);
      qry1.Open;
      qry1.EnableControls;
    end
    else if (ShowModal = mrCancel) then
      dsDonatur.DataSet := spDonatur;
  end;

  //ShowMessage(qry1.SQL.GetText);
end;

procedure TFrmDataDonatur.btnExportClick(Sender: TObject);
begin
  scxclxprtLap.Disconnect();
  scxclxprtLap.LoadDefaultProperties;
  scxclxprtLap.Dataset := gridDonatur.DataController.DataSet;
  scxclxprtLap.WorksheetName := 'DATA DONATUR';
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

end.

