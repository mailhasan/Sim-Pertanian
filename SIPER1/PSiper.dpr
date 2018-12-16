program PSiper;

uses
  Forms,
  USiper in 'USiper.pas' {FSiper},
  UDataAset in 'UDataAset.pas' {FDataAset},
  Umodule in 'Umodule.pas' {DataModuleSiper: TDataModule},
  ULokasiLahan in 'ULokasiLahan.pas' {FLokasiLahan},
  UDataProduk in 'UDataProduk.pas' {FDataProduk},
  UDataTanaman in 'UDataTanaman.pas' {FDataTanaman},
  UDataBahan in 'UDataBahan.pas' {FDataBahan},
  UJadwalTanam in 'UJadwalTanam.pas' {FJadwalTanam};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSiper, FSiper);
  Application.CreateForm(TFDataAset, FDataAset);
  Application.CreateForm(TDataModuleSiper, DataModuleSiper);
  Application.CreateForm(TFLokasiLahan, FLokasiLahan);
  Application.CreateForm(TFDataProduk, FDataProduk);
  Application.CreateForm(TFDataTanaman, FDataTanaman);
  Application.CreateForm(TFDataBahan, FDataBahan);
  Application.CreateForm(TFJadwalTanam, FJadwalTanam);
  Application.Run;
end.
