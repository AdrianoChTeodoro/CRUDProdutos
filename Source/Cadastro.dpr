program Cadastro;

uses
  Vcl.Forms,
  unCadastro in 'unCadastro.pas' {frmCadastroDeProdutos},
  unDM in 'unDM.pas' {DM: TDataModule},
  unProduto in 'unProduto.pas' {frmProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmCadastroDeProdutos, frmCadastroDeProdutos);
  Application.Run;
end.
