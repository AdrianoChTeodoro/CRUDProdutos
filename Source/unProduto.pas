unit unProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZDataset, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask, Vcl.DBCtrls, ZSequence;

type
  TStatusTela = (stNovo, stAlterar, stExcluir);

type
  TfrmProduto = class(TForm)
    pnlRodape: TPanel;
    btnConfirmar: TBitBtn;
    btnCancelar: TBitBtn;
    zqryProdutos: TZQuery;
    zqryProdutosDESCRICAO: TWideStringField;
    zqryProdutosDATA_CADASTRO: TDateField;
    zqryProdutosESTOQUE_MINIMO: TFloatField;
    zqryProdutosESTOQUE_MAXIMO: TFloatField;
    zqryProdutosPRECO_CUSTO: TFloatField;
    zqryProdutosPRECO_VENDA: TFloatField;
    dsProdutos: TDataSource;
    Label1: TLabel;
    DBEditCodigo: TDBEdit;
    Label2: TLabel;
    DBEditDescricao: TDBEdit;
    Label3: TLabel;
    DBEditCadastro: TDBEdit;
    Label4: TLabel;
    DBEditEstMinimo: TDBEdit;
    Label5: TLabel;
    DBEditEstMaximo: TDBEdit;
    Label6: TLabel;
    DBEditCusto: TDBEdit;
    Label7: TLabel;
    DBEditVenda: TDBEdit;
    lblStatusTela: TLabel;
    zqryProdutosCODIGO: TLargeintField;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    gCodigo        : Integer;
    gStatusProduto : TStatusTela;
    constructor Create(pAOwner : TComponent; pStatus : TStatusTela; pCodigo : Integer); reintroduce;
  end;

var
  frmProduto: TfrmProduto;

implementation

uses
  unDM, unCadastro;

{$R *.dfm}

{ TfrmProduto }


{ TfrmProduto }

procedure TfrmProduto.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmProduto.btnConfirmarClick(Sender: TObject);
begin

  case gStatusProduto of

    stNovo:
    begin
      {Gravar}
      zqryProdutos.Post;
      frmCadastroDeProdutos.zqryProdutos.Refresh;
      Close;
    end;
    stAlterar:
    begin
      {Gravar}
      zqryProdutos.Post;
      frmCadastroDeProdutos.zqryProdutos.Refresh;
      Close;
    end;
    stExcluir:
    begin
      {Excluir}
      if MessageBox(Handle, 'Deseja realmente deletar este registro?', 'Favor confirmar...', MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
      begin
        zqryProdutos.Delete;
        frmCadastroDeProdutos.zqryProdutos.Refresh;
        Close;
      end;
    end;
  end;

end;

constructor TfrmProduto.Create(pAOwner : TComponent; pStatus: TStatusTela; pCodigo: Integer);
begin
  inherited Create(pAOwner);
  gStatusProduto := pStatus;
  gCodigo        := pCodigo;
end;

procedure TfrmProduto.FormShow(Sender: TObject);
begin

  case gStatusProduto of

    stNovo:
    begin
      lblStatusTela.Caption := 'Novo Registro';

      {N�o traz registros pois se trata de cadastro}
      zqryProdutos.Close;
      zqryProdutos.SQL.Clear;
      zqryProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = -1');
      zqryProdutos.Open;

      zqryProdutos.Append;
      zqryProdutosCODIGO.AsInteger := DM.seqProdutos;
      zqryProdutosDATA_CADASTRO.AsDateTime := Now;
      DBEditDescricao.SetFocus;

    end;
    stAlterar:
    begin
      lblStatusTela.Caption := 'Altera��o de Registro';

      {Traz o registro selecionado}
      zqryProdutos.Close;
      zqryProdutos.SQL.Clear;
      zqryProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ' + IntToStr(gCodigo));
      zqryProdutos.Open;

      zqryProdutos.Edit;
      DBEditDescricao.SetFocus;

    end;
    stExcluir:
    begin
      lblStatusTela.Caption := 'Exclus�o de Registro';

      {Traz o registro selecionado}
      zqryProdutos.Close;
      zqryProdutos.SQL.Clear;
      zqryProdutos.SQL.Add('SELECT * FROM PRODUTOS WHERE CODIGO = ' + IntToStr(gCodigo));
      zqryProdutos.Open;

    end;
  end;

end;

end.
