object frmProduto: TfrmProduto
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Produto'
  ClientHeight = 328
  ClientWidth = 419
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
  object Label1: TLabel
    Left = 59
    Top = 40
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
    FocusControl = DBEditCodigo
  end
  object Label2: TLabel
    Left = 59
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEditDescricao
  end
  object Label3: TLabel
    Left = 59
    Top = 120
    Width = 62
    Height = 13
    Caption = 'Dt. Cadastro'
    FocusControl = DBEditCadastro
  end
  object Label4: TLabel
    Left = 59
    Top = 160
    Width = 54
    Height = 13
    Caption = 'Est. M'#237'nimo'
    FocusControl = DBEditEstMinimo
  end
  object Label5: TLabel
    Left = 199
    Top = 160
    Width = 58
    Height = 13
    Caption = 'Est. M'#225'ximo'
    FocusControl = DBEditEstMaximo
  end
  object Label6: TLabel
    Left = 59
    Top = 201
    Width = 44
    Height = 13
    Caption = 'Custo R$'
    FocusControl = DBEditCusto
  end
  object Label7: TLabel
    Left = 199
    Top = 201
    Width = 46
    Height = 13
    Caption = 'Venda R$'
    FocusControl = DBEditVenda
  end
  object lblStatusTela: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 413
    Height = 17
    Align = alTop
    BiDiMode = bdRightToLeft
    Caption = 'Status Tela'
    Color = clActiveCaption
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 419
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 287
    Width = 419
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    ExplicitLeft = -156
    ExplicitTop = 235
    ExplicitWidth = 647
    DesignSize = (
      419
      41)
    object btnConfirmar: TBitBtn
      Left = 254
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
      ExplicitLeft = 485
    end
    object btnCancelar: TBitBtn
      Left = 333
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
      ExplicitLeft = 564
    end
  end
  object DBEditCodigo: TDBEdit
    Left = 59
    Top = 56
    Width = 134
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'CODIGO'
    DataSource = dsProdutos
    ReadOnly = True
    TabOrder = 0
  end
  object DBEditDescricao: TDBEdit
    Left = 59
    Top = 96
    Width = 300
    Height = 21
    DataField = 'DESCRICAO'
    DataSource = dsProdutos
    TabOrder = 1
  end
  object DBEditCadastro: TDBEdit
    Left = 59
    Top = 136
    Width = 134
    Height = 21
    TabStop = False
    Color = clSilver
    DataField = 'DATA_CADASTRO'
    DataSource = dsProdutos
    ReadOnly = True
    TabOrder = 2
  end
  object DBEditEstMinimo: TDBEdit
    Left = 59
    Top = 176
    Width = 134
    Height = 21
    DataField = 'ESTOQUE_MINIMO'
    DataSource = dsProdutos
    TabOrder = 3
  end
  object DBEditEstMaximo: TDBEdit
    Left = 199
    Top = 176
    Width = 134
    Height = 21
    DataField = 'ESTOQUE_MAXIMO'
    DataSource = dsProdutos
    TabOrder = 4
  end
  object DBEditCusto: TDBEdit
    Left = 59
    Top = 217
    Width = 134
    Height = 21
    DataField = 'PRECO_CUSTO'
    DataSource = dsProdutos
    TabOrder = 5
  end
  object DBEditVenda: TDBEdit
    Left = 199
    Top = 217
    Width = 134
    Height = 21
    DataField = 'PRECO_VENDA'
    DataSource = dsProdutos
    TabOrder = 6
  end
  object zqryProdutos: TZQuery
    Connection = DM.zConexao
    SQL.Strings = (
      'SELECT * FROM PRODUTOS')
    Params = <>
    Left = 368
    Top = 128
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
    Left = 368
    Top = 184
  end
end
