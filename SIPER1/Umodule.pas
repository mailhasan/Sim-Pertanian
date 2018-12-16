unit Umodule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModuleSiper = class(TDataModule)
    conSiper: TADOConnection;
    qryAset: TADOQuery;
    dsAset: TDataSource;
    qryLokasi: TADOQuery;
    dsLokasi: TDataSource;
    qryProduk: TADOQuery;
    dsProduk: TDataSource;
    qryTanaman: TADOQuery;
    dsTanaman: TDataSource;
    qryBahan: TADOQuery;
    dsBahan: TDataSource;
    qryJadwalTanam: TADOQuery;
    qryVwJadwalTanam: TADOQuery;
    dsVwJadwalTanam: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleSiper: TDataModuleSiper;

implementation

{$R *.dfm}

end.
