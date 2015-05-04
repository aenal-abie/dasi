unit UFilterDonatur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  cxDataStorage, cxEdit, DB,
  cxDBData, cxContainer, dxLayoutcxEditAdapters, dxLayoutControl, Menus,
  StdCtrls, cxButtons, ADODB, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxLayoutLookAndFeels, cxCheckBox,UGeneral,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TfrmFilterKab = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytcxlkndfl1: TdxLayoutCxLookAndFeel;
    dxlytcxlkndfl2: TdxLayoutCxLookAndFeel;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dsKabupaten: TDataSource;
    spKabupaten: TADOStoredProc;
    FKabupatenkode_kab: TStringField;
    FKabupatennama_kab_kota: TStringField;
    FKabupatenalias: TStringField;
    GridRepcxgrdvwrpstry1: TcxGridViewRepository;
    gridKab: TcxGridDBTableView;
    gcolmKabkode_kab: TcxGridDBColumn;
    gcolmKabnama_kab_kota: TcxGridDBColumn;
    gcolmKabalias: TcxGridDBColumn;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    cbbKecamatan: TcxExtLookupComboBox;
    qryKec: TADOQuery;
    FKeckode_kec: TStringField;
    FKeckode_kab: TStringField;
    FKecnama_kecamatan: TStringField;
    dsKec: TDataSource;
    GridRepcxgrdvwrpstry2: TcxGridViewRepository;
    gridcKec: TcxGridDBTableView;
    gcolmKeckode_kec: TcxGridDBColumn;
    gcolmKeckode_kab: TcxGridDBColumn;
    gcolmKecnama_kecamatan: TcxGridDBColumn;
    LCIdxlytcntrl1Item1: TdxLayoutItem;
    cbbKab: TcxExtLookupComboBox;
    btn1: TcxButton;
    LCIdxlytcntrl1Item3: TdxLayoutItem;
    cbx1: TcxCheckBox;
    LCIdxlytcntrl1Item4: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    btn2: TcxButton;
    LCIdxlytcntrl1Item5: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    procedure cbbKabPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFilterKab: TfrmFilterKab;

implementation

{$R *.dfm}

procedure TfrmFilterKab.cbbKabPropertiesChange(Sender: TObject);
begin
  qryKec.Close;
  qryKec.Parameters[0].Value := cbbKab.EditValue;
  qryKec.Open;
end;

end.
