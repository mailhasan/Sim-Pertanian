program ProjectNfiFarm;

uses
  Forms,
  UnitUtama in 'UnitUtama.pas' {Form1},
  UnitDataLokasiLahan in 'UnitDataLokasiLahan.pas' {FormDaftarDataLokasiLahan},
  UnitDm in 'UnitDm.pas' {DataModule1: TDataModule},
  UnitTambahDataJenisTanaman in 'UnitTambahDataJenisTanaman.pas' {FormTambahDataJenisTanaman},
  UnitTambahDatalokasiLahan in 'UnitTambahDatalokasiLahan.pas' {FormDataLokasiLahan},
  UnitDaftarDataJenisTanaman in 'UnitDaftarDataJenisTanaman.pas' {FormDaftarDataJenisTanaman},
  UnitDaftarDataKegiatanKelolaLahan in 'UnitDaftarDataKegiatanKelolaLahan.pas' {FormDaftarDataKegiatanKelolaLahan},
  UnitFormTambahKegiatanKelolaHarian in 'UnitFormTambahKegiatanKelolaHarian.pas' {FormTambahKegiatanKelolaHarian},
  UnitHapusKegiatanKelolaLahan in 'UnitHapusKegiatanKelolaLahan.pas' {FormHapusKegiatanKelolaLahan},
  UnitKelolaLahan in 'UnitKelolaLahan.pas' {FormKelolaLahan},
  UnitHasilPanen in 'UnitHasilPanen.pas' {FormHasilPanen},
  UnitPenggunaanAlat in 'UnitPenggunaanAlat.pas' {FormPenggunaanAlat},
  UnitDaftarDataPegawai in 'UnitDaftarDataPegawai.pas' {FormDAFTARDATAPEGAWAI},
  UnitTambahDataPegawai in 'UnitTambahDataPegawai.pas' {FormTambahDataPegawai};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormUtama, FormUtama);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
