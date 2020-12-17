#language:pt

  Funcionalidade: CRUD de Processos

    Esquema do Cenário: Registro de um processo com o POST
      Dado que estou com o endereço da página de processos
      E o usuário informa a "vara" com o valor "<vara>"
      E o usuário informa o "numero_processo" com o valor "<numprocesso>"
      E o usuário informa o "natureza" com o valor "<natureza>"
      E o usuário informa o "partes" com o valor "<partes>"
      E o usuário informa o "urgente" com o valor "<urgente>"
      E o usuário informa o "arbitramento" com o valor "<arbitramento>"
      E o usuário informa o "assistente_social" com o valor "<assistenteSocial>"
      E o usuário informa o "data_entrada" com o valor "<dataEntrega>"
      E o usuário informa o "status" com o valor "<status>"
      Quando o usuário clicar em salvar
      Então o usuário deve receber o código "<codigo>" como Response

      Exemplos:
        | vara | numprocesso | natureza | partes       | urgente | arbitramento | assistenteSocial | dataEntrega | status     | codigo |
        | 3    | 4           | Guarda   | Jose X Maria | N       | S            | Gisele           | 20/10/2020  | Aguardando | 201    |

    Esquema do Cenário: Validar alteração de registro de um processo com o GET
      Dado que estou com o endereço da página de processos
      E o usuário informa a "vara" com o valor "<vara>"
      E o usuário informa o "numero_processo" com o valor "<numprocesso>"
      E o usuário informa o "natureza" com o valor "<natureza>"
      E o usuário informa o "partes" com o valor "<partes>"
      E o usuário informa o "urgente" com o valor "<urgente>"
      E o usuário informa o "arbitramento" com o valor "<arbitramento>"
      E o usuário informa o "assistente_social" com o valor "<assistenteSocial>"
      E o usuário informa o "data_entrada" com o valor "<dataEntrega>"
      E o usuário informa o "status" com o valor "<status>"
      Quando o usuário clicar em pesquisar
      E o usuário quer validar as informações recebidas
      Então o processo retornará "vara" com o valor "<vara>"
      E o processo retornará "numero_processo" com o valor "<numprocesso>"
      E o processo retornará "natureza" com o valor "<natureza>"
      E o processo retornará "partes" com o valor "<partes>"
      E o processo retornará "urgente" com o valor "<urgente>"
      E o processo retornará "arbitramento" com o valor "<arbitramento>"
      E o processo retornará "assistente_social" com o valor "<assistenteSocial>"
      E o processo retornará "status" com o valor "<status>"

      Exemplos:
        | vara        | numprocesso | natureza | partes                | urgente | arbitramento | assistenteSocial | dataEntrega | status     |
        | 3           | 4           | Guarda   | Jose X Maria          | N       | S            | Gisele           | 20/10/2020  | Aguardando |
        | São Paulo   | 12345       | Defesa   | Henrique X Wellington | N       | S            | Adalberto        | 21/10/2020  | Aguardando |