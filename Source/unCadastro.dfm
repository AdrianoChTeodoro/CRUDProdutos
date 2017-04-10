object frmCadastroDeProdutos: TfrmCadastroDeProdutos
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 276
  ClientWidth = 866
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlRodape: TPanel
    Left = 0
    Top = 235
    Width = 866
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 192
    ExplicitTop = 136
    ExplicitWidth = 185
    object btnSair: TBitBtn
      Left = 773
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ModalResult = 8
      ParentFont = False
      TabOrder = 0
      OnClick = btnSairClick
    end
    object btnNovo: TBitBtn
      Left = 501
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnAlterar: TBitBtn
      Left = 580
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btnAlterarClick
    end
    object btnExcluir: TBitBtn
      Left = 659
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btnExcluirClick
    end
  end
  object dbGridProdutos: TDBGrid
    Left = 0
    Top = 0
    Width = 866
    Height = 235
    Align = alClient
    BorderStyle = bsNone
    DataSource = dsProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clBlue
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Alignment = taRightJustify
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 222
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_CUSTO'
        Title.Alignment = taRightJustify
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO_VENDA'
        Title.Alignment = taRightJustify
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MINIMO'
        Title.Alignment = taRightJustify
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MAXIMO'
        Title.Alignment = taRightJustify
        Width = 150
        Visible = True
      end>
  end
  object zqryProdutos: TZQuery
    Connection = DM.zConexao
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Params = <>
    Left = 584
    Top = 64
    object zqryProdutosCODIGO: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object zqryProdutosDESCRICAO: TWideStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Required = True
      Size = 400
    end
    object zqryProdutosDATA_CADASTRO: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DATA_CADASTRO'
      Required = True
    end
    object zqryProdutosESTOQUE_MINIMO: TFloatField
      DisplayLabel = 'Est. M'#237'nimo'
      FieldName = 'ESTOQUE_MINIMO'
    end
    object zqryProdutosESTOQUE_MAXIMO: TFloatField
      DisplayLabel = 'Est. M'#225'ximo'
      FieldName = 'ESTOQUE_MAXIMO'
    end
    object zqryProdutosPRECO_CUSTO: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'PRECO_CUSTO'
      currency = True
    end
    object zqryProdutosPRECO_VENDA: TFloatField
      DisplayLabel = 'Venda R$'
      FieldName = 'PRECO_VENDA'
      currency = True
    end
  end
  object dsProdutos: TDataSource
    DataSet = zqryProdutos
    Left = 584
    Top = 120
  end
end
