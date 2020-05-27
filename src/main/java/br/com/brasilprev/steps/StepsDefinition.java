package br.com.brasilprev.steps;

import static org.junit.Assert.assertEquals;
import org.json.JSONObject;
import br.com.brasilprev.steps.StepsCode;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Entao;

import io.restassured.response.Response;

public class StepsDefinition {

	private StepsCode funcionalidade = new StepsCode();
	private Response response;

	@Entao("^devo receber um status code '(\\d+)'$")
	public void devoReceberUmStatusCode(int code) throws Throwable {
		assertEquals(code, response.statusCode());

	}

	@Dado("^que eu Queira incluir um novo cadastro$")
	public void que_eu_Queira_incluir_um_novo_cadastro() throws Throwable {

	}

	@Dado("^eu envio os Dados da pessoa: (\\d+), \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", (\\d+), \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\", \"([^\"]*)\"$")
	public void eu_envio_dos_Dados_da_pessoa(int codigo, String nome, String cpf, String logradouro1, String numero1,
			String complemento1, String bairro1, String cidade1, String estado1, String ddd1, String telefone1,
			String logradouro2, String numero2, String complemento2, String bairro2, String cidade2, String estado2,
			String ddd2, String telefone2) throws Throwable {
		String strBody = "{" + "\"codigo\": " + codigo + "," + "\"nome\": \"" + nome + "\"," + "\"cpf\": \"" + cpf
				+ "\"," + "\"enderecos\": [" + "{" + "\"logradouro\": \"" + logradouro1 + "\"," + "\"numero\": "
				+ numero1 + "," + "\"complemento\": \"" + complemento1 + "\"," + "\"bairro\": \"" + bairro1 + "\","
				+ "\"cidade\": \"" + cidade1 + "\"," + "\"estado\": \"" + estado1 + "\"" + "}" + "],"
				+ "\"telefones\": [" + "{" + "\"ddd\": \"" + ddd1 + "\"," + "\"numero\": \"" + telefone1 + "\"" + "}]"
				+ "}";
		JSONObject dados = new JSONObject(strBody);
		response = funcionalidade.cadastrar(dados);

	}

	@Dado("^que eu Queira consultar um cadastro existente$")
	public void eu() throws Throwable {

	}

	@Entao("^eu envio o \"([^\"]*)\" e \"([^\"]*)\"$")
	public void eu_envio_o_e(String dd1, String telefone1) throws Throwable {
		
		String str = dd1 + "/" + telefone1;
		response = funcionalidade.consultar(str);
	}

	@Entao("^devo receber a mesagem de erro já existe pessoa cadastrada com o CPF \"([^\"]*)\"$")
	public void devo_receber_a_mesagem_de_erro_já_existe_pessoa_cadastrada_com_o_CPF(String cpf) throws Throwable {
		
		String message = "{\"erro\":\"Já existe pessoa cadastrada com o CPF " + cpf + "\"}";
		assertEquals(message , response.getBody().asString());
	}

	@Entao("^devo receber a mesagem de erro já existe pessoa cadastrada com o Telefone \"([^\"]*)\" \"([^\"]*)\"$")
	public void devo_receber_a_mesagem_de_erro_já_existe_pessoa_cadastrada_com_o_Telefone(String ddd1, String tel1)
			throws Throwable {

		String message = "{\"erro\":\"Já existe pessoa cadastrada com o Telefone (" + ddd1 + ")" + tel1 + "\"}";
		assertEquals(message , response.getBody().asString());

	}

}
