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
  UnitTambahDataPegawai in 'UnitTambahDataPegawai.pas' {FormTambahDataPegawai},
  UnitFormPelaksanaPekerja in 'UnitFormPelaksanaPekerja.pas' {FormPelaksanaPekerja},
  UnitDaftarDataPupukObat in 'UnitDaftarDataPupukObat.pas' {FormDaftarDataPupukObat},
  UnitTambahDataPupukObat in 'UnitTambahDataPupukObat.pas' {FormTambahDataPupukObat},
  UnitSatuan in 'UnitSatuan.pas' {FormSatuan},
  UnitDataPembelianPupukObat in 'UnitDataPembelianPupukObat.pas' {FormDaftarDataPembelianPupukObat},
  UnitTambahDataPembelianPupukObat in 'UnitTambahDataPembelianPupukObat.pas' {FormTambahDataPembelianPupukObat},
  UnitHapusPembelianPupuk in 'UnitHapusPembelianPupuk.pas' {FormHapusPembelianPupuk},
  UnitTambahPembayaranPembelianPupuk in 'UnitTambahPembayaranPembelianPupuk.pas' {FormPembayaranPembelianPupuk},
  UnitPenggunaanPupukObat in 'UnitPenggunaanPupukObat.pas' {FormPenggunaanPupukObat};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormUtama, FormUtama);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFormPelaksanaPekerja, FormPelaksanaPekerja);
  Application.CreateForm(TFormDaftarDataPupukObat, FormDaftarDataPupukObat);
  Application.CreateForm(TFormTambahDataPupukObat, FormTambahDataPupukObat);
  Application.CreateForm(TFormSatuan, FormSatuan);
  Application.CreateForm(TFormDaftarDataPembelianPupukObat, FormDaftarDataPembelianPupukObat);
  Application.CreateForm(TFormTambahDataPembelianPupukObat, FormTambahDataPembelianPupukObat);
  Application.CreateForm(TFormHapusPembelianPupuk, FormHapusPembelianPupuk);
  Application.CreateForm(TFormPembayaranPembelianPupuk, FormPembayaranPembelianPupuk);
  Application.CreateForm(TFormPenggunaanPupukObat, FormPenggunaanPupukObat);
  Application.Run;
end.
