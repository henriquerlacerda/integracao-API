#language:pt

  Funcionalidade: CRUD de Processos

    @Cenarios
    Cenário: Validar registro de todos os processos com o GET
      Dado que estou com o endereço da página de processos
      Quando o usuário solicita as informações de todos os processos
      Então o usuário irá receber a resposta "200"

    @Cenarios
    Cenário: Validar alteração de registro de um processo com o PUT
      Dado que estou com o endereço da página de processos
      E o usuário informa a "vara" com o valor "5"
      E o usuário informa o "numero_processo" com o valor "7"
      E o usuário informa o "natureza" com o valor "Go Horse"
      E o usuário informa o "partes" com o valor "Wellington x Henrique"
      E o usuário informa o "urgente" com o valor "N"
      E o usuário informa o "arbitramento" com o valor "S"
      E o usuário informa o "assistente_social" com o valor "Patricia"
      E o usuário informa o "data_entrada" com o valor "20/10/2020"
      E o usuário informa o "data_saida" com o valor ""
      E o usuário informa o "data_agendamento" com o valor ""
      E o usuário informa o "status" com o valor "Em Andamento"
      E o usuário informa o "observacao" com o valor ""
      Quando o usuário clicar em pesquisar
      E o usuário informa a "vara" com o valor "São Paulo"
      E o usuário informa o "assistente_social" com o valor "José"
      Então o processo será alterado e o usuário clicará em salvar
      E o usuário irá validar os dados alterados
      E o processo retornará "vara" com o valor "São Paulo"
      E o processo retornará "assistente_social" com o valor "José"

    @Cenarios
    Cenário: Validar alteração de registro de um processo com o DELETE
      Dado que estou com o endereço da página de processos
      E o usuário informa a "vara" com o valor "5"
      E o usuário informa o "numero_processo" com o valor "7"
      E o usuário informa o "natureza" com o valor "Go Horse"
      E o usuário informa o "partes" com o valor "Wellington x Henrique"
      E o usuário informa o "urgente" com o valor "N"
      E o usuário informa o "arbitramento" com o valor "S"
      E o usuário informa o "assistente_social" com o valor "Patricia"
      E o usuário informa o "data_entrada" com o valor "20/10/2020"
      E o usuário informa o "data_saida" com o valor ""
      E o usuário informa o "data_agendamento" com o valor ""
      E o usuário informa o "status" com o valor "Em Andamento"
      E o usuário informa o "observacao" com o valor ""
      Quando o usuário clicar em pesquisar
      E o usuário clicar em deletar
      Então o usuário irá receber a resposta "204"