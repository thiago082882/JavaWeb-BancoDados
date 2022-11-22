<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Logradouro log = new Logradouro(id);
    ControllerLogradouro logCont = new ControllerLogradouro();
   log = logCont.buscar(log);
    String lbusca = request.getParameter("LBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - LOGRADOURO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR LOGRADOURO</h1>
        <form name="alterarLogradouro" action="validaAlterarLogradouro.jsp" method="post">
            Endereco: <input type="text" name="ENDERECO" value="<%=log.getEnd()%>"> <br>
            Cep: <input type="text" name="CEP" value="<%=log.getCep()%>"> <br>
            Complemento: <input type="text" name="COMPLEMENTO" value="<%=log.getComp()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=log.getId()%>"> <br>
            <input type="HIDDEN" name="LBUSCA" value="<%=lbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>