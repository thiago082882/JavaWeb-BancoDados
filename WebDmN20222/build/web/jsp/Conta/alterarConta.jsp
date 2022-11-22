<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Conta con = new Conta(id);
    ControllerConta conCont = new ControllerConta();
    con = conCont.buscar(con);
    String cbusca = request.getParameter("CBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CONTA </title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CONTA</h1>
        <form name="alterarConta" action="validaAlterarConta.jsp" method="post">
         
            Agencia: <input type="text" name="AGENCIA" value="<%=con.getAgencia()%>"> <br>
            Numero: <input type="text" name="NUMERO" value="<%=con.getNumero()%>"> <br>
            Data_Abertura: <input type="text" name="DATA_ABERTURA" value="<%=con.converteDate()%>"> <br>
            Status: <input type="text" name="STATUS" value="<%=con.getStatus()%>"> <br>
             Saldo: <input type="text" name="SALDO" value="<%=con.getSaldo()%>"> <br>
              <input type="HIDDEN" name="ID" value="<%=con.getId()%>"> <br>
            <input type="HIDDEN" name="CBUSCA" value="<%=cbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>