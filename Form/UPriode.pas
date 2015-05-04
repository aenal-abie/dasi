unit UPriode;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinscxPCPainter, cxContainer, cxEdit,
  dxLayoutcxEditAdapters, dxLayoutControl, 
  cxDataStorage, DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, dxGDIPlusClasses, StdCtrls, pngimage, ExtCtrls, Menus,
  cxButtons, UGeneral, Periode, dxLayoutLookAndFeels, ADODB, cxCheckBox,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  cxLookAndFeels, cxStyles, cxCustomData, cxFilter, cxData;

type
  TFrmPriode = class(TFGeneral)
    pnl1: TPanel;
    img4: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    img2: TImage;
    dxlytgrpLayoutControl1Group_Root: TdxLayoutGroup;
    dxlytcntrl1: TdxLayoutControl;
    meTahun: TcxMaskEdit;
    dxlytmdxlytcntrl1Item1: TdxLayoutItem;
    cmbBulan: TcxComboBox;
    dxlytmdxlytcntrl1Item2: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group1: TdxLayoutGroup;
    edTglMulai: TcxDateEdit;
    dxlytmdxlytcntrl1Item3: TdxLayoutItem;
    edTglBerakhir: TcxDateEdit;
    dxlytmdxlytcntrl1Item4: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group2: TdxLayoutGroup;
    btnBatal: TcxButton;
    dxlytmdxlytcntrl1Item5: TdxLayoutItem;
    btnBaru: TcxButton;
    dxlytmdxlytcntrl1Item6: TdxLayoutItem;
    dxlytgrpdxlytcntrl1Group3: TdxLayoutGroup;
    btnSimpan: TcxButton;
    dxlytmdxlytcntrl1Item7: TdxLayoutItem;
    btnUbah: TcxButton;
    dxlytmdxlytcntrl1Item8: TdxLayoutItem;
    btnHapus: TcxButton;
    dxlytmdxlytcntrl1Item9: TdxLayoutItem;
    dxLayoutLookAndFeelList1: TdxLayoutLookAndFeelList;
    qryPeriode: TADOQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxlytcntrl1Item1: TdxLayoutItem;
    cxGrid1DBTableView1thn_fiskal: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_mulai: TcxGridDBColumn;
    cxGrid1DBTableView1tgl_akhir: TcxGridDBColumn;
    cxGrid1DBTableView1status_penutupan: TcxGridDBColumn;
    qryPeriodethn_fiskal: TStringField;
    qryPeriodetgl_mulai: TDateTimeField;
    qryPeriodetgl_akhir: TDateTimeField;
    qryPeriodestatus_penutupan: TStringField;
    PopupMenu1: TPopupMenu;
    utup1: TMenuItem;
    Buka1: TMenuItem;
    dsPeriode: TDataSource;
    qryPeriodeline: TLargeintField;
    dxlytsknlkndfl1: TdxLayoutSkinLookAndFeel;
    dxlytlkndflst1: TdxLayoutLookAndFeelList;
    dxlytsprtrtmdxlytcntrl1SeparatorItem1: TdxLayoutSeparatorItem;
    LCIdxlytcntrl1Item2: TdxLayoutItem;
    btnRefresh: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure btnBaruClick(Sender: TObject);
    procedure btnBatalClick(Sender: TObject);
    procedure btnSimpanClick(Sender: TObject);
    procedure btnUbahClick(Sender: TObject);
    procedure btnHapusClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure utup1Click(Sender: TObject);
    procedure Buka1Click(Sender: TObject);
    procedure edTglMulaiPropertiesChange(Sender: TObject);
    procedure cmbBulanPropertiesChange(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    FPeriode: TFPeriode;
  public
    { Public declarations }
  end;

var
  FrmPriode: TFrmPriode;

implementation

uses cxGridDBDataDefinitions, UKoneksi;

{$R *.dfm}

procedure TFrmPriode.FormCreate(Sender: TObject);
begin
  FPeriode := TFPeriode.create(self);
  Logika_Button(False);
  Koneksikan;
end;

procedure TFrmPriode.btnBaruClick(Sender: TObject);
begin
  Logika_Button(True);
  meTahun.SetFocus;
  Self.Tag := 1;
end;

procedure TFrmPriode.btnBatalClick(Sender: TObject);
begin
  Logika_Button(False);
  meTahun.SetFocus;
end;

procedure TFrmPriode.btnSimpanClick(Sender: TObject);
begin
  with FPeriode do
  begin
    thn_fiskal := meTahun.Text + '-' + cmbBulan.Text;
    tgl_mulai := FormatDateTime('yyyy-mm-dd', edTglMulai.Date);
    tgl_akhir := FormatDateTime('yyyy-mm-dd', edTglBerakhir.Date);
    if (Self.Tag = 1) then
    begin
      if Insert then
      begin
        MessageBox(Handle, 'Data berhasil ditambahkan', 'Tambah Data',
          MB_ICONINFORMATION + MB_OK);
        refresh_AdoQuery(qryPeriode);
        Logika_Button(False);
      end
      else
        MessageBox(Handle, 'Data gagal ditambah', 'Tambah Data', MB_ICONWARNING
          + MB_OK);
    end
    else if (Self.Tag = 2) then
    begin
      thn_fiskal_lama := cxGrid1.Hint;
      if Update then
      begin
        MessageBox(Handle, 'Data berhasil diubah', 'Ubah Data',
          MB_ICONINFORMATION + MB_OK);
        refresh_AdoQuery(qryPeriode);
        Logika_Button(False);
      end
      else
        MessageBox(Handle, 'Data gagal diubah', 'Ubah Data', MB_ICONWARNING +
          MB_OK);
    end;
  end;
end;

procedure TFrmPriode.btnUbahClick(Sender: TObject);
begin
  Logika_Button(True);
  meTahun.Text := copy(cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value,
    1, 4);
  cmbBulan.Text := copy(cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value,
    6, 2);
  edTglMulai.Date := cxGrid1DBTableView1.Columns[1].DataBinding.Field.Value;
  edTglBerakhir.Date := cxGrid1DBTableView1.Columns[2].DataBinding.Field.Value;
  FPeriode.status_penutupan :=
    cxGrid1DBTableView1.Columns[3].DataBinding.Field.Value;
  cxGrid1.Hint := cxGrid1DBTableView1.Columns[0].DataBinding.Field.Value;
  Self.Tag := 2;
end;

procedure TFrmPriode.btnHapusClick(Sender: TObject);
begin
  with FPeriode do
  begin
    if (qryPeriode.RecordCount > 0) then
    begin
      thn_fiskal_lama :=
        cxGrid1DBTableView1thn_fiskal.DataBinding.Field.AsString;
      if MessageDlg('Anda Yakin Hapus ?', mtConfirmation, mbOKCancel, 0) = mrok
        then
        Delete;
      refresh_AdoQuery(qryPeriode);
    end;
  end;
end;

procedure TFrmPriode.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrmPriode.utup1Click(Sender: TObject);
begin
  with FPeriode do
  begin
    line := qryPeriodeline.Value;
    if not tutupPeriode then
      ShowMessage('Periksa periode sebelumnya apakah sudah ditutup?')
    else
      refresh_AdoQuery(qryPeriode);
  end;
end;

procedure TFrmPriode.Buka1Click(Sender: TObject);
begin
  with FPeriode do
  begin
    line := qryPeriodeline.Value;
    if not bukaPeriode then
      ShowMessage('Periksa periode dibawahnya apakah sudah dibuka?')
    else
      refresh_AdoQuery(qryPeriode);
  end;
end;

procedure TFrmPriode.edTglMulaiPropertiesChange(Sender: TObject);
begin
  edTglBerakhir.Date := edTglMulai.Date + 30;
end;

procedure TFrmPriode.cmbBulanPropertiesChange(Sender: TObject);
begin
  if (cmbBulan.Text <> '') then
    edTglMulai.Date := StrToDate('01/' + cmbBulan.Text + FormatDateTime('/YYYY',
      Now));
end;

procedure TFrmPriode.btnRefreshClick(Sender: TObject);
begin
  Koneksikan(qryPeriode);
end;

end.

