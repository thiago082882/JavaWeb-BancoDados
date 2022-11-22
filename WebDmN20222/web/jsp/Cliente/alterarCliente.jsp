<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente cli = new Cliente(id);
    ControllerCliente cliCont = new ControllerCliente();
    cli =cliCont.buscar(cli);
    String cbusca = request.getParameter("CBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - CLIENTE</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR CLIENTE</h1>
       
       
        <form name="alterarCliente" action="validaAlterarCliente.jsp" method="post">
     
            Nome: <input type="text" name="NOME" value="<%=cli.getNome()%>"> <br>
            Cpf: <input type="text" name="CPF" value="<%=cli.getCpf()%>"> <br>
            Telefone: <input type="text" name="TELEFONE" value="<%=cli.getTelefone()%>"> <br>
            Email: <input type="text" name="EMAIL" value="<%=cli.getEmail()%>"> <br>
              Sexo: <input type="text" name="SEXO" value="<%=cli.getSexo()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=cli.getId()%>"> <br>
            <input type="HIDDEN" name="CBUSCA" value="<%=cbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>