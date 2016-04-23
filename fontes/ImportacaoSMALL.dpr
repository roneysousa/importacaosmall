program ImportacaoSMALL;

uses
  Forms,
  untFrmMain in 'fontes\untFrmMain.pas' {FrmMain},
  untdmDados in 'fontes\untdmDados.pas' {dmDados: TDataModule},
  uFuncoes in 'fontes\uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
