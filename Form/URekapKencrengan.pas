unit URekapKencrengan;

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
  dxSkinscxPCPainter, Menus, 
  cxDataStorage, cxEdit, DB, cxDBData, cxDBExtLookupComboBox, cxContainer,
  dxLayoutcxEditAdapters, dxLayoutControl, ADODB, 
  cxGrid, dxLayoutLookAndFeels, StdCtrls, pngimage, ExtCtrls,
  cxCurrencyEdit, cxMemo, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxButtons, cxPC, dxLayoutControlAdapters, ppViewr, ppParameter, ppBands,
  ppStrtch, ppCTMain, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, UHijriah, UGeneral, ActnList,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmRekapKencrengan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrp1: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    cxgrdvwrpstry1: TcxGridViewRepository;
    spRekap: TADOStoredProc;
    dsRekap: TDataSource;
    cxpgcntrl1: TcxPageControl;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl2: TdxLayoutControl;
    dxlytmdxlytcntrl2Item1: TdxLayoutItem;
    grid1: TcxGrid;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    dxlytcntrl3: TdxLayoutControl;
    pvwr: TppViewer;
    btn6: TcxButton;
    cmbZoom: TcxComboBox;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    hjrhCetak: THijriah;
    pdbpln1: TppDBPipeline;
    prprtRekap: TppReport;
    phdrbnd1: TppHeaderBand;
    pmg1: TppImage;
    plbl2: TppLabel;
    plblTanggal: TppLabel;
    pdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    prmtrlst1: TppParameterList;
    plbl1: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl6: TppLabel;
    plnTanggal: TppLine;
    gridRekap: TcxGridDBTableView;
    gcolmRekaptotal: TcxGridDBColumn;
    Dt1: TcxDateEdit;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    pdbtxtnominal: TppDBText;
    pdbtxtjenis_uang: TppDBText;
    pdbtxtqty: TppDBText;
    pdbtxttotal: TppDBText;
    pln1: TppLine;
    pln2: TppLine;
    pln3: TppLine;
    psmrybnd1: TppSummaryBand;
    pdbclc1: TppDBCalc;
    plbl5: TppLabel;
    gcolmRekapnominal: TcxGridDBColumn;
    gcolmRekapjenis_uang: TcxGridDBColumn;
    gcolmRekapqty: TcxGridDBColumn;
    GridRepViewUser: TcxGridViewRepository;
    gridXViewUser: TcxGridDBTableView;
    gcolmXViewUserid_user: TcxGridDBColumn;
    gcolmXViewUsernama_amil: TcxGridDBColumn;
    spViewUser: TADOStoredProc;
    ds1: TDataSource;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    cbbViewUser: TcxExtLookupComboBox;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    eTotalKencrengan: TcxTextEdit;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnFilter: TcxButton;
    spTotalRekap: TADOStoredProc;
    pfldpdbpln1ppField1: TppField;
    pfldpdbpln1ppField2: TppField;
    pfldpdbpln1ppField3: TppField;
    pfldpdbpln1ppField4: TppField;
    pfldpdbpln1ppField5: TppField;
    pfldpdbpln1ppField6: TppField;
    pfldpdbpln1ppField7: TppField;
    plbl7: TppLabel;
    plbl8: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn6Click(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
  private
    { Private declarations }
    procedure hitung_total;
  public
    { Public declarations }
  end;

var
  frmRekapKencrengan: TfrmRekapKencrengan;

implementation



{$R *.dfm}

procedure TfrmRekapKencrengan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRekapKencrengan.btn6Click(Sender: TObject);
begin
  pvwr.Print;
end;

procedure TfrmRekapKencrengan.btnFirstClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmRekapKencrengan.btnPriorClick(Sender: TObject);
begin
  pvwr.PriorPage;
end;

procedure TfrmRekapKencrengan.cmbZoomPropertiesChange(Sender: TObject);
begin
  try
    if (cmbZoom.Text <> '') then
    begin
      case cmbZoom.ItemIndex of
        0: pvwr.ZoomPercentage := 50;
        1: pvwr.ZoomPercentage := 100;
        2: pvwr.ZoomPercentage := 150;
      else
        pvwr.ZoomPercentage := StrToInt(cmbZoom.Text);
      end;
    end;
  except
    MessageBox(Handle, 'Format Salah', 'Zoom', MB_ICONWARNING + MB_OK);
  end;

end;

procedure TfrmRekapKencrengan.btnNextClick(Sender: TObject);
begin
  pvwr.NextPage;
end;

procedure TfrmRekapKencrengan.btnLastClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmRekapKencrengan.FormCreate(Sender: TObject);
begin
  Dt1.Date := Date;
end;

procedure TfrmRekapKencrengan.btnFilterClick(Sender: TObject);
begin
  hjrhCetak.TangalMasehi := Dt1.Date;
  hjrhCetak.TanggalHijriah;
  plblTanggal.Text := FormatDateTime('DDDD', Dt1.Date) + ', ' +
    hjrhCetak.TanggalHijriah + ' / ' +
    FormatDateTime('DD MMMM YYYY',
    Dt1.Date) + ' M';
  spRekap.Close;
  spRekap.Parameters[0].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
  spRekap.Parameters[1].Value := cbbViewUser.EditValue;
  spRekap.Open;
  hitung_total;
  plbl8.Caption:=eTotalKencrengan.EditingText;
  prprtRekap.PrintToDevices;
end;

procedure TfrmRekapKencrengan.hitung_total;
begin
  spTotalRekap.Close;
  spTotalRekap.Parameters[0].Value := FormatDateTime('YYYY-MM-DD', Dt1.Date);
  spTotalRekap.Parameters[1].Value := cbbViewUser.EditValue;
  spTotalRekap.Open;
  eTotalKencrengan.Text:=spTotalRekap.fieldbyname('total').AsString;
end;

end.

