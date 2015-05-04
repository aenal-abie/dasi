unit ULaporanHarian;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxLayoutControl,
  cxContainer, cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, cxTextEdit,
  cxMaskEdit, cxCalendar, Menus, cxButtons, 
  cxDataStorage, DB, cxDBData, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ADODB, dxLayoutLookAndFeels, ppDB,
  ppParameter, ppBands, ppCtrls, jpeg, ppPrnabl, ppClass, ppCache, ppProd,
  ppReport, ppComm, ppRelatv, ppDBPipe, UHijriah, dxLayoutControlAdapters,
  ppViewr, UGeneral, ppStrtch, ppCTMain,
  ppModule, raCodMod, cxCurrencyEdit, DBCtrls, cxCheckBox, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmLaporanHarian = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn1: TcxButton;
    btn2: TcxButton;
    cxgrdvwrpstry1: TcxGridViewRepository;
    gridAmil: TcxGridDBTableView;
    spAmil: TADOStoredProc;
    dsAmil: TDataSource;
    gcolmAmilkode_amil: TcxGridDBColumn;
    gcolmAmilnama_amil: TcxGridDBColumn;
    gcolmAmilhandphone: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    spLaporan: TADOStoredProc;
    ds1: TDataSource;
    hjrh1: THijriah;
    pdbpln1: TppDBPipeline;
    prprtHarian: TppReport;
    prmtrlst1: TppParameterList;
    btn5: TcxButton;
    dxlytcntrl2: TdxLayoutControl;
    DtTglKunjungan: TcxDateEdit;
    cbbAmil: TcxExtLookupComboBox;
    btn3: TcxButton;
    btn4: TcxButton;
    DtRekap: TcxDateEdit;
    pvwrHarian: TppViewer;
    btn6: TcxButton;
    cmbZoom: TcxComboBox;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    btn7: TcxButton;
    btn8: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group2: TdxLayoutGroup;
    dxlytlbldtm2: TdxLayoutLabeledItem;
    dxlytsprtrtm3: TdxLayoutSeparatorItem;
    dxlytmdxlytcntrl2Item1: TdxLayoutItem;
    dxlytgrpdxlytcntrl2Group6: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item9: TdxLayoutItem;
    dxlytm4: TdxLayoutItem;
    dxlytgrpdxlytcntrl2Group3: TdxLayoutGroup;
    dxlytlbldtm1: TdxLayoutLabeledItem;
    dxlytsprtrtm1: TdxLayoutSeparatorItem;
    dxlytm1: TdxLayoutItem;
    dxlytm2: TdxLayoutItem;
    dxlytgrp1: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item10: TdxLayoutItem;
    dxlytm3: TdxLayoutItem;
    dxlytsprtrtm2: TdxLayoutSeparatorItem;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    dxlytmdxlytcntrl2Item3: TdxLayoutItem;
    dxlytmdxlytcntrl2Item5: TdxLayoutItem;
    dxlytmdxlytcntrl2Item6: TdxLayoutItem;
    dxlytmdxlytcntrl2Item4: TdxLayoutItem;
    dxlytmdxlytcntrl2Item7: TdxLayoutItem;
    dxlytmdxlytcntrl2Item8: TdxLayoutItem;
    dxlytmdxlytcntrl2Item2: TdxLayoutItem;
    prprtRekap: TppReport;
    prmtrlst2: TppParameterList;
    spRekap: TADOStoredProc;
    ds2: TDataSource;
    pdbpln2: TppDBPipeline;
    qryTotal: TADOQuery;
    qryOperasional: TADOQuery;
    eCrPenerimaan: TcxCurrencyEdit;
    lbldxlytcntrl2Item1: TdxLayoutItem;
    eCrOperasinal: TcxCurrencyEdit;
    lbldxlytcntrl2Item2: TdxLayoutItem;
    eCrPenyaluran: TcxCurrencyEdit;
    lbldxlytcntrl2Item3: TdxLayoutItem;
    batasdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    qryKemitraan: TADOQuery;
    cbxland: TcxCheckBox;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    phdrbnd2: TppHeaderBand;
    pmg2: TppImage;
    plbl1: TppLabel;
    plblTgl: TppLabel;
    pcrstb2: TppCrossTab;
    lblLpdtlbnd2: TppDetailBand;
    pftrbnd2: TppFooterBand;
    psmrybnd2: TppSummaryBand;
    pln2: TppLine;
    pln3: TppLine;
    plblLdASI1: TppLabel;
    plblLdASI2: TppLabel;
    plblLtOTAL: TppLabel;
    plbladada: TppLabel;
    plblL2: TppLabel;
    plblL3: TppLabel;
    pln1: TppLine;
    pln4: TppLine;
    plbl2: TppLabel;
    plbl3: TppLabel;
    plbl4: TppLabel;
    plbl5: TppLabel;
    pfldpdbpln2ppField1: TppField;
    pfldpdbpln2ppField2: TppField;
    pfldpdbpln2ppField3: TppField;
    pfldpdbpln2ppField4: TppField;
    pfldpdbpln2ppField5: TppField;
    pfldpdbpln1ppField1: TppField;
    pfldpdbpln1ppField2: TppField;
    pfldpdbpln1ppField3: TppField;
    pfldpdbpln1ppField4: TppField;
    pfldpdbpln1ppField5: TppField;
    phdrbnd1: TppHeaderBand;
    pmg1: TppImage;
    plbllblplbl2: TppLabel;
    plbllblplbl3: TppLabel;
    plblAmilatas: TppLabel;
    plbllblplbl5: TppLabel;
    plblTanggal: TppLabel;
    pcrstb1: TppCrossTab;
    lblLpdtlbnd1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    psmrybnd1: TppSummaryBand;
    plbllblplbl8: TppLabel;
    plbllblplbl9: TppLabel;
    plbllblplbl10: TppLabel;
    plblAmilbawah: TppLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPriorClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnLastClick(Sender: TObject);
    procedure cmbZoomPropertiesChange(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure pcrstb1GetCaptionText(Sender: TObject; aElement: TppElement;
      aColumn, aRow: Integer; const aDisplayFormat: string;
      aValue: Variant; var aText: string);
    procedure pcrstb1GetTotalCaptionText(Sender: TObject;
      aElement: TppElement; aColumn, aRow: Integer; var aText: string);
    procedure btn4Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure pcrstb2GetCaptionText(Sender: TObject; aElement: TppElement;
      aColumn, aRow: Integer; const aDisplayFormat: string;
      aValue: Variant; var aText: string);
    procedure btn3Click(Sender: TObject);
    procedure pcrstb2GetTotalCaptionText(Sender: TObject;
      aElement: TppElement; aColumn, aRow: Integer; var aText: string);
    procedure FormCreate(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
  private
    { Private declarations }
  private

  public
    { Public declarations }
  end;

var
  FrmLaporanHarian: TFrmLaporanHarian;

implementation

uses
  UKoneksi;

{$R *.dfm}

procedure TFrmLaporanHarian.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmLaporanHarian.btnPriorClick(Sender: TObject);
begin
  pvwrHarian.PriorPage;
end;

procedure TFrmLaporanHarian.btnNextClick(Sender: TObject);
begin
  pvwrHarian.NextPage;
end;

procedure TFrmLaporanHarian.btnLastClick(Sender: TObject);
begin
  pvwrHarian.LastPage;
end;

procedure TFrmLaporanHarian.cmbZoomPropertiesChange(Sender: TObject);
begin
  try
    if (cmbZoom.Text <> '') then
    begin
      case cmbZoom.ItemIndex of
        0: pvwrHarian.ZoomPercentage := 50;
        1: pvwrHarian.ZoomPercentage := 100;
        2: pvwrHarian.ZoomPercentage := 150;
      else
        pvwrHarian.ZoomPercentage := StrToInt(cmbZoom.Text);
      end;
    end;
  except
    MessageBox(Handle, 'Format Salah', 'Zoom', MB_ICONWARNING + MB_OK);
  end;
end;

procedure TFrmLaporanHarian.btn6Click(Sender: TObject);
begin
  pvwrHarian.Print;
end;

procedure TFrmLaporanHarian.pcrstb1GetCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer;
  const aDisplayFormat: string; aValue: Variant; var aText: string);
begin
  if (aText = 'nama_lengkap') then
    aText := 'Nama Donatur'
  else if (aText = 'kode_kwitansi') then
    aText := 'No Kwit'
  else if (aText = 'nama_perkiraan') then
    aText := 'Jenis ZISWAF'
  else if (aText = 'Sum of subtotal') then
    aText := 'Data Kunjungan';

end;

procedure TFrmLaporanHarian.pcrstb1GetTotalCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer; var aText: string);
begin
  if (aText = 'Grand Total') then
    aText := 'Jumlah'
