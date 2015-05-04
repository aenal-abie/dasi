unit UTtpSaldoBulanan;

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
  cxCurrencyEdit, cxMemo, cxDropDownEdit, 
  cxTextEdit, cxMaskEdit, cxCalendar, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxButtons, cxPC, dxLayoutControlAdapters, ppViewr, ppParameter, ppBands,
  ppStrtch, ppCTMain, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppDBPipe, UHijriah, UGeneral, ActnList,
  ppModule, raCodMod, cxCustomPivotGrid, Periode, cxLookAndFeels, cxStyles,
  cxCustomData, cxFilter, cxData;

type
  TfrmTtpSaldoBulanan = class(TFGeneral)
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrp1: TdxLayoutGroup;
    pnl1: TPanel;
    img4: TImage;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    spProsesTutup: TADOStoredProc;
    dsPSekarang: TDataSource;
    hjrhCetak: THijriah;
    dsPenyaluran: TDataSource;
    prprtPengeluaran: TppReport;
    prmtrlst2: TppParameterList;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cxpgcntrl1: TcxPageControl;
    cxtbsht1: TcxTabSheet;
    dxlytcntrl2: TdxLayoutControl;
    dxlytgrp4: TdxLayoutGroup;
    cxtbsht3: TcxTabSheet;
    dxlytcntrl4: TdxLayoutControl;
    dxlytgrp3: TdxLayoutGroup;
    cxtbsht4: TcxTabSheet;
    dxlytcntrl3: TdxLayoutControl;
    pvwr: TppViewer;
    btn7: TcxButton;
    cmbZoom: TcxComboBox;
    btn8: TcxButton;
    btn9: TcxButton;
    btn10: TcxButton;
    btn11: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    qrySaldoSekarang: TADOQuery;
    pdbpln1: TppDBPipeline;
    lbl1: TLabel;
    phdrbnd2: TppHeaderBand;
    pmg2: TppImage;
    plbl1: TppLabel;
    plbl3: TppLabel;
    pcrstb1: TppCrossTab;
    pdtlbnd2: TppDetailBand;
    pftrbnd2: TppFooterBand;
    psmrybnd2: TppSummaryBand;
    rcdmdl1: TraCodeModule;
    lbldxlytcntrl1Item1: TdxLayoutItem;
    btn2: TcxButton;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    gridPSekarang: TcxGridDBTableView;
    cxgrdlvlGrid1Level2: TcxGridLevel;
    grid2: TcxGrid;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    ePriodeSekarang: TcxTextEdit;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    ePeriodeBerikutnya: TcxTextEdit;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    gcolmPSekarangnama_kel: TcxGridDBColumn;
    gcolmPSekarangnama_perkiraan: TcxGridDBColumn;
    gcolmPSekarangjenis: TcxGridDBColumn;
    gcolmPSekarangsaldo_awal: TcxGridDBColumn;
    qryPeriodeBerikutnya: TADOQuery;
    LCIdxlytcntrl4Item1: TdxLayoutItem;
    grid1: TcxGrid;
    gridBerikutnya: TcxGridDBTableView;
    cxgrdlvl1: TcxGridLevel;
    qryBerikutnya: TADOQuery;
    dsBerikutnya: TDataSource;
    gcolmBerikutnyanama_kel: TcxGridDBColumn;
    gcolmBerikutnyanama_perkiraan: TcxGridDBColumn;
    gcolmBerikutnyajenis: TcxGridDBColumn;
    gcolmBerikutnyasaldo_awal: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFirstClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    FPeriode: TFPeriode;
  public
    { Public declarations }
  end;

var
  frmTtpSaldoBulanan: TfrmTtpSaldoBulanan;

implementation

uses
  UKoneksi, UVariabel;

{$R *.dfm}

procedure TfrmTtpSaldoBulanan.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmTtpSaldoBulanan.btnFirstClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmTtpSaldoBulanan.btnPriorClick(Sender: TObject);
begin
  pvwr.PriorPage;
end;

procedure TfrmTtpSaldoBulanan.cmbZoomPropertiesChange(Sender: TObject);
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

procedure TfrmTtpSaldoBulanan.btnNextClick(Sender: TObject);
begin
  pvwr.NextPage;
end;

procedure TfrmTtpSaldoBulanan.btnLastClick(Sender: TObject);
begin
  pvwr.LastPage;
end;

procedure TfrmTtpSaldoBulanan.btn7Click(Sender: TObject);
begin
  pvwr.Print;
end;

procedure TfrmTtpSaldoBulanan.FormCreate(Sender: TObject);
begin
  FPeriode := TFPeriode.Create(nil);
  ePriodeSekarang.Text := FPPeriode;
  with qrySaldoSekarang do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := FPPeriode;
    Open;
    EnableControls;
  end;
  with qryPeriodeBerikutnya do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := FPPeriode;
    Open;
    EnableControls;
    ePeriodeBerikutnya.Text := Fieldbyname('thn_fiskal').AsString;
  end;
  with qryBerikutnya do
  begin
    DisableControls;
    Close;
    Parameters[0].Value := ePeriodeBerikutnya.Text;
    Open;
    EnableControls;
  end;
end;

procedure TfrmTtpSaldoBulanan.btn2Click(Sender: TObject);
begin
  if MessageBox(Handle, 'Anda akan menutup periode ini.' + #13#10 +
    'Jika anda memilih yes,maka periodeini akan menampilkan saldo akhir semua perkiraan,'
    + #13#10 + 'anda harus melakukan penutupan kas harian terlebih dahulu. ' + #13#10 +
    'Jika sudah maka silahkan ditutup. ',
    'Tutup Periode [Warning]', MB_YESNO + MB_ICONWARNING) = IDYES then
  begin
    FPeriode.thn_fiskal := FPPeriode;
    if (Self.FPeriode.tutupPeriode) then
    begin
      try
        FPeriode.Mulai_Transaksi;
        spProsesTutup.Close;
        spProsesTutup.Parameters[0].Value := ePriodeSekarang.Text;
        spProsesTutup.Parameters[1].Value := ePeriodeBerikutnya.Text;
        spProsesTutup.Parameters[2].Value := FPOperasional;
        spProsesTutup.ExecProc;
      finally
        FPeriode.Selesai_Transaksi;
        ADOKoneksi.createPeriode();
        MessageBox(Handle, 'Periode Ini Berhasil Ditutup', 'Informasi Tutup',
          MB_ICONINFORMATION + MB_OK);
        with qryBerikutnya do
        begin
          DisableControls;
          Close;
          Parameters[0].Value := ePeriodeBerikutnya.Text;
          Open;
          EnableControls;
        end;
      end;
    end;
  end;
end;
end.

