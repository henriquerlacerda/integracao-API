#language:pt

Funcionalidade: CRUD de Processos

  Contexto:
    Dado que estou com o endereço da página de processos
    E o usuário informa a "vara" com o valor "3"
    E o usuário informa o "numero_processo" com o valor "4"
    E o usuário informa o "natureza" com o valor "Guarda"
    E o usuário informa o "partes" com o valor "Jose x Maria"
    E o usuário informa o "urgente" com o valor "N"
    E o usuário informa o "arbitramento" com o valor "S"
    E o usuário informa o "assistente_social" com o valor "Gisele"
    E o usuário informa o "data_entrada" com o valor "20/10/2020"
    E o usuário informa o "data_saida" com o valor ""
    E o usuário informa o "data_agendamento" com o valor ""
    E o usuário informa o "status" com o valor "Aguardando"
    E o usuário informa o "observacao" com o valor ""

  Cenário: Registro de um processo com o POST
    Quando o usuário clicar em salvar
    Então o usuário deve receber o código "201" como Response

  Cenário: Validar alteração de registro de um processo com o GET
    Quando o usuário clicar em pesquisar
    E o usuário quer validar as informações recebidas
    Então o processo retornará "vara" com o valor "3"
    E o processo retornará "numero_processo" com o valor "4"
    E o processo retornará "natureza" com o valor "Guarda"
    E o processo retornará "partes" com o valor "Jose x Maria"
    E o processo retornará "urgente" com o valor "N"
    E o processo retornará "arbitramento" com o valor "S"
    E o processo retornará "assistente_social" com o valor "Gisele"
    E o processo retornará "data_entrada" com o valor "2020-10-20"
    E o processo retornará "data_saida" com o valor ""
    E o processo retornará "data_agendamento" com o valor ""
    E o processo retornará "status" com o valor "Aguardando"
    E o processo retornará "observacao" com o valor ""

  Cenário: Validar alteração de registro de um processo com o PUT
    Quando o usuário clicar em pesquisar
    E o usuário informa a "vara" com o valor "São Paulo"
    E o usuário informa o "assistente_social" com o valor "José"
    Então o processo será alterado e o usuário clicará em salvar
    E o usuário irá validar os dados alterados
    E o processo retornará "vara" com o valor "São Paulo"
    E o processo retornará "assistente_social" com o valor "José"

  Cenário: Validar alteração de registro de um processo com o DELETE
    Quando o usuário clicar em pesquisar
    E o usuário clicar em deletar
    Então o usuário irá receber a resposta "204"