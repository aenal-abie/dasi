unit UJatuhTempo;

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
  dxSkinscxPCPainter, dxLayoutControl, cxContainer, cxEdit,
  dxLayoutcxEditAdapters,
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, Menus, StdCtrls, cxButtons,
  dxSkinsdxBarPainter, dxBar, ADODB, dxGDIPlusClasses, pngimage,
  ExtCtrls, cxDBExtLookupComboBox, UGeneral, dxLayoutLookAndFeels, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppBands, ppCache, ppDB, ppParameter, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, jpeg, UHijriah, ppModule, raCodMod,
  cxPC, dxLayoutControlAdapters, ppViewr, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData, scExcelExport;

type
  TfrmJatuhTempo = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    cbb2: TcxExtLookupComboBox;
    dxlytmLayoutControl1Item4: TdxLayoutItem;
    btnCheck: TcxButton;
    dxlytmLayoutControl1Item1: TdxLayoutItem;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dsDonatur: TDataSource;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridAmil: TcxGridDBTableView;
    gcolmgridcxgrdvwrpstry1DBTableView1kode_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1nama_amil: TcxGridDBColumn;
    gcolmgridcxgrdvwrpstry1DBTableView1handphone: TcxGridDBColumn;
    spAmil: TADOStoredProc;
    dsAmil: TDataSource;
    spDonatur: TADOStoredProc;
    pdbpln1: TppDBPipeline;
    prprt1: TppReport;
    prmtrlst1: TppParameterList;
    hjrhJT: THijriah;
    ptlbnd1: TppTitleBand;
    plbl1: TppLabel;
    pmg1: TppImage;
    plbl8: TppLabel;
    plblAmil: TppLabel;
    plbl10: TppLabel;
    plblTanggal: TppLabel;
    phdrbnd1: TppHeaderBand;
    plbl2: TppLabel;
    plbl3: TppLabel;
    plbl5: TppLabel;
    pln1: TppLine;
    pdtlbnd1: TppDetailBand;
    pdbtxtnama_lengkap: TppDBText;
    pdbtxthandphone: TppDBText;
    pftrbnd1: TppFooterBand;
    psystmvrbl1: TppSystemVariable;
    psystmvrbl2: TppSystemVariable;
    plblJemput: TppLabel;
    pdbtxtcara_bayar: TppDBText;
    pdbtxtjemput: TppDBText;
    pdbtxtkantor: TppDBText;
    pdbtxtalamat_kantor: TppDBText;
    pdbtxtalamat_rumah: TppDBText;
    pdbtxttelp_kantor: TppDBText;
    pdbclc1: TppDBCalc;
    plbl4: TppLabel;
    cxpgcntrl1: TcxPageControl;
    dxlytmLayoutControl1Item2: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    grid: TcxGrid;
    gridDonatur: TcxGridDBTableView;
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
    cxgrdlvl: TcxGridLevel;
    dxlytgrpLayoutControl2Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    btn1: TcxButton;
    pvwr1: TppViewer;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    lbl3: TLabel;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    btnFirst: TcxButton;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnPrior: TcxButton;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    cmbZoom: TcxComboBox;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    btnNext: TcxButton;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    btnLast: TcxButton;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    plbl7: TppLabel;
    pdbtxtnama_lengkap1: TppDBText;
    pdbtxtkode_donatur: TppDBText;
    plbl6: TppLabel;
    Dt1: TcxDateEdit;
    LCILayoutControl1Item1: TdxLayoutItem;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    LCILayoutControl1Item2: TdxLayoutItem;
    Dt2: TcxDateEdit;
    LCILayoutControl1Item3: TdxLayoutItem;
    btn2: TcxButton;
    scxclxprtLap: TscExcelExport;
    pfldpdbpln1ppField1: TppField;
    pfldpdbpln1ppField2: TppField;
    pfldpdbpln1ppField3: TppField;
    pfldpdbpln1ppField4: TppField;
    pfldpdbpln1ppField5: TppField;
    pfldpdbpln1ppField6: TppField;
    pfldpdbpln1ppField7: TppField;
    pfldpdbpln1ppField8: TppField;
    pfldpdbpln1ppField9: TppField;
    pfldpdbpln1ppField10: TppField;
    pfldpdbpln1ppField11: TppField;
    pfldpdbpln1ppField12: TppField;
    pfldpdbpln1ppField13: TppField;
    pfldpdbpln1ppField14: TppField;
    pfldpdbpln1ppField15: TppField;
    pfldpdbpln1ppField16: TppField;
    pfldpdbpln1ppField17: TppField;
    pfldpdbpln1ppField18: TppField;
    pfldpdbpln1ppField19: TppField;
    pfldpdbpln1ppField20: TppField;
    pfldpdbpln1ppField21: TppField;
    pfldpdbpln1ppField22: TppField;
    plbl9: TppLabel;
    plbl11: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCheckClick(Sender: TObject);
    procedure plblJemputGetText(Sender: TObject; var Text: string);
    procedure btn1Click(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmJatuhTempo: TfrmJatuhTempo;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmJatuhTempo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmJatuhTempo.btnCheckClick(Sender: TObject);
begin
  if (cek_kosong = True) then
  begin
    with spDonatur do
    begin
      DisableControls;
      Close;
      Parameters[0].Value := FPPeriode;
      Parameters[1].Value := cbb2.EditValue;
      Parameters[2].Value := FormatDateTime('YYYY/MM/DD', Dt1.Date);
      Parameters[3].Value := FormatDateTime('YYYY/MM/DD', Dt2.Date);
      Open;
      EnableControls;
    end;
    plblAmil.Caption := cbb2.Text;
    hjrhJT.TangalMasehi := Dt1.Date;
    plbl11.Caption:=IntToStr(spDonatur.RecordCount);
    plblTanggal.Caption := FormatDateTime('DDDD', Now) + ', ' +
      hjrhJT.TanggalHijriah + '/' + FormatDateTime('DD MMMM YYYY', Date);
    prprt1.PrintToDevices;
  end;
end;

procedure TfrmJatuhTempo.plblJemputGetText(Sender: TObject;
  var Text: string);
begin
  if (pdbtxtcara_bayar.GetText = 'D') and (pdbtxtjemput.GetText = 'K') then
    Text := 'Kantor.,' + pdbtxtkantor.GetText + '.,' +
      pdbtxtalamat_kantor.GetText + ' Tlp.,' + pdbtxttelp_kantor.GetText
  else if (pdbtxtcara_bayar.GetText = 'D') and (pdbtxtjemput.GetText = 'R') then
    Text := 'Rumah.,' + pdbtxtalamat_rumah.GetText
  else
    Text := '';
end;

procedure TfrmJatuhTempo.btn1Click(Sender: TObject);
begin
  pvwr1.Print;
end;

procedure TfrmJatuhTempo.btnFirstClick(Sender: TObject);
begin
  pvwr1.FirstPage;
end;

procedure TfrmJatuhTempo.btnPriorClick(Sender: TObject);
begin
  pvwr1.PriorPage;
end;

procedure TfrmJatuhTempo.btnNextClick(Sender: TObject);
begin
  pvwr1.NextPage;
end;

procedure TfrmJatuhTempo.btnLastClick(Sender: TObject);
begin
  pvwr1.LastPage;
end;

procedure TfrmJatuhTempo.cmbZoomPropertiesChange(Sender: TObject);
begin
  try
    if (cmbZoom.Text <> '') then
    begin
      case cmbZoom.ItemIndex of
        0: pvwr1.ZoomPercentage := 50;
        1: pvwr1.ZoomPercentage := 100;
        2: pvwr1.ZoomPercentage := 150;
      else
        pvwr1.ZoomPercentage := StrToInt(cmbZoom.Text);
      end;
    end;
  except
    MessageBox(Handle, 'Format Salah', 'Zoom', MB_ICONWARNING + MB_OK);
  end;

end;

procedure TfrmJatuhTempo.btn2Click(Sender: TObject);
begin
  scxclxprtLap.Disconnect();
  scxclxprtLap.Dataset := spDonatur;
  scxclxprtLap.LoadDefaultProperties;
  scxclxprtLap.FontHeader.Size := 14;
  scxclxprtLap.StyleColumnWidth := cwAutoFit;
  scxclxprtLap.ExportDataset;
end;

end.