end;

procedure TFrmLaporanHarian.btn4Click(Sender: TObject);
begin
  if cek_kosong(2) = True then
  begin
    if (cbxland.Checked = True) then
      prprtHarian.Template.FileName := ExtractFilePath(Application.ExeName) +
        'template\harian-land.rtm'
    else
      prprtHarian.Template.FileName := ExtractFilePath(Application.ExeName) +
        'template\harian.rtm';
    prprtHarian.Template.LoadFromFile;
    spLaporan.Close;
    spLaporan.Parameters[0].value := cbbAmil.EditValue;
    spLaporan.Parameters[1].value := FormatDateTime('YYYY-MM-DD',
      DtTglKunjungan.Date);
    ;
    spLaporan.Open;
    plblAmilatas.Caption := cbbAmil.Text;
    plblAmilbawah.Caption := '( ' + cbbAmil.Text + ' )';
    hjrh1.TangalMasehi := DtTglKunjungan.Date;
    plblTanggal.Text := FormatDateTime('DDDD', DtTglKunjungan.Date) + ', ' +
      hjrh1.TanggalHijriah + ' / ' + FormatDateTime('DD MMMM YYYY',
      DtTglKunjungan.Date);
    prprtHarian.AllowPrintToFile := False;

    //ShowMessage(ExtractFilePath(Application.ExeName));
    pvwrHarian.Report := prprtHarian;
    prprtHarian.PrintToDevices;
  end;

