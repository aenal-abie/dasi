unit UHakaksesV2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutControl, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  DB, cxDBData, Menus, StdCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxTextEdit, dxGDIPlusClasses, pngimage,
  ExtCtrls, cxMaskEdit, cxDropDownEdit, dxLayoutLookAndFeels, UGeneral,
  ADODB, cxLookupEdit, cxDBLookupEdit, cxDBExtLookupComboBox, Hakakses;

type
  TFrmHakAkses = class(TFGeneral)
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    dxlytgrpdxlytcntrl1Group4: TdxLayoutGroup;
    gridModul: TcxGridDBTableView;
    cxgrdlvlModul: TcxGridLevel;
    grid: TcxGrid;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    gridHakakses: TcxGridDBTableView;
    cxgrdlvl2: TcxGridLevel;
    gridMenu: TcxGrid;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    btn1: TcxButton;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    btn2: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    btn3: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    btn4: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    spModul: TADOStoredProc;
    ds1: TDataSource;
    gcolmModulid: TcxGridDBColumn;
    gcolmModulmodul_name: TcxGridDBColumn;
    gcolmModultitle: TcxGridDBColumn;
    cbb1: TcxExtLookupComboBox;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    spUser: TADOStoredProc;
    ds2: TDataSource;
    gridUser: TcxGridDBTableView;
    gcolmUserid_user: TcxGridDBColumn;
    gcolmUserusername: TcxGridDBColumn;
    gcolmUserpassword: TcxGridDBColumn;
    gcolmUserkode_amil: TcxGridDBColumn;
    gcolmUsernama_amil: TcxGridDBColumn;
    spHakakses: TADOStoredProc;
    ds3: TDataSource;
    gcolmHakaksesid: TcxGridDBColumn;
    gcolmHakaksesid_modul: TcxGridDBColumn;
    gcolmHakaksesmodul_name: TcxGridDBColumn;
    gcolmHakaksesid_user: TcxGridDBColumn;
    gcolmHakaksesColumn1: TcxGridDBColumn;
    atncfldModulid: TAutoIncField;
    fieldModulmodul_name: TStringField;
    fieldModultitle: TStringField;
    intgrfldModulparent: TIntegerField;
    fieldModulmodul: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cbb1PropertiesChange(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure spModulCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmHakAkses: TFrmHakAkses;

implementation

uses
  UKoneksi, UVariabel;

{$R *.dfm}

procedure TFrmHakAkses.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmHakAkses.FormCreate(Sender: TObject);
begin
  spHakakses.Connection:=ADOKoneksi;
  spModul.Connection:=ADOKoneksi;
  FHakakses := TFHakAkses.Create(Application);
  cbb1.EditValue:=FPUser;
  spModul.Close;
  //spUser.Close;
  spHakakses.Close;
  cbb1PropertiesChange(Sender);
end;

procedure TFrmHakAkses.cbb1PropertiesChange(Sender: TObject);
begin
  spModul.Close;
  spModul.Parameters[0].Value := cbb1.EditValue;
  spModul.Open;
  spHakakses.Close;
  spHakakses.Parameters[0].Value := cbb1.EditValue;
  spHakakses.Open;
end;

procedure TFrmHakAkses.btn1Click(Sender: TObject);
begin
  if (gcolmModulid.DataBinding.Field.AsString <> '') then
  begin
    with FHakakses do
    begin
      modul_id := gcolmModulid.DataBinding.Field.AsInteger;
      modul_name := gcolmModulmodul_name.DataBinding.Field.AsString;
      user_id := cbb1.EditValue;
      if (FHakakses.insert = False) then
        MessageBox(Handle, 'Gagal tambah hak akses', 'Hak Akses', MB_ICONWARNING
          + MB_OK);
      cbb1PropertiesChange(Sender);
    end;
  end;

end;

procedure TFrmHakAkses.btn3Click(Sender: TObject);
begin
  spModul.First;
  while not (spModul.Eof) do
  begin
    with FHakakses do
    begin
      modul_id := gcolmModulid.DataBinding.Field.AsInteger;
      modul_name := gcolmModulmodul_name.DataBinding.Field.AsString;
      user_id := cbb1.EditValue;
      if (FHakakses.insert = False) then
        MessageBox(Handle, 'Gagal tambah hak akses', 'Hak Akses', MB_ICONWARNING
          + MB_OK);
      cbb1PropertiesChange(Sender);
    end;
    spModul.Next;
  end;
end;

procedure TFrmHakAkses.btn2Click(Sender: TObject);
begin
  with FHakakses do
  begin
    modul_id := gcolmHakaksesid_modul.DataBinding.Field.AsInteger;
    user_id := cbb1.EditValue;
    if (FHakakses.Delete=True) then
      MessageBeep(MB_OK);
  end;
  Koneksikan(spModul);
  Koneksikan(spHakakses);
end;

procedure TFrmHakAkses.btn4Click(Sender: TObject);
begin
  with FHakakses do
  begin
    user_id := cbb1.EditValue;
    if (FHakakses.Remove=True) then
      MessageBeep(MB_OK);
  end;
  Koneksikan(spModul);
  Koneksikan(spHakakses);
end;

procedure TFrmHakAkses.spModulCalcFields(DataSet: TDataSet);
begin
  if intgrfldModulparent.Value = -1 then
    fieldModulmodul.AsString := fieldModulmodul_name.AsString
  else
    fieldModulmodul.AsString :=  '   ' +#187  +
      fieldModulmodul_name.Value;
end;

end.

