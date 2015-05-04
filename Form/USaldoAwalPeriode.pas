unit USaldoAwalPeriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus,
  dxLayoutcxEditAdapters, dxLayoutControl, cxDropDownEdit, StdCtrls,
  cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  cxTextEdit, cxMaskEdit, dxGDIPlusClasses, pngimage, ExtCtrls, UGeneral,
  Perkiraan,
  ADODB, cxCurrencyEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  dxLayoutLookAndFeels, cxPC, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue;

type
  TfrmSaldoAwalPeriode = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    dxlytcntrl1: TdxLayoutControl;
    grid1: TcxGrid;
    cxgrdbtblvwGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytm1: TdxLayoutItem;
    qry_perkiraan: TADOQuery;
    ds_perkiraan: TDataSource;
    cxgrdbtblvwGrid1DBTableView1level: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1saldo_awal: TcxGridDBColumn;
    cxgrdbtblvwGrid1DBTableView1nama_kelompok: TcxGridDBColumn;
    lkpNama_Kelompok: TcxLookupComboBox;
    dxlytcntrl1Item2: TdxLayoutItem;
    qryLkpKel: TADOQuery;
    DSLkpKel: TDataSource;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qryHeader: TADOQuery;
    dsHeader: TDataSource;
    tabs: TcxTabControl;
    dxlytcntrl1Item5: TdxLayoutItem;
    qryLkpKelkd_kel: TStringField;
    qryLkpKelnama_kel: TStringField;
    qryLkpKeljenis: TStringField;
    qryHeaderid_perkiraan: TStringField;
    qryHeadernama_perkiraan: TStringField;
    cxgrdbtblvwGrid1DBTableView1calc_namaPerkiraan: TcxGridDBColumn;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytgrpdxlytcntrl1Group5: TdxLayoutGroup;
    dxlytsprtrtmdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    img2: TImage;
    fltfld_perkiraansaldo_awal: TFloatField;
    fieldNamaPerkiraan: TStringField;
    field_perkiraanid_perkiraan: TStringField;
    field_perkiraanjenis: TStringField;
    field_perkiraannama_kel: TStringField;
    field_perkiraankd_kel: TStringField;
    fieldLevel: TStringField;
    fieldAlias: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnBatalClick(Sender: TObject);
    procedure tabsChange(Sender: TObject);
    procedure qry_perkiraanCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    FPerkiraan: TFPerkiraan;
  public
    { Public declarations }
  end;

var
  frmSaldoAwalPeriode: TfrmSaldoAwalPeriode;

implementation

uses cxGridDBDataDefinitions;

{$R *.dfm}

procedure TfrmSaldoAwalPeriode.FormCreate(Sender: TObject);
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
    {while not qryLkpKel.Eof do
    begin
      Tabs.Append(qryLkpKelnama_kel.Value);
      qryLkpKel.Next;
    end;}
  end;
  qry_perkiraan.Filtered := False;
  qry_perkiraan.Filter := 'jenis=' + QuotedStr('IN');
  qry_perkiraan.Filtered := True;
  FPerkiraan.refresh_AdoQuery(qry_perkiraan);
end;

procedure TfrmSaldoAwalPeriode.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmSaldoAwalPeriode.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
end;

procedure TfrmSaldoAwalPeriode.tabsChange(Sender: TObject);
begin
  qry_perkiraan.Filtered := False;
  if (tabs.TabIndex = 0) then
    qry_perkiraan.Filter := 'jenis=' + QuotedStr('IN')
  else if (tabs.TabIndex = 1) then
    qry_perkiraan.Filter := 'jenis=' + QuotedStr('OUT');
  qry_perkiraan.Filtered := True;
end;

procedure TfrmSaldoAwalPeriode.qry_perkiraanCalcFields(DataSet: TDataSet);
begin
  if fieldLevel.Value = 'Header' then
    fieldAlias.AsString := fieldNamaPerkiraan.Value
  else
    fieldAlias.AsString := '          ' +
      fieldNamaPerkiraan.Value;
end;

end.

