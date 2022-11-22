<%@page import="com.sun.tools.javac.resources.ct"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>



<%
    
   
    ControllerConta conCont = new ControllerConta();
     Conta con = new Conta();
    List<Conta> cons = conCont.listarWeb(con);
    
    ControllerCliente conCli = new ControllerCliente();
    Cliente cliEnt = new Cliente("");
    List<Cliente> clis = conCli.listar(cliEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR BANCO CONTA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Banco Conta</h1>
            <form name="inseriContaCliente" action="validaRelacaoContaCliente.jsp" method="POST">
                <table>
                    <tr>
                       <td>Cliente:</td>
                        <td>
                            <select NAME="ID_CLIENTE" class="browser-default">
                                <% for (Cliente cli : clis) { %>
                                    <option value="<%=cli.getId()%>"><%=cli.getNome()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                         <td>Conta:</td>
                        <td>
                            <select NAME ="ID_CONTA" class="browser-default">
                                <% for (Conta ct : cons) { %>
                                    <option value="<%=ct.getId()%>"><%=ct.getAgencia()%></option>
                                <% } %>
                            </select> 
                        </td> 
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="ID" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
