<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.BancoConta"%>
<%@page import="backenddmn20222.controllers.ControllerBancoConta"%>

<%
    
    ControllerConta conCont = new ControllerConta();
    Conta ct = new Conta();
    List<Conta> cons = conCont.listarWeb(ct);

    ControllerBanco usuCont = new ControllerBanco();
    Banco banEnt = new Banco("");
    List<Banco> bans = usuCont.listar(banEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoConta banCon = new BancoConta(id);
    ControllerBancoConta banConCont = new ControllerBancoConta();
    banCon = banConCont.buscar(banCon);
    String bbusca = request.getParameter("BBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - BANCO CONTA</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - BANCO CONTA</h1>
        <form name="alterarBancoConta" action="validaAlterarRelacaoBancoConta.jsp" method="post">
            <table>
                <tr>
                    <td>Banco:</td>
                        <td>
                            <select NAME="ID_BANCO" class="browser-default">
                                <% for (Banco ban : bans) { %>
                                    <% if( ban.getId() == banCon.getIdBanco()) { %>
                                        <option selected value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
                                    <% } else { %>
                                        <option value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Conta:</td>
                        <td>
                            <select NAME ="ID_CONTA" class="browser-default">
                                <% for (Conta con : cons) { %>
                                    <% if( con.getId()== banCon.getIdConta()) { %>
                                        <option selected value="<%=con.getId()%>"><%=con.getAgencia()%></option>
                                    <% } else { %>
                                        <option value="<%=con.getId()%>"><%=con.getAgencia()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="ID" value="<%=banCon.getId()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=banCon.getId()%>"> <br>
            <input type="HIDDEN" name="BBUSCA" value="<%=bbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>