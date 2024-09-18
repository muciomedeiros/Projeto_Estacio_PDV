unit View.vendas;

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
  View.base.listas,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.WinXCtrls,
  Vcl.WinXPanels,
  Vcl.Buttons,
  Vcl.Imaging.pngimage,
  Vcl.ExtCtrls, Provider.constants, Service.cadastro, View.produtos;

type
  TViewVendas = class(TViewBaseListas)
    edtCodigoVendedor: TSearchBox;
    lblNomeVendedor: TLabel;
    lblProdutos: TLabel;
    edtProduto: TSearchBox;
    edtQtd: TEdit;
    lblQTD: TLabel;
    edtVlrUnitario: TEdit;
    Label1: TLabel;
    edtSubTotal: TEdit;
    Label2: TLabel;
    btnSalvarProduto: TSpeedButton;
    DBG_itensVendas: TDBGrid;
    pnlTotais: TPanel;
    Label3: TLabel;
    edtSub_Total: TEdit;
    dsItens: TDataSource;
    procedure edtCodigoVendedorExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edtProdutoInvokeSearch(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewVendas: TViewVendas;

implementation


{$R *.dfm}

procedure TViewVendas.btnEditarClick(Sender: TObject);
begin  // edita venda
  inherited;
  edtSub_Total.Text := FloatToStrF(TOTAL_VENDA, ffcurrency, 10,2);
end;

procedure TViewVendas.btnSalvarClick(Sender: TObject);
begin    // salvando itens
  inherited;





end;

procedure TViewVendas.edtCodigoVendedorExit(Sender: TObject);
begin // saida de vendedor
  inherited;
  if StrToIntDef(edtCodigoVendedor.text, 0) > 0 then
  begin
    GET_Vendedor(StrToInt(edtCodigoVendedor.Text));

    lblNomeVendedor.Caption := '[ ' + sNOME_VENDEDOR + ' ]';

  end;


end;

procedure TViewVendas.edtProdutoInvokeSearch(Sender: TObject);
begin   // procurando o produto
  inherited;

    ViewProdutos := TViewProdutos.Create(Self);
  try

    ViewProdutos.Top       := ViewVendas.Top;
    ViewProdutos.Left      := ViewVendas.Left;
    ViewProdutos.ShowModal;

  finally
    FreeAndNil(ViewProdutos);
  end;

end;

procedure TViewVendas.FormShow(Sender: TObject);
begin   // show
  inherited;
  GET_Vendas;
end;

end.
