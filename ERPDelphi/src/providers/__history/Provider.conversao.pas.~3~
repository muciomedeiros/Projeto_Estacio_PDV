unit Provider.conversao;

interface

uses
  SysUtils,
  StrUtils,
  Classes;

type
  TPCPessoas = (tpCliente, tpFornecedor, tpFuncionario);
  TPCTelas = (tpProdutos, tpCaixa, tpGrupo, tpSubgrupo);

  function PessoasToInt(const t: TPCPessoas): integer;
  function TelasToStr(const t: TPCTelas): string;


  implementation

function PessoasToInt(const t: TPCPessoas): integer;
begin
  case t  of
    tpCliente:               Result := 1 ;
    tpFornecedor:            Result := 2 ;
    tpFuncionario:           Result := 3 ;
  end;
end;

  //implementando telas
function TelasToStr(const t: TPCTelas): string;
begin
  case t of
    tpProdutos:             Result := 'Produtos';
    tpCaixa:                Result := 'Caixa';
    tpGrupo:                Result := 'Grupo';
    tpSubgrupo:             Result := 'Subgrupo';
  end;
end;


end.
