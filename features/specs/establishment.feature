#language: pt

Funcionalidade: Verificação no endpoint de consulta

    Cenário: Verificando que no Json do serviço esta retornando chave typeOfEstablishment
        Dado que eu faça uma requisição do tipo get no endpoint
        Quando eu receber o response body da chamada
        Então a api irá retornar a chave "typeOfEstablishment" 
        E ira exibir um print de um estabelecimento
