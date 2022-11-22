<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.ContaCliente"%>
<%@page import="backenddmn20222.controllers.ControllerContaCliente"%>

<%
    
    ControllerConta conCont = new ControllerConta();
    Conta ct = new Conta();
    List<Conta> cons = conCont.listarWeb(ct);

    ControllerCliente cliCont = new ControllerCliente();
    Cliente cliEnt = new Cliente("");
    List<Cliente> clis = cliCont.listar(cliEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ContaCliente conCli = new ContaCliente(id);
    ControllerContaCliente conCliCont = new ControllerContaCliente();
   conCli = conCliCont.buscar(conCli);
    String bbusca = request.getParameter("BBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTA CLIENTE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - CONTA CLIENTE</h1>
        <form name="alterarContaCliente" action="validaAlterarRelacaoContaCliente.jsp" method="post">
            <table>
                <tr>
                    <td>Conta:</td>
                        <td>
                             <select NAME ="ID_CONTA" class="browser-default">
                                <% for (Conta con : cons) { %>
                                    <% if( con.getId()== conCli.getIdConta()) { %>
                                        <option selected value="<%=con.getId()%>"><%=con.getAgencia()%></option>
                                    <% } else { %>
                                        <option value="<%=con.getId()%>"><%=con.getAgencia()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Cliente:</td>
                        <td>
                            <select NAME="ID_CLIENTE" class="browser-default">
                                <% for (Cliente cli : clis) { %>
                                    <% if( cli.getId() == conCli.getIdCliente()) { %>
                                        <option selected value="<%=cli.getId()%>"><%=cli.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=cli.getId()%>"><%=cli.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                           
                        </td>
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="ID" value="<%=conCli.getId()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=conCli.getId()%>"> <br>
            <input type="HIDDEN" name="BBUSCA" value="<%=bbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>