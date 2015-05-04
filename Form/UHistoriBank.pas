unit UHistoriBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeelPainters, Menus,
  cxControls, cxContainer, cxEdit, dxLayoutcxEditAdapters, dxLayoutControl,
  cxDataStorage, DB, cxDBData,
  cxCurrencyEdit, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, StdCtrls,
  cxButtons, pngimage, ExtCtrls, dxLayoutLookAndFeels, UGeneral,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxLookAndFeels,
  cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmFrmHistoriMutasi = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    btn5: TcxButton;
    btn2: TcxButton;
    btn1: TcxButton;
    dxlytcntrl2: TdxLayoutControl;
    btn9: TcxButton;
    DtSbm: TcxDateEdit;
    dxlytgrp2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl2Group1: TdxLayoutGroup;
    dxlytlbldtmdxlytcntrl2LabeledItem1: TdxLayoutLabeledItem;
    batasdxlytsprtrtmdxlytcntrl2SeparatorItem1: TdxLayoutSeparatorItem;
    LCIdxlytcntrl2Item1: TdxLayoutItem;
    dxlytgrpdxlytcntrl2Group7: TdxLayoutGroup;
    LCIdxlytmdxlytcntrl2Item12: TdxLayoutItem;
    spLaporanHarian: TADOStoredProc;
    LCIdxlytcntrl2Item2: TdxLayoutItem;
    grid1: TcxGrid;
    gridGrid1DBTableView1: TcxGridDBTableView;
    cxgrdlvlGrid1Level1: TcxGridLevel;
    ds1: TDataSource;
    gcolmGrid1DBTableView1urut: TcxGridDBColumn;
    gcolmGrid1DBTableView1SaldoAwal: TcxGridDBColumn;
    gcolmGrid1DBTableView1saldo: TcxGridDBColumn;
    gcolmGrid1DBTableView1total: TcxGridDBColumn;
    gcolmGrid1DBTableView1operasi: TcxGridDBColumn;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    qryRekening: TADOQuery;
    FRekeningkode_penyimpanan: TSmallintField;
    FRekeningnama_tempat: TStringField;
    FRekeningsaldo_awal: TFloatField;
    FRekeningakumulasi: TStringField;
    FRekeningno_rekening: TStringField;
    dsRekening: TDataSource;
    LCIdxlytcntrl2Item3: TdxLayoutItem;
    cbbSource: TcxLookupComboBox;
    gcolmGrid1DBTableView1dari: TcxGridDBColumn;
    gcolmGrid1DBTableView1ke: TcxGridDBColumn;
    LCIdxlytcntrl2Item4: TdxLayoutItem;
    Dt1: TcxDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn9Click(Sender: TObject);
    procedure cbbSourcePropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFrmHistoriMutasi: TfrmFrmHistoriMutasi;

implementation

uses
  UVariabel;

{$R *.dfm}

procedure TfrmFrmHistoriMutasi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmFrmHistoriMutasi.btn9Click(Sender: TObject);
begin
  if (DtSbm.EditText = '') then
    DtSbm.Date := FPPeriodeAwal;
  if (Dt1.EditText = '') then
    Dt1.Date := FPPeriodeAkhir;
  cbbSource.EditValue := Tag;
  spLaporanHarian.Close;
  spLaporanHarian.Parameters[0].Value := FormatDateTime('YYYY-MM-DD',
    DtSbm.Date);
  spLaporanHarian.Parameters[1].Value := FormatDateTime('YYYY-MM-DD',
    Dt1.Date);
  spLaporanHarian.Parameters[2].Value := Self.Tag;
  spLaporanHarian.Parameters[3].Value := FPPenyimpanan;
  Koneksikan(spLaporanHarian);
end;

procedure TfrmFrmHistoriMutasi.cbbSourcePropertiesChange(Sender: TObject);
begin
  Tag := cbbSource.EditValue;
end;

end.

