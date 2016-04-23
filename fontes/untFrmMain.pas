unit untFrmMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, DB, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmMain = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    dsProdutos: TDataSource;
    DBGrdProdutos: TDBGrid;
    btnUnidades: TBitBtn;
    btnTributacao: TBitBtn;
    btnFornecedor: TBitBtn;
    btnProdutos: TBitBtn;
    btnEstoque: TBitBtn;
    procedure dsProdutosDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure btnUnidadesClick(Sender: TObject);
    procedure btnTributacaoClick(Sender: TObject);
    procedure btnFornecedorClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnEstoqueClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses untdmDados;

{$R *.dfm}

procedure TFrmMain.dsProdutosDataChange(Sender: TObject; Field: TField);
begin
     if not (dsProdutos.DataSet.IsEmpty) Then
         StatusBar1.Panels[0].Text := 'Registro(s): '+InttoStr(dsProdutos.DataSet.RecNo)+'/'+InttoStr(dsProdutos.DataSet.RecordCount)
     Else
         StatusBar1.Panels[0].Text := '';
end;

procedure TFrmMain.FormShow(Sender: TObject);
begin
     dsProdutos.DataSet := dmDados.cdsProdutos;
     dmDados.AbrirProdutos();
end;

procedure TFrmMain.btnUnidadesClick(Sender: TObject);
begin
      btnUnidades.Enabled := False;
      Panel2.Enabled := False;
      try
          if (dmDados.ImportarUnidades()) Then
               ShowMessage('Unidades importadas com sucesso!!!');
      Finally
           btnUnidades.Enabled := true;
           Panel2.Enabled := true;
      End;
      Application.ProcessMessages;
end;

procedure TFrmMain.btnTributacaoClick(Sender: TObject);
begin
      btnTributacao.Enabled := False;
      Panel2.Enabled := false;
      try
          if (dmDados.ImportarTribucacoes()) Then
               ShowMessage('Tributacoes importadas com sucesso!!!');
      Finally
           btnUnidades.Enabled := true;
           Panel2.Enabled := true;
      End;
      Application.ProcessMessages;
end;

procedure TFrmMain.btnFornecedorClick(Sender: TObject);
begin
      btnFornecedor.Enabled := False;
      Panel2.Enabled := false;
      try
          if (dmDados.ImportarFornecedores()) Then
               ShowMessage('Fornecedores importadas com sucesso!!!');
      Finally
           btnFornecedor.Enabled := true;
           Panel2.Enabled := true;
      End;
      Application.ProcessMessages;
end;

procedure TFrmMain.btnProdutosClick(Sender: TObject);
begin
     btnProdutos.Enabled := False;
     Panel2.Enabled := false;
      try
          if (dmDados.ImportarProdutos()) Then
               ShowMessage('Produtos importadas com sucesso!!!');
      Finally
           btnProdutos.Enabled := true;
           Panel2.Enabled := true;
      End;
      Application.ProcessMessages;
end;

procedure TFrmMain.btnEstoqueClick(Sender: TObject);
begin
     btnEstoque.Enabled := False;
     Panel2.Enabled := false;
      try
          if (dmDados.ImportarEstoqueProdutos()) Then
               ShowMessage('Estoque importado com sucesso!!!');
      Finally
           btnEstoque.Enabled := true;
           Panel2.Enabled := true;
      End;
      Application.ProcessMessages;
end;

end.
