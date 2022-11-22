<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String telefone = request.getParameter("TELEFONE");
    String email = request.getParameter("EMAIL");
    String sexo = request.getParameter("SEXO");
    String cbusca = request.getParameter("CBUSCA");
    Cliente cli = new Cliente(id,nome,cpf,telefone,email,sexo);
    ControllerCliente cliCont = new ControllerCliente();
    cli = cliCont.alterar(cli);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>