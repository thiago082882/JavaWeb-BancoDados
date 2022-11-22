<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Banco ban = new Banco(id);
    ControllerBanco banCont = new ControllerBanco();
    ban = banCont.buscar(ban);
    String bbusca = request.getParameter("BBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - BANCO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR BANCO</h1>
        <form name="alterarBanco" action="validaAlterarBanco.jsp" method="post">
            nome_banco: <input type="text" name="NOME_BANCO" value="<%=ban.getNome_banco()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=ban.getId()%>"> <br>
            <input type="HIDDEN" name="BBUSCA" value="<%=bbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>