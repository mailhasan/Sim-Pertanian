unit UnitDm;

interface

uses
  SysUtils, Classes, ZAbstractConnection, ZConnection, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TDataModule1 = class(TDataModule)
    conFarm: TZConnection;
    zqryLahan: TZQuery;
    dsLahan: TDataSource;
    zqryJenisTanaman: TZQuery;
    dsJenisTanaman: TDataSource;
    zqrykegiatanKelolahLahan: TZQuery;
    dskegiatanKelolahLahan: TDataSource;
    zqrydetailKegiatanKelolahLahan: TZQuery;
    dsdetailKegiatanKelolahLahan: TDataSource;
    zqryhasilPanen: TZQuery;
    dshasilpanen: TDataSource;
    zqrypenggunaanalat: TZQuery;
    dspenggunaanalat: TDataSource;
    zqryPegawai: TZQuery;
    dspegawai: TDataSource;
    zqrypelaksanapekerja: TZQuery;
    dspelaksanapekerja: TDataSource;
    zqrypupukobat: TZQuery;
    dspupukobat: TDataSource;
    zqrySatuan: TZQuery;
    dsSatuan: TDataSource;
    zqrypembelianPupukObat: TZQuery;
    dspembelianPupukObat: TDataSource;
    zqrydetailPembelianPupukObat: TZQuery;
    dsdetailPembelianPupukObat: TDataSource;
    zqryTampilPupukObat: TZQuery;
    dsTampilPupukObat: TDataSource;
    zqrypenggunaanpupukobat: TZQuery;
    dspenggunaanpupukobat: TDataSource;
    procedure conFarmAfterConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

procedure TDataModule1.conFarmAfterConnect(Sender: TObject);
begin
  zqryLahan.Active := True;
  zqryJenisTanaman.Active := True;
  zqrykegiatanKelolahLahan.Active := True;
  zqrydetailKegiatanKelolahLahan.Active := True;
  zqryhasilPanen.Active := True;
  zqrypenggunaanalat.Active := True;
  zqryPegawai.Active := True;
  zqrypelaksanapekerja.Active := True;
  zqrypupukobat.Active := True;
  zqrySatuan.Active := True;
  zqrypembelianPupukObat.Active := True;
  zqrydetailPembelianPupukObat.Active := True;
  zqryTampilPupukObat.Active := True;
  zqrypenggunaanpupukobat.Active := True;
end;

end.
