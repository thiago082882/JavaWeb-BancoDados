<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome_banco = request.getParameter("NOME_BANCO");
    String bbusca = request.getParameter("BBUSCA");
   
    Banco ban = new Banco(id,nome_banco);
    ControllerBanco banCont = new ControllerBanco();
    ban = banCont.alterar(ban);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarBanco.jsp?NOME_BANCO=" + bbusca;
    response.sendRedirect(url);
%>