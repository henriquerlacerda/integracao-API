package steps;

import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.E;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;
import definition.Processos;

public class ProcessosSteps {
    @Dado("^que estou com o endereço da página de processos$")
    public void queEstouComOEnderecoDaPaginaDeProcessos() {
        Processos.definirPagina();
    }

    @E("^o usuário informa a \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuarioInformaAComOValor(String campo, String valor) throws Throwable {
        Processos.adicionarValorJson(campo, valor);
    }

    @E("^o usuário informa o \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioInformaOComOValor(String campo, String valor) throws Throwable {
        Processos.adicionarValorJson(campo, valor);
    }

    @Quando("^o usuário clicar em salvar$")
    public void oUsuarioClicarEmSalvar() {
        Processos.postProcesso();
    }

    @Então("^o usuário deve receber o código \"([^\"]*)\" como Response$")
    public void oUsuarioDeveVerEOCodigo(String codigo) throws Throwable {
        Processos.validaResponse(codigo);
    }

    @Quando("^o usuário clicar em pesquisar$")
    public void oUsuarioClicarEmPesquisar() {
        Processos.consultarProcessoID();
    }

    @Então("^o processo retornará \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oProcessoRetornaraComOValor(String campo, String valor) throws Throwable {
        Processos.validarInformacoesGET(campo, valor);
    }

    @Quando("^o usuário solicita as informações de todos os processos$")
    public void oUsuarioSolicitaAsInformacoesDeTodosOsProcessos() {
        Processos.consultarTodosProcessos();
    }

    @Então("^o usuário irá receber a resposta \"([^\"]*)\"$")
    public void oUsuarioIraReceberAResposta(String codigo) throws Throwable {
        Processos.validaResponse(codigo);
    }

    @E("^o usuário pesquisar \"([^\"]*)\" com o valor \"([^\"]*)\"$")
    public void oUsuárioDigitarComOValor(String campo, String valor) throws Throwable {
        Processos.adicionarValorJson(campo, valor);
    }

    @E("^o usuário quer validar as informações recebidas$")
    public void oUsuarioQuerValidarAsInformacoesRecebidas() {
        Processos.armazenarProcessoBuscado();
    }

    @Então("^o processo será alterado e o usuário clicará em salvar$")
    public void oProcessoSeráAlteradoEOUsuárioClicaráEmSalvar() {
        Processos.alterarDadosProcesso();
    }

    @E("^o usuário irá validar os dados alterados$")
    public void oUsuárioIráValidarOsDadosAlterados() {
        Processos.armazenarProcessoBuscado();
    }

    @E("^o usuário clicar em deletar$")
    public void oUsuarioClicarEmDeletar() {
        Processos.deletarProcesso();
    }
}
