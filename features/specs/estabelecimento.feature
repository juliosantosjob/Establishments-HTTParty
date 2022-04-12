#language: pt

Funcionalidade: Verificação no endpoint de consulta
    @retorna_chave
    Cenário: No Json do serviço é retornada a chave typeOfEstablishment
        Dado uma requisição no endpoint de consulta
        Quando procurar pela chave
        Então a api irá retornar a chave "typeOfEstablishment" com status code 200
        E ira exibir um print de um estabelecimento
