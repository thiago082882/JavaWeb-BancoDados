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
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR BANCO LOGRADOURO</title>
    <body>
        <div class="container"/>
            <h1>Inseri BANCO LOGRADOURO</h1>
            <form name="inseriBancoLogradouro" action="validaRelacaoBancoLogradouro.jsp" method="POST">
                <table>
                    <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_LOGRADOURO" class="browser-default">
                                <% for (Logradouro log : logs) { %>
                                    <option value="<%=log.getId()%>"><%=log.getEnd()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Usuario:</td>
                        <td>
                            <select NAME="ID_BANCO" class="browser-default">
                                <% for (Banco ban : bans) { %>
                                    <option value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
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