end;

procedure TFrmLaporanHarian.btn8Click(Sender: TObject);
begin
  prprtHarian.AllowPrintToFile := True;
  prprtHarian.DeviceType := 'XLSReport';
  prprtHarian.PrintReport;

end;

procedure TFrmLaporanHarian.pcrstb2GetCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer;
  const aDisplayFormat: string; aValue: Variant; var aText: string);
begin

  if (aText = 'nama_amil') then
    aText := 'Nama Amil'
  else if (aText = 'nama_perkiraan') then
    aText := 'Jenis ZISWAF'
  else if (aText = 'Sum of subtotal') then
    aText := 'Rekap';
end;

procedure TFrmLaporanHarian.btn3Click(Sender: TObject);
begin
  if cek_kosong(1) = True then
  begin
    if (cbxland.Checked = True) then
      prprtRekap.Template.FileName := ExtractFilePath(Application.ExeName) +
        'template\RekapAmil-land.rtm'
    else
      prprtRekap.Template.FileName := ExtractFilePath(Application.ExeName) +
        'template\RekapAmil.rtm';
    prprtRekap.Template.LoadFromFile;
    qryTotal.Connection := ADOKoneksi;
    qryOperasional.Connection := ADOKoneksi;
    qryKemitraan.Connection := ADOKoneksi;
    qryKemitraan.Close;
    qryKemitraan.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      DtRekap.Date);
    qryKemitraan.Open;
    qryTotal.Close;
    qryTotal.Parameters[0].Value := FormatDateTime('YYYY-MM-DD', DtRekap.Date);
    qryTotal.Open;
    qryOperasional.Close;
    qryOperasional.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
      DtRekap.Date);
    qryOperasional.Open;
    eCrPenerimaan.Value := qryTotal.FieldByName('total').AsCurrency;
    // +      qryKemitraan.FieldByName('total').AsCurrency;
    eCrOperasinal.Value := qryOperasional.FieldByName('total').AsCurrency;
    eCrPenyaluran.Value := eCrPenerimaan.Value - eCrOperasinal.Value;
    spRekap.Close;
    spRekap.Parameters[0].value := FormatDateTime('YYYY-MM-DD', DtRekap.Date);
    spRekap.Open;
    hjrh1.TangalMasehi := DtRekap.Date;
    plblLdASI1.Caption := eCrPenyaluran.EditingText;
    plblLdASI2.Caption := eCrOperasinal.EditingText;
    plblLtOTAL.Caption := eCrPenerimaan.EditingText;
    plblTgl.Text := FormatDateTime('DDDD', DtRekap.Date) + ', ' +
      hjrh1.TanggalHijriah + ' / ' + FormatDateTime('DD MMMM YYYY',
      DtRekap.Date);
    prprtRekap.AllowPrintToFile := False;
    pvwrHarian.Report := prprtRekap;
    prprtRekap.PrintToDevices;
  end;

end;

procedure TFrmLaporanHarian.pcrstb2GetTotalCaptionText(Sender: TObject;
  aElement: TppElement; aColumn, aRow: Integer; var aText: string);
begin
  aText := 'Total';
end;

procedure TFrmLaporanHarian.FormCreate(Sender: TObject);
begin
  Koneksikan(spAmil);
  Koneksikan(spLaporan);
  Koneksikan(spRekap);
  DtRekap.Date := Date;
  DtTglKunjungan.Date := Date;
end;

procedure TFrmLaporanHarian.btn7Click(Sender: TObject);
begin
  prprtRekap.AllowPrintToFile := True;
  prprtRekap.DeviceType := 'XLSReport';
  prprtRekap.PrintReport;

end;

procedure TFrmLaporanHarian.btnFirstClick(Sender: TObject);
begin
  pvwrHarian.LastPage;
end;

end.

