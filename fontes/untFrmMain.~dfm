object FrmMain: TFrmMain
  Left = 192
  Top = 115
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o de Dados'
  ClientHeight = 473
  ClientWidth = 967
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 454
    Width = 967
    Height = 19
    Panels = <
      item
        Width = 300
      end
      item
        Width = 50
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 967
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 967
    Height = 372
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Dados'
      object DBGrdProdutos: TDBGrid
        Left = 0
        Top = 0
        Width = 959
        Height = 344
        Align = alClient
        DataSource = dsProdutos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 413
    Width = 967
    Height = 41
    Align = alBottom
    Color = clNavy
    TabOrder = 3
    object btnUnidades: TBitBtn
      Left = 40
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Unidade'
      TabOrder = 0
      OnClick = btnUnidadesClick
    end
    object btnTributacao: TBitBtn
      Left = 144
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Tributa'#231#245'es'
      TabOrder = 1
      OnClick = btnTributacaoClick
    end
    object btnFornecedor: TBitBtn
      Left = 240
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Fornecedores'
      TabOrder = 2
      OnClick = btnFornecedorClick
    end
    object btnProdutos: TBitBtn
      Left = 328
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Produtos'
      TabOrder = 3
      OnClick = btnProdutosClick
    end
    object btnEstoque: TBitBtn
      Left = 424
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Estoque'
      TabOrder = 4
      OnClick = btnEstoqueClick
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = dmDados.cdsCadProdutos
    OnDataChange = dsProdutosDataChange
    Left = 148
    Top = 169
  end
end
