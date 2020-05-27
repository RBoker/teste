#language: pt
#Encoding: UTF-8
#  • Deve ser possível procurar pessoa pelo DDD e telefone
#  • Deve retornar erro quando buscar pessoa por telefone inexistente 04
#  • Deve salvar nova pessoa no sistema 01
#  • Não deve ser possível salvar duas pessoas com o mesmo CPF 02
#  • Não deve ser possível salvar duas pessoas com o mesmo telefone 03
@TESTAPI-01
Funcionalidade: - Inclusão e consulta de Cadastro

  Esquema do Cenário: CT01 - Deve salvar nova pessoa no sistema
    Dado que eu Queira incluir um novo cadastro
    E eu envio os Dados da pessoa: <codigo>, <nome>, <cpf>, <logradouro1>, <numero1>, <complemento1>, <bairro1>, <cidade1>, <estado1>, <ddd1>, <telefone1>, <logradouro2>, <numero2>, <complemento2>, <bairro2>, <cidade2>, <estado2>, <ddd2>, <telefone2>
    Entao devo receber um status code '201'

    Exemplos: 
      | codigo | nome              | cpf           | logradouro1           | numero1 | complemento1 | bairro1                 | cidade1     | estado1 | ddd1 | telefone1   | logradouro2 | numero2 | complemento2 | bairro2 | cidade2 | estado2 | ddd2 | telefone2 |
      |      0 | "Rafael Teixeira" | "12345678909" | "Rua Alexandre Dumas" |     123 | "empresa"    | "Chacara Santo Antonio" | "São Paulo" | "SP"    | "11" | "985388877" | ""          | ""      | ""           | ""      | ""      | ""      | ""   | ""        |

  Esquema do Cenário: CT02 -Não deve ser possível salvar duas pessoas com o mesmo CPF
    Dado que eu Queira incluir um novo cadastro
    E eu envio os Dados da pessoa: <codigo>, <nome>, <cpf>, <logradouro1>, <numero1>, <complemento1>, <bairro1>, <cidade1>, <estado1>, <ddd1>, <telefone1>, <logradouro2>, <numero2>, <complemento2>, <bairro2>, <cidade2>, <estado2>, <ddd2>, <telefone2>
    Entao devo receber um status code '400'
    E devo receber a mesagem de erro já existe pessoa cadastrada com o CPF <cpf>
    Exemplos: 
      | codigo | nome              | cpf           | logradouro1           | numero1 | complemento1 | bairro1                 | cidade1     | estado1 | ddd1 | telefone1   | logradouro2 | numero2 | complemento2 | bairro2 | cidade2 | estado2 | ddd2 | telefone2 |
      |      0 | "Rafael Teixeira" | "12345678909" | "Rua Alexandre Dumas" |     123 | "empresa"    | "Chacara Santo Antonio" | "São Paulo" | "SP"    | "11" | "985388878" | ""          | ""      | ""           | ""      | ""      | ""      | ""   | ""        |

  Esquema do Cenário: CT03 -Não deve ser possível salvar duas pessoas com o mesmo telefone
    Dado que eu Queira incluir um novo cadastro
    E eu envio os Dados da pessoa: <codigo>, <nome>, <cpf>, <logradouro1>, <numero1>, <complemento1>, <bairro1>, <cidade1>, <estado1>, <ddd1>, <telefone1>, <logradouro2>, <numero2>, <complemento2>, <bairro2>, <cidade2>, <estado2>, <ddd2>, <telefone2>
    Entao devo receber um status code '400'
    E devo receber a mesagem de erro já existe pessoa cadastrada com o Telefone <ddd1> <telefone1>

    Exemplos: 
      | codigo | nome              | cpf           | logradouro1           | numero1 | complemento1 | bairro1                 | cidade1     | estado1 | ddd1 | telefone1   | logradouro2 | numero2 | complemento2 | bairro2 | cidade2 | estado2 | ddd2 | telefone2 |
      |      0 | "Rafael Teixeira" | "12345678900" | "Rua Alexandre Dumas" |     123 | "empresa"    | "Chacara Santo Antonio" | "São Paulo" | "SP"    | "11" | "985388877" | ""          | ""      | ""           | ""      | ""      | ""      | ""   | ""        |

  Esquema do Cenário: CT04 - Deve ser possível procurar pessoa pelo DDD e telefone
    Dado que eu Queira consultar um cadastro existente
    E eu envio o <ddd1> e <telefone1>
    Entao devo receber um status code '200'

    Exemplos: 
      | codigo | nome              | cpf           | logradouro1          | numero1 | complemento1 | bairro1                 | cidade1     | estado1 | ddd1 | telefone1   | logradouro2 | numero2 | complemento2 | bairro2 | cidade2 | estado2 | ddd2 | telefone2 |
      |      0 | "Rafael Teixeira" | "12345678909" | "Rua Alexandre Dumas |     123 | "empresa     | "Chacara Santo Antonio" | "São Paulo" | "SP"    | "11" | "985388877" |             |         |              |         |         |         |      |           |

  Esquema do Cenário: CT05 - Deve retornar erro quando buscar pessoa por telefone inexistente
    Dado que eu Queira consultar um cadastro existente
    E eu envio o <ddd1> e <telefone1>
    Entao devo receber um status code '404'

    Exemplos: 
      | codigo | nome              | cpf           | logradouro1          | numero1 | complemento1 | bairro1                 | cidade1     | estado1 | ddd1 | telefone1   | logradouro2 | numero2 | complemento2 | bairro2 | cidade2 | estado2 | ddd2 | telefone2 |
      |      0 | "Rafael Teixeira" | "12345678909" | "Rua Alexandre Dumas |     123 | "empresa     | "Chacara Santo Antonio" | "São Paulo" | "SP"    | "11" | "985388800" |             |         |              |         |         |         |      |           |
