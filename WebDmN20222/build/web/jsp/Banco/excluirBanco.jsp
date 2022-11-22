
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Banco"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Banco ban = new Banco(id);
    ControllerBanco banCont = new ControllerBanco();
    ban = banCont.excluir(ban);
    String bbusca = request.getParameter("BBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarBanco.jsp?NOME_BANCO=" + bbusca;
    response.sendRedirect(url);
%>