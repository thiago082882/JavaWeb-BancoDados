<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>

<%
     String nome = request.getParameter("NOME");
     String cpf = request.getParameter("CPF");
     String telefone = request.getParameter("TELEFONE");
     String email = request.getParameter("EMAIL");
     String sexo = request.getParameter("SEXO");
 
    Cliente cli = new Cliente(nome,cpf,telefone,email,sexo);
    ControllerCliente clicont = new ControllerCliente();
   cli = clicont.inserir(cli);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirCliente.jsp";
    response.sendRedirect(url);
%>

