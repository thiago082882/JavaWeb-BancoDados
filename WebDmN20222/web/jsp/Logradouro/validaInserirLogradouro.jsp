<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String endereco =request.getParameter("ENDERECO");
    String cep =request.getParameter("CEP");
    String complemento =request.getParameter("COMPLEMENTO");
   
 
    Logradouro log = new Logradouro(endereco,cep,complemento);
    ControllerLogradouro logcont = new ControllerLogradouro();
  log = logcont.inserir(log);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirLogradouro.jsp";
    response.sendRedirect(url);
%>

