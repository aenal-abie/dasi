unit UMNotaPengeluaran;

interface

uses
  SysUtils, Classes, ppParameter, ppBands, jpeg, ppPrnabl, ppClass,
  ppCtrls, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TDMNotaPengeluaran = class(TDataModule)
    pdbplnLap: TppDBPipeline;
    prprtLap: TppReport;
    phdrbnd1: TppHeaderBand;
    lblLSumber: TppDetailBand;
    pftrbnd1: TppFooterBand;
    prmtrlst1: TppParameterList;
    plbl3: TppLabel;
    lblLTanggal: TppLabel;
    lblL2: TppLabel;
    pln1: TppLine;
    pln2: TppLine;
    pln3: TppLine;
    pln4: TppLine;
    psmrybnd1: TppSummaryBand;
    pln5: TppLine;
    pln6: TppLine;
    pln7: TppLine;
    lblL4: TppLabel;
    lblL5: TppLabel;
    lblL6: TppLabel;
    pln8: TppLine;
    pln9: TppLine;
    pln10: TppLine;
    pln11: TppLine;
    pln12: TppLine;
    pln13: TppLine;
    pln14: TppLine;
    lblL7: TppLabel;
    pln15: TppLine;
    pln16: TppLine;
    pln17: TppLine;
    pln18: TppLine;
    pln19: TppLine;
    pln20: TppLine;
    lblLNoNota: TppLabel;
    lbl1: TppLabel;
    lbl2: TppLabel;
    pdbtxtnama_perkiraan: TppDBText;
    pdbtxtketerangan: TppDBText;
    pdbtxtpenerimaa_manfaat: TppDBText;
    pdbtxtjumlah: TppDBText;
    pdbclc1: TppDBCalc;
    lblVoucher: TppLabel;
    pln21: TppLine;
    plbl2: TppLabel;
    plbl1: TppLabel;
    plbl4: TppLabel;
    plbl5: TppLabel;
    pdbclc3: TppDBCalc;
    pfldLapppField1: TppField;
    pfldLapppField2: TppField;
    pfldLapppField3: TppField;
    pfldLapppField4: TppField;
    pfldLapppField5: TppField;
    pfldLapppField6: TppField;
    pfldLapppField7: TppField;
    pfldLapppField8: TppField;
    pfldLapppField9: TppField;
    pfldLapppField10: TppField;
    pfldLapppField11: TppField;
    pfldLapppField12: TppField;
    pln22: TppLine;
    pdbclc2: TppDBCalc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMNotaPengeluaran: TDMNotaPengeluaran;

implementation

uses
  UPengeluaranV2;

{$R *.dfm}

end.
