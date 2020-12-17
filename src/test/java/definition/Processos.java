package definition;

import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

public class Processos {

    private static String URL = "http://agapito-server.herokuapp.com/processos/";
    private static LazyMap dados = new LazyMap();
    private static String idProcesso = "";

    public static String getURL() {
        return URL;
    }

    public static void setURL(String URL) {
        Processos.URL = URL;
    }

    public static LazyMap getDados() {
        return dados;
    }


    public static String getIdProcesso() {
        return idProcesso;
    }

    public static void setIdProcesso(String idProcesso) {
        Processos.idProcesso = idProcesso;
    }

    public static void definirPagina() {
        getURL();
        getDados().clear();
    }

    public static void adicionarValorJson(String campo, String valor) {
        getDados().put(campo, valor);
    }

    public static void postProcesso() {
        RESTSupport.executePost(getURL(), getDados());
    }

    public static void validaResponse(String codigo) {
        Assert.assertEquals(Integer.parseInt(codigo), RESTSupport.getResponse().getStatusCode());
    }

    public static void consultarProcessoID() {
        RESTSupport.executePost(getURL(), getDados());
        setIdProcesso(RESTSupport.key("id").toString());
    }

    public static void validarInformacoesGET(String campo, String valor) {
        try {
            Assert.assertEquals(valor, RESTSupport.key(campo).toString());
        }
        catch(NullPointerException e){
            if(valor.equals(""))
                Assert.assertTrue(true);
            else
                Assert.assertTrue(false);
        }
    }

    public static void consultarTodosProcessos() {
        RESTSupport.executeGet(getURL());
    }

    public static void armazenarProcessoBuscado() {
        RESTSupport.executeGet(getURL() + getIdProcesso() + ".json");
    }

    public static void alterarDadosProcesso(){
        RESTSupport.executePut(getURL() + getIdProcesso() + ".json",getDados());
    }

    public static void deletarProcesso() {
        RESTSupport.executeDelete(getURL() + getIdProcesso() + ".json");
    }
}
