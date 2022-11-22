<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.BancoLogradouro"%>
<%@page import="backenddmn20222.controllers.ControllerBancoLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoLogradouro banLog = new BancoLogradouro(id);
    ControllerBancoLogradouro banLogCont = new ControllerBancoLogradouro();
    banLog = banLogCont.excluir(banLog);
    
    String bbusca = request.getParameter("BBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarBancoLogradouro.jsp?ID=" + bbusca;
    response.sendRedirect(url);

%>

