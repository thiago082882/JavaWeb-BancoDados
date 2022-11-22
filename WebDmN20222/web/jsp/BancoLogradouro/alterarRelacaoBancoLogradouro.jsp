<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.BancoLogradouro"%>
<%@page import="backenddmn20222.controllers.ControllerBancoLogradouro"%>

<%
    ControllerLogradouro logCont = new ControllerLogradouro();
    Logradouro lg = new Logradouro("");
    List<Logradouro> logs = logCont.listar(lg);

    ControllerBanco banCont = new ControllerBanco();
    Banco banEnt = new Banco("");
    List<Banco> bans = banCont.listar(banEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoLogradouro banLog = new BancoLogradouro(id);
    ControllerBancoLogradouro banLogCont = new ControllerBancoLogradouro();
    banLog = banLogCont.buscar(banLog);
    String bbusca = request.getParameter("BBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - BANCO LOGRADOURO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - BANCO LOGRADOURO</h1>
        <form name="alterarBancoLogradouro" action="validaAlterarRelacaoBancoLogradouro.jsp" method="post">
            <table>
                <tr>
                    <td>Banco:</td>
                        <td>
                           <select NAME="ID_BANCO" class="browser-default">
                                <% for (Banco ban : bans) { %>
                                    <% if( ban.getId() == banLog.getIdBanco()) { %>
                                        <option selected value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
                                    <% } else { %>
                                        <option value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Logradouro:</td>
                        <td>
                            <select NAME ="ID_LOGRADOURO" class="browser-default">
                                <% for (Logradouro log :logs) { %>
                                    <% if( log.getId()==banLog.getIdLogradouro()) { %>
                                        <option selected value="<%=log.getId()%>"><%=log.getEnd()%></option>
                                    <% } else { %>
                                        <option value="<%=log.getId()%>"><%=log.getEnd()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="ID" value="<%=banLog.getId()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=banLog.getId()%>"> <br>
            <input type="HIDDEN" name="BBUSCA" value="<%=bbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>