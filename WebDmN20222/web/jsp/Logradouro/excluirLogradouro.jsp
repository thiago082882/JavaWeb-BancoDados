<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Logradouro log = new Logradouro(id);
    ControllerLogradouro logCont = new ControllerLogradouro();
    log = logCont.excluir(log);
    String lbusca = request.getParameter("LBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarLogradouro.jsp?ENDERECO=" + lbusca;
    response.sendRedirect(url);
%>