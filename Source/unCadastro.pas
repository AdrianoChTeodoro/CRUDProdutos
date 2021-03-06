unit unCadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ZAbstractConnection, ZConnection,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmCadastroDeProdutos = class(TForm)
    pnlRodape: TPanel;
    zqryProdutos: TZQuery;
    dsProdutos: TDataSource;
    zqryProdutosDESCRICAO: TWideStringField;
    zqryProdutosDATA_CADASTRO: TDateField;
    zqryProdutosESTOQUE_MINIMO: TFloatField;
    zqryProdutosESTOQUE_MAXIMO: TFloatField;
    zqryProdutosPRECO_CUSTO: TFloatField;
    zqryProdutosPRECO_VENDA: TFloatField;
    dbGridProdutos: TDBGrid;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    zqryProdutosCODIGO: TLargeintField;
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDeProdutos: TfrmCadastroDeProdutos;

implementation

uses
  unDM, unProduto;

{$R *.dfm}

procedure TfrmCadastroDeProdutos.btnSairClick(Sender: TObject);
begin
  if MessageBox(Handle, 'Deseja realmente encerrar a aplica��o?', 'Favor confirmar...', MB_YESNO + MB_SYSTEMMODAL + MB_ICONQUESTION + MB_DEFBUTTON1) = mrYes then
    Application.Terminate;
end;

procedure TfrmCadastroDeProdutos.FormShow(Sender: TObject);
begin
  {Busca os produtos cadastrados}
  zqryProdutos.Open;
end;

procedure TfrmCadastroDeProdutos.btnAlterarClick(Sender: TObject);
var
  formProduto : TfrmProduto;
begin

  if zqryProdutos.IsEmpty then
    Exit;

  formProduto := TfrmProduto.Create(Self, stAlterar, zqryProdutosCODIGO.AsInteger);
  formProduto.ShowModal;
end;

procedure TfrmCadastroDeProdutos.btnExcluirClick(Sender: TObject);
var
  formProduto : TfrmProduto;
begin

  if zqryProdutos.IsEmpty then
    Exit;

  formProduto := TfrmProduto.Create(Self, stExcluir, zqryProdutosCODIGO.AsInteger);
  formProduto.ShowModal;
end;

procedure TfrmCadastroDeProdutos.btnNovoClick(Sender: TObject);
var
  formProduto : TfrmProduto;
begin
  formProduto := TfrmProduto.Create(Self, stNovo, 0);
  formProduto.ShowModal;
end;

end.
