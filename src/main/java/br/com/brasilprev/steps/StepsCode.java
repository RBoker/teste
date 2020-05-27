package br.com.brasilprev.steps;

import org.json.JSONObject;
import org.junit.Test;

import io.restassured.RestAssured;
import io.restassured.response.Response;
import br.com.brasilprev.config.EndPoint;

public class StepsCode {

	@Test
	public Response cadastrar(JSONObject dados) {

		RestAssured.baseURI = EndPoint.BASE_URL;

		Response response = 
				RestAssured.
				given().
					contentType("application/json").
					body(dados.toString()).
				when().
					post("");

		String body = response.
				getBody().
				asString();
		
		System.out.println(body);
		System.out.println(response.getStatusCode());
		return response;
	}

	@Test
	public Response consultar(String str) {
		RestAssured.baseURI = EndPoint.BASE_URL;
		Response response = RestAssured.
				given().
					when().
						get(str);

		return response;
	}
}
