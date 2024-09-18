unit View.principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  System.ImageList,
  Vcl.ImgList,
  System.Actions,
  Vcl.ActnList,
  Provider.constants,
  View.clientes,
  View.fornecedores,
  Provider.conversao,
  View.produtos,
  View.funcionarios, View.vendas;

type
  TViewPrincipal = class(TForm)
    pnlTopo: TPanel;
    pnlMenu: TPanel;
    pnlBackPrincipal: TPanel;
    pnlRodape: TPanel;
    pnlConteudo: TPanel;
    pnlLogo: TPanel;
    pnlLineLogo: TPanel;
    pnlConteudoLogo: TPanel;
    lblTituloEmpresa: TLabel;
    lblDescricaoEmpresa: TLabel;
    pnlVersao: TPanel;
    lbVersaoTitulo: TLabel;
    lbVersao: TLabel;
    pnlUsuario: TPanel;
    pnlLineUsuario: TPanel;
    pnlMargemUsuario: TPanel;
    imgUserBranca: TImage;
    pnlDadosUsuario: TPanel;
    lblUsuario: TLabel;
    lblPerfil: TLabel;
    pnlLincenciado: TPanel;
    pnlLineRodape: TPanel;
    pnlConteudoLicenca: TPanel;
    lblTitLicenciado: TLabel;
    lblLicenciado: TLabel;
    pnlSair: TPanel;
    pnlShapeMenu: TPanel;
    shapeMenu: TShape;
    pnlDadosMenu: TPanel;
    btnConfiguracoes: TSpeedButton;
    btnClientes: TSpeedButton;
    btnCaixa: TSpeedButton;
    btnFornecedores: TSpeedButton;
    btnProdutos: TSpeedButton;
    btnSair: TSpeedButton;
    imgUserLaranja: TImage;
    imgBackGround: TImage;
    btnVendas: TSpeedButton;
    btnFuncionarios: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure btnClientesClick(Sender: TObject);
    procedure btnCaixaClick(Sender: TObject);
    procedure btnFornecedoresClick(Sender: TObject);
    procedure btnProdutosClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblTituloEmpresaMouseEnter(Sender: TObject);
    procedure lblTituloEmpresaMouseLeave(Sender: TObject);
    procedure imgUserBrancaMouseEnter(Sender: TObject);
    procedure imgUserLaranjaMouseLeave(Sender: TObject);
    procedure btnFuncionariosClick(Sender: TObject);
    procedure btnVendasClick(Sender: TObject);
  private
    procedure GET_LineMENU(Sender: TObject);
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}


procedure TViewPrincipal.btnConfiguracoesClick(Sender: TObject);
begin  //config
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnSairClick(Sender: TObject);
begin
  application.terminate;
end;

procedure TViewPrincipal.btnVendasClick(Sender: TObject);
begin   //vendas
  GET_LineMENU(Sender);
  ViewVendas := TViewVendas.Create(Self);
  try

    ViewVendas.Top       := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewVendas.Height) / 2));
    ViewVendas.Left      := Round(pnlMenu.Height + ((pnlConteudo.Width - ViewVendas.Width) / 2));

    ViewVendas.Tag := PessoasToInt(tpCliente);
    ViewVendas.ShowModal;

  finally
    FreeAndNil(ViewVendas);
  end;

end;

procedure TViewPrincipal.FormShow(Sender: TObject);
begin  // show
  GET_LineMENU(btnClientes);
  lblLicenciado.caption := sRAZAO_FILIAL;
end;

procedure TViewPrincipal.GET_LineMENU(Sender: TObject);
begin
  ShapeMenu.Left        := 0;
  ShapeMenu.Height      := TSpeedButton(Sender).Height;
  ShapeMenu.Top         := TSpeedButton(Sender).Top;
  pnlShapeMenu.Repaint;
end;

procedure TViewPrincipal.imgUserBrancaMouseEnter(Sender: TObject);
begin
  imgUserBranca.Visible := False;
  imgUserLaranja.Visible := True;
end;

procedure TViewPrincipal.imgUserLaranjaMouseLeave(Sender: TObject);
begin
  imgUserBranca.Visible := True;
  imgUserLaranja.Visible := False;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseEnter(Sender: TObject);
begin
  lblTituloEmpresa.Font.Color := $000FBBD9;
end;

procedure TViewPrincipal.lblTituloEmpresaMouseLeave(Sender: TObject);
begin
    lblTituloEmpresa.Font.Color := clWhite;
end;

procedure TViewPrincipal.btnClientesClick(Sender: TObject);
begin //cliente
  GET_LineMENU(Sender);
  ViewClientes := TViewClientes.Create(Self);
  try

    ViewClientes.Top       := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewClientes.Height) / 2));
    ViewClientes.Left      := Round(pnlMenu.Height + ((pnlConteudo.Width - ViewClientes.Width) / 2));

    ViewClientes.Tag := PessoasToInt(tpCliente);
    ViewClientes.ShowModal;

  finally
    FreeAndNil(ViewClientes);
  end;
end;

procedure TViewPrincipal.btnCaixaClick(Sender: TObject);
begin  // caixa
  GET_LineMENU(Sender);
end;

procedure TViewPrincipal.btnFornecedoresClick(Sender: TObject);
begin  //fornecedores
  GET_LineMENU(Sender);
   ViewFornecedores := TViewfornecedores.Create(Self);
  try

    ViewFornecedores.Top       := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFornecedores.Height) / 2));
    ViewFornecedores.Left      := Round(pnlMenu.Height + ((pnlConteudo.Width - ViewFornecedores.Width) / 2));

    ViewFornecedores.Tag := PessoasToInt(tpFornecedor);
    ViewFornecedores.ShowModal;

  finally
    FreeAndNil(ViewFornecedores);
  end;
end;

procedure TViewPrincipal.btnFuncionariosClick(Sender: TObject);
begin   // FUNCIONARIOS
  GET_LineMENU(Sender);
  ViewFuncionarios := TViewFuncionarios.Create(Self);
  try

    ViewFuncionarios.Top       := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewFuncionarios.Height) / 2));
    ViewFuncionarios.Left      := Round(pnlMenu.Height + ((pnlConteudo.Width - ViewFuncionarios.Width) / 2));

    ViewFuncionarios.Tag := PessoasToInt(tpFuncionario);
    ViewFuncionarios.ShowModal;

  finally
    FreeAndNil(ViewFuncionarios);
  end;

end;

procedure TViewPrincipal.btnProdutosClick(Sender: TObject);
begin // produtos
  GET_LineMENU(Sender);

  ViewProdutos := TViewProdutos.Create(Self);
  try

    ViewProdutos.Top       := Round(pnlTopo.Height + ((pnlConteudo.Height - ViewProdutos.Height) / 2));
    ViewProdutos.Left      := Round(pnlMenu.Height + ((pnlConteudo.Width - ViewProdutos.Width) / 2));

    ViewProdutos.sTELA := TelasToStr(tpProdutos);
    ViewProdutos.ShowModal;

  finally
    FreeAndNil(ViewProdutos);
  end;
end;

end.
