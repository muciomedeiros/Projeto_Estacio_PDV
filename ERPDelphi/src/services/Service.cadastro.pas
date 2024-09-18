unit Service.cadastro;

interface

uses
  System.SysUtils,
  System.Classes,
  Service.conexao,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Provider.constants;

type
  TServiceCadastro = class(TDataModule)
    QRY_pessoas: TFDQuery;
    QRY_PessoasPES_CODIGO: TIntegerField;
    QRY_PessoasPES_CNPJCPF: TStringField;
    QRY_PessoasPES_IERG: TStringField;
    QRY_PessoasPES_RAZAO: TStringField;
    QRY_PessoasPES_FANTASIA: TStringField;
    QRY_PessoasPES_TELEFONE: TStringField;
    QRY_PessoasPES_OBSERVACAO: TStringField;
    QRY_PessoasPES_TIPOPESSOA: TIntegerField;
    QRY_enderecos: TFDQuery;
    QRY_enderecosEND_CODIGO: TIntegerField;
    QRY_enderecosEND_PESSOA: TIntegerField;
    QRY_enderecosEND_CEP: TStringField;
    QRY_enderecosEND_CIDADE: TStringField;
    QRY_enderecosEND_ENDERECO: TStringField;
    QRY_enderecosEND_BAIRRO: TStringField;
    QRY_enderecosEND_OBSERVACAO: TStringField;
    QRY_enderecosEND_NUMERO: TStringField;
    QRY_produto1: TFDQuery;
    QRY_produto1PR1_CODIGO: TIntegerField;
    QRY_produto1PR1_NOMECOMPLETO: TStringField;
    QRY_produto1PR1_NOMEPOPULAR: TStringField;
    QRY_produto1PR1CODIGOBARRA: TStringField;
    QRY_produto1PR1_REFERENCIA: TStringField;
    QRY_produto1PR1_GRUPO: TIntegerField;
    QRY_produto1PR1_SUBGRUPO: TIntegerField;
    QRY_produto1PR1_NCM: TStringField;
    QRY_produto1PR1_CUSTOINI: TFMTBCDField;
    QRY_produto1PR1_VENDAAVISTA: TFMTBCDField;
    QRY_produto1PR1_VENDAPRAZO: TFMTBCDField;
    QRY_produto1PR1_SITTRIBUTARIA: TIntegerField;
    QRY_produto1PR1_ESTOQUE: TFMTBCDField;
    QRY_movestoque: TFDQuery;
    QRY_movestoqueitem: TFDQuery;
    QRY_movestoqueMOV_CODIGO: TIntegerField;
    QRY_movestoqueMOV_TIPOESTOQUE: TIntegerField;
    QRY_movestoqueMOV_DATA: TDateField;
    QRY_movestoqueMOV_HORA: TTimeField;
    QRY_movestoqueMOV_VLRDESCONTO: TFMTBCDField;
    QRY_movestoqueMOV_VLRTOTAL: TFMTBCDField;
    QRY_movestoqueitemMVI_CODIGO: TIntegerField;
    QRY_movestoqueitemMVI_CODIGOMOVESTOQUE: TIntegerField;
    QRY_movestoqueitemMVI_CODITEM: TIntegerField;
    QRY_movestoqueitemMVI_QUANTIDADE: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRUNITARIO: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRTOTAL: TFMTBCDField;
    QRY_movestoqueitemMVI_VLRDESCONTO: TFMTBCDField;
    procedure QRY_movestoqueAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ServiceCadastro: TServiceCadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TServiceCadastro.QRY_movestoqueAfterScroll(DataSet: TDataSet);
begin   // pegando os itens da venda
  GET_VendaItem(QRY_movestoqueMOV_CODIGO.AsInteger);
end;

end.
