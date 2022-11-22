<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>

<%
 
    String nome_banco = request.getParameter("NOME_BANCO");
   
    Banco ban = new Banco(nome_banco);
    ControllerBanco bancont = new ControllerBanco();
    ban = bancont.inserir(ban);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirBanco.jsp";
    response.sendRedirect(url);
%>

