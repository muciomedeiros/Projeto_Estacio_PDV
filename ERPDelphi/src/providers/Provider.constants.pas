unit Provider.constants;

interface


procedure GET_Pessoas(iTIPO: integer);
procedure GET_Produtos;
procedure GET_Vendedor(iCOD_VENDEDOR: integer);
procedure GET_Vendas;
procedure GET_VendaItem(iCOD_VENDA: integer);

var
  iCOD_FILIAL: integer;
  sRAZAO_FILIAL : string;
  iCOD_VENDEDOR : integer;
  sNOME_VENDEDOR : string;
  TOTAL_VENDA: double;


implementation

uses
  System.SysUtils,
  Service.cadastro,
  Provider.conversao,
  Dialogs;



  // procedure para buscar clientes, fornecedores, funcionarios
procedure GET_Pessoas(iTIPO: integer);
begin
  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add('SELECT * FROM pessoas WHERE pes_tipopessoa = :tipopessoa');
  ServiceCadastro.QRY_pessoas.SQL.Add(' order by pes_codigo desc');
  ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iTIPO;
  ServiceCadastro.QRY_pessoas.Open();
end;

procedure GET_Produtos;
begin    // busca todos os produtos

  ServiceCadastro.QRY_produto1.Close;
  ServiceCadastro.QRY_produto1.SQL.Clear;
  ServiceCadastro.QRY_produto1.SQL.Add('SELECT * FROM produto1 order by pr1_codigo');
  ServiceCadastro.QRY_produto1.Open();

end;

procedure GET_Vendedor(iCOD_VENDEDOR: integer);
begin  // buscar vendedor

  ServiceCadastro.QRY_pessoas.Close;
  ServiceCadastro.QRY_pessoas.SQL.Clear;
  ServiceCadastro.QRY_pessoas.SQL.Add('SELECT * FROM pessoas where pes_codigo = :codigo and pes_tipopessoa = :tipo');
  ServiceCadastro.QRY_pessoas.Params[0].AsInteger := iCOD_VENDEDOR;
  ServiceCadastro.QRY_pessoas.Params[1].AsInteger := PessoasToInt(tpFuncionario);
  ServiceCadastro.QRY_pessoas.Open();

  if ServiceCadastro.QRY_pessoas.RecordCount > 0 then
  begin

    iCOD_VENDEDOR  := 0;
    sNOME_VENDEDOR := '';

    iCOD_VENDEDOR  := ServiceCadastro.QRY_pessoasPES_CODIGO.AsInteger;
    sNOME_VENDEDOR := ServiceCadastro.QRY_PessoasPES_RAZAO.AsString;

  end
  else begin
    ShowMessage(' Vendedor n�o encontrado. ');
  end;


end;

procedure GET_Vendas;
begin  // buscando todas as vendas

  ServiceCadastro.QRY_movestoque.Close;
  ServiceCadastro.QRY_movestoque.SQL.Clear;
  ServiceCadastro.QRY_movestoque.SQL.Add('select * from movestoque order by 1');
  ServiceCadastro.QRY_movestoque.Open();

end;

procedure GET_VendaItem(iCOD_VENDA: integer);
begin   // busca itens da venda

  ServiceCadastro.QRY_movestoqueitem.Close;
  ServiceCadastro.QRY_movestoqueitem.SQL.Clear;
  ServiceCadastro.QRY_movestoqueitem.SQL.Add('select * from movestoque_item where mvi_codigomovestoque = :codigovenda order by 1');
  ServiceCadastro.QRY_movestoqueitem.Params[0].AsInteger := iCOD_VENDA;
  ServiceCadastro.QRY_movestoqueitem.Open();


  // somando o valor da venda
  TOTAL_VENDA := 0;

  ServiceCadastro.QRY_movestoqueitem.DisableControls;
  ServiceCadastro.QRY_movestoqueitem.First;
  while not ServiceCadastro.QRY_movestoqueitem.Eof do
  begin
    TOTAL_VENDA := TOTAL_VENDA + ServiceCadastro.QRY_movestoqueitemMVI_VLRTOTAL.AsFloat;
    ServiceCadastro.QRY_movestoqueitem.Next;
  end;
  ServiceCadastro.QRY_movestoqueitem.EnableControls;


end;

end.
