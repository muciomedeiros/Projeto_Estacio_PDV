unit View.base.listas;

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
  View.base,
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Buttons,
  Vcl.WinXPanels,
  Vcl.StdCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.WinXCtrls,
  Service.cadastro, Provider.constants, Provider.conversao;

type
  TViewBaseListas = class(TViewBase)
    pnlTopo: TPanel;
    pnlRodape: TPanel;
    pnlICone: TPanel;
    imgIcone: TImage;
    pnlFechar: TPanel;
    btnSair: TSpeedButton;
    lblTitulo: TLabel;
    btbNovo: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCancelar: TSpeedButton;
    btnSalvar: TSpeedButton;
    btnExcluir: TSpeedButton;
    pnlLinhaFundo: TPanel;
    CardPanel_listas: TCardPanel;
    card_pesquisa: TCard;
    card_cadastro: TCard;
    pnlTituloPesquisa: TPanel;
    lblTituloPesquisa: TLabel;
    edtPesquisa: TSearchBox;
    DBG_dados: TDBGrid;
    dsDados: TDataSource;
    pnlTituloCadastro: TPanel;
    lblTitulo_Cadastro: TLabel;
    procedure btnSairClick(Sender: TObject);
    procedure pnlTopoMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure CardPanel_listasCardChange(Sender: TObject; PrevCard,
      NextCard: TCard);
    procedure btbNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    var
    sTELA: string;
  end;

var
  ViewBaseListas: TViewBaseListas;

implementation

{$R *.dfm}

procedure TViewBaseListas.btbNovoClick(Sender: TObject);
begin  //NOVO
  inherited;
  CardPanel_Listas.ActiveCard := card_cadastro;
  dsDados.DataSet.Insert;
end;

procedure TViewBaseListas.btnCancelarClick(Sender: TObject);
begin//CANCELAR
  inherited;
  if dsDados.DataSet.State in dsEditModes then
  dsDados.DataSet.Cancel;
  CardPanel_Listas.ActiveCard := card_pesquisa;
end;

procedure TViewBaseListas.btnEditarClick(Sender: TObject);
begin  //EDITAR
  inherited;
  CardPanel_Listas.ActiveCard := card_cadastro;
  dsDados.DataSet.Edit;
end;

procedure TViewBaseListas.btnExcluirClick(Sender: TObject);
begin//EXCLUIR
  inherited;

  if dsDados.DataSet.RecordCount > 0 then
  begin
    dsDados.DataSet.Delete;
    if Self.Tag > 0 then
    begin


      case Self.Tag of
        1: begin
          ShowMessage('Cliente deletado com sucesso.');
        end;

        2: begin
          ShowMessage('Fornecedor deletado com sucesso.');
        end;

        3: begin
          ShowMessage('Funcionário deletado com sucesso.');
        end;

      end;

    end
    else begin

      if sTELA = TelasToStr(tpProdutos) then
      begin
        ShowMessage('Produto deletado com sucesso');
      end;

      if sTELA = TelasToStr(tpCaixa) then
      begin
        ShowMessage('Caixa deletado com sucesso');
      end;

            if sTELA = TelasToStr(tpGrupo) then
      begin
        ShowMessage('Grupo deletado com sucesso');
      end;

            if sTELA = TelasToStr(tpSubgrupo) then
      begin
        ShowMessage('Subgrupo deletado com sucesso');
      end;

    end;


    CardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.btnSairClick(Sender: TObject);
begin
  inherited;
  Self.Close;
end;

procedure TViewBaseListas.btnSalvarClick(Sender: TObject);
begin//SALVAR
  inherited;
  if dsDados.DataSet.State in dsEditModes  then

      begin

        if Self.Tag > 0 then
        begin
        serviceCadastro.QRY_pessoasPES_TIPOPESSOA.AsInteger := Self.Tag;
          serviceCadastro.QRY_pessoas.Post;

          case Self.Tag of
            1: begin
              ShowMessage('Cliente salvo com sucesso.');
            end;

            2: begin
              ShowMessage('Fornecedor salvo com sucesso.');
            end;

            3: begin
              ShowMessage('Funcionário salvo com sucesso.');
            end;
          end;

        end
        else begin

          dsDados.DataSet.Post;


          if sTELA = TelasToStr(tpProdutos) then
          begin
            ShowMessage('Produto salvo com sucesso');
          end;

          if sTELA = TelasToStr(tpCaixa) then
          begin
            ShowMessage('Caixa salvo com sucesso');
          end;

          if sTELA = TelasToStr(tpGrupo) then
          begin
            ShowMessage('Grupo salvo com sucesso');
          end;

          if sTELA = TelasToStr(tpSubgrupo) then
          begin
            ShowMessage('Subgrupo salvo com sucesso');
          end;

        end;

    CardPanel_Listas.ActiveCard := card_pesquisa;
  end;
end;

procedure TViewBaseListas.CardPanel_listasCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin  // change card
  inherited;
  if cardPanel_Listas.ActiveCard = card_cadastro then
  SelectFirst;
end;

procedure TViewBaseListas.FormShow(Sender: TObject);
begin  // show
  inherited;

  CardPanel_listas.ActiveCard := card_pesquisa;

  if Self.Tag > 0 then
    GET_Pessoas(Self.Tag);

  dsDados.DataSet.Open;
end;

procedure TViewBaseListas.pnlTopoMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
const
   sc_DragMove = $f012;
begin
  inherited;
  ReleaseCapture;
  Perform(wm_SysCommand, sc_DragMove, 0);

end;

end.
