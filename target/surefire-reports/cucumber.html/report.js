$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("features/lista-produto/lista-produto.feature");
formatter.feature({
  "comments": [
    {
      "line": 1,
      "value": "#language: pt"
    },
    {
      "line": 2,
      "value": "#Author: Fredi Roldan"
    },
    {
      "line": 3,
      "value": "#Version: 1.0"
    },
    {
      "line": 4,
      "value": "#Encoding: UTF-8"
    }
  ],
  "line": 5,
  "name": "- Consulta lista de produtos da Conductor",
  "description": "",
  "id": "--consulta-lista-de-produtos-da-conductor",
  "keyword": "Funcionalidade"
});
formatter.scenario({
  "line": 8,
  "name": "CT01 - consultar lista de produtos",
  "description": "",
  "id": "--consulta-lista-de-produtos-da-conductor;ct01---consultar-lista-de-produtos",
  "type": "scenario",
  "keyword": "Cenario",
  "tags": [
    {
      "line": 7,
      "name": "@TESTAPI-01"
    }
  ]
});
formatter.step({
  "line": 9,
  "name": "que faco uma requisicao GET/products",
  "keyword": "Dado "
});
formatter.step({
  "line": 10,
  "name": "devo receber um status code \u0027200\u0027",
  "keyword": "Entao "
});
formatter.step({
  "line": 11,
  "name": "retorno dos produtos",
  "keyword": "E "
});
formatter.match({
  "location": "ListaProdutosSteps.queFacoUmaRequisicaoGETProducts()"
});
formatter.result({
  "duration": 2343084000,
  "status": "passed"
});
formatter.match({
  "arguments": [
    {
      "val": "200",
      "offset": 29
    }
  ],
  "location": "ListaProdutosSteps.devoReceberUmStatusCode(int)"
});
formatter.result({
  "duration": 2890700,
  "error_message": "java.lang.AssertionError: expected:\u003c200\u003e but was:\u003c404\u003e\r\n\tat org.junit.Assert.fail(Assert.java:88)\r\n\tat org.junit.Assert.failNotEquals(Assert.java:834)\r\n\tat org.junit.Assert.assertEquals(Assert.java:645)\r\n\tat org.junit.Assert.assertEquals(Assert.java:631)\r\n\tat br.com.conductor.steps.ListaProdutosSteps.devoReceberUmStatusCode(ListaProdutosSteps.java:37)\r\n\tat ✽.Entao devo receber um status code \u0027200\u0027(features/lista-produto/lista-produto.feature:10)\r\n",
  "status": "failed"
});
formatter.match({
  "location": "ListaProdutosSteps.retornoDosProdutos()"
});
formatter.result({
  "status": "skipped"
});
});