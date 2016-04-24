program ImportacaoSMALL;

uses
  Forms,
  untFrmMain in 'untFrmMain.pas' {FrmMain},
  untdmDados in 'untdmDados.pas' {dmDados: TDataModule},
  uFuncoes in 'uFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
