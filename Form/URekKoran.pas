unit URekKoran;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsdxBarPainter, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxSkinscxPCPainter, cxContainer,
  cxEdit, dxLayoutcxEditAdapters, cxDropDownEdit, 
  cxDBLookupComboBox, cxMaskEdit, cxCalendar,
  dxLayoutControl, cxTextEdit, cxClasses, dxBar, 
  cxDataStorage, DB, cxDBData, Menus, StdCtrls,
  cxButtons, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxLayoutLookAndFeels, ADODB,
  UGeneral, 
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, pngimage, ExtCtrls, cxCurrencyEdit,
  cxButtonEdit, cxPC, ppCtrls, ppBands, ppPrnabl, ppClass,
  ppCache, ppDB, ppParameter, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport,
  dxLayoutControlAdapters, ppViewr, cxDBExtLookupComboBox, jpeg, ppVar,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmRekKoran = class(TFGeneral)
    dxLayoutControl1Group_Root: TdxLayoutGroup;
    dxLayoutControl1: TdxLayoutControl;
    dariTgl: TcxDateEdit;
    dxLayoutControl1Item2: TdxLayoutItem;
    sampaiTgl: TcxDateEdit;
    dxLayoutControl1Item3: TdxLayoutItem;
    btnFilter: TcxButton;
    dxLayoutControl1Item7: TdxLayoutItem;
    dsTransaksi: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    spTransaksi: TADOStoredProc;
    dxlytgrpLayoutControl1Group2: TdxLayoutGroup;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytsprtrtmLayoutControl1SeparatorItem1: TdxLayoutSeparatorItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    eDonatur: TcxButtonEdit;
    lblLayoutControl1Item1: TdxLayoutItem;
    dxlytgrpLayoutControl1Group1: TdxLayoutGroup;
    dxlytgrpLayoutControl1Group3: TdxLayoutGroup;
    cxpgcntrl1: TcxPageControl;
    lblLayoutControl1Item2: TdxLayoutItem;
    cxtbsht1: TcxTabSheet;
    cxtbsht2: TcxTabSheet;
    grid1: TcxGrid;
    gridTrans: TcxGridDBTableView;
    gcolmTranstanggal: TcxGridDBColumn;
    gcolmTransnama_perkiraan: TcxGridDBColumn;
    gcolmTranssubtotal: TcxGridDBColumn;
    cxgrdlvlgrid1Level1: TcxGridLevel;
    prprtRek: TppReport;
    pdbpln1: TppDBPipeline;
    prmtrlst1: TppParameterList;
    phdrbnd1: TppHeaderBand;
    lblL1: TppDetailBand;
    pftrbnd1: TppFooterBand;
    pdbtxttanggal: TppDBText;
    pdbtxtnama_perkiraan: TppDBText;
    pdbtxtsubtotal: TppDBText;
    psmrybnd1: TppSummaryBand;
    pdbclc1: TppDBCalc;
    dxlytgrpLayoutControl2Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    lbldxlytcntrl1Item2: TdxLayoutItem;
    dxlytcntrl2: TdxLayoutControl;
    pvwr1: TppViewer;
    btn6: TcxButton;
    cmbZoom: TcxComboBox;
    btnFirst: TcxButton;
    btnPrior: TcxButton;
    btnNext: TcxButton;
    btnLast: TcxButton;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group4: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group5: TdxLayoutGroup;
    lbldxlytmdxlytcntrl2Item3: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item5: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item6: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item4: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item7: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item8: TdxLayoutItem;
    lbldxlytmdxlytcntrl2Item2: TdxLayoutItem;
    pmg1: TppImage;
    lblNamaDonatur: TppLabel;
    lblAlamat: TppLabel;
    lblTlp: TppLabel;
    lbl5: TppLabel;
    lbl6: TppLabel;
    lbl7: TppLabel;
    lbl8: TppLabel;
    lbl9: TppLabel;
    pshp1: TppShape;
    pshp2: TppShape;
    pshp3: TppShape;
    pshp4: TppShape;
    pdbclc2: TppDBCalc;
    pln1: TppLine;
    lbl10: TppLabel;
    lbl11: TppLabel;
    lblTotalZakat: TppLabel;
    lblTotalInfaq: TppLabel;
    pln2: TppLine;
    plnAlamat: TppLine;
    pln4: TppLine;
    pln5: TppLine;
    pln6: TppLine;
    lbl14: TppLabel;
    psystmvrbl1: TppSystemVariable;
    lbl3: TppLabel;
    sp1: TADOStoredProc;
    plblKemitraan: TppLabel;
    plblCKemitraan: TppLabel;
    plnBawah: TppLine;
    plnKanan: TppLine;
    plnKiri: TppLine;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFilterClick(Sender: TObject);
    procedure eDonaturPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure cmb1PropertiesChange(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnFirstClick(Sender: TObject);
  private
    { Private declarations }
    procedure hitung_zakat_infaq;

  public
    { Public declarations }
  end;

var
  frmRekKoran: TfrmRekKoran;

implementation

uses UKoneksi, UFindDonatur, UVariabel;

{$R *.dfm}

procedure TfrmRekKoran.FormCreate(Sender: TObject);
begin
  dariTgl.Date := Date;
  sampaiTgl.Date := Date;
  eDonatur.Text := '';
end;

procedure TfrmRekKoran.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmRekKoran.btnFilterClick(Sender: TObject);
begin
  if (cek_kosong(1)) then
  begin
    with spTransaksi do
    begin
      Connection := ADOKoneksi;
      DisableControls;
      Close;
      Parameters[0].Value := eDonatur.Hint;
      Parameters[1].Value := FormatDateTime('yyyy-mm-dd', dariTgl.Date);
      Parameters[2].Value := FormatDateTime('yyyy-mm-dd', sampaiTgl.Date);
      Open;
      EnableControls;
    end;
    lblNamaDonatur.Caption := eDonatur.Text;
    lblAlamat.Caption := 'Alamat ' + grid1.Hint;
    lblTlp.Caption := 'Handphone/Tlp :' + Self.Hint;
    hitung_zakat_infaq;
    prprtRek.PrintToDevices;
  end;
end;

procedure TfrmRekKoran.eDonaturPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
  frmFindDonatur := TfrmFindDonatur.Create(nil);
  with frmFindDonatur do
  begin
    if (ShowModal = mrOk) then
    begin
      eDonatur.EditValue :=
        gcolmDonaturnama_lengkap.DataBinding.Field.AsString;
      eDonatur.Hint := gcolmDonaturkode_donatur.DataBinding.Field.AsString;
      Self.grid1.Hint := gcolmDonaturalamat_rumah.DataBinding.Field.AsString;
      Self.Hint := gcolmDonaturhandphone.DataBinding.Field.AsString;
      btnFilter.Hint := gcolmDonaturKemitraan.DataBinding.Field.AsString;
    end;
  end;
  FreeAndNil(frmFindDonatur);

end;

procedure TfrmRekKoran.cmb1PropertiesChange(Sender: TObject);
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

procedure TfrmRekKoran.btn6Click(Sender: TObject);
begin
  pvwr1.Print;
end;

procedure TfrmRekKoran.btnNextClick(Sender: TObject);
begin
  pvwr1.NextPage;
end;

procedure TfrmRekKoran.btnFirstClick(Sender: TObject);
begin
  pvwr1.FirstPage;
end;

procedure TfrmRekKoran.hitung_zakat_infaq;
begin
  with sp1 do
  begin
    Connection := ADOKoneksi;
    DisableControls;
    Close;
    Parameters[0].Value := eDonatur.Hint;
    Parameters[1].Value := FormatDateTime('yyyy-mm-dd', dariTgl.Date);
    Parameters[2].Value := FormatDateTime('yyyy-mm-dd', sampaiTgl.Date);
    Parameters[3].Value := FPZakat;
    Parameters[4].Value := FPInfaq;
    Open;
    EnableControls;
    lblTotalZakat.Caption := FormatFloat('###,###,##0',
      FieldByname('total_zakat').AsCurrency);
    lblTotalInfaq.Caption := FormatFloat('###,###,##0',
      FieldByname('total_infaq').AsCurrency);
    if (btnFilter.Hint <> '0') then
    begin
      plblKemitraan.Text := FormatCurr('###,###,##0',
        FieldByname('total').AsCurrency -
        (FieldByname('total_infaq').AsCurrency +
        FieldByname('total_zakat').AsCurrency));
      plnKiri.Visible := True;
      plnBawah.Visible := True;
      plnKanan.Visible := True;
      plblKemitraan.Visible := True;
      plblCKemitraan.Visible := True;
    end
    else
    begin
      plnKiri.Visible := False;
      plnBawah.Visible := False;
      plnKanan.Visible := False;
      plblKemitraan.Visible := False;
      plblCKemitraan.Visible := False;
    end;
  end;
end;

end.

