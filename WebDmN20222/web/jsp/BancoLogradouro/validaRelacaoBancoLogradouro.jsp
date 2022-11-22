<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.BancoLogradouro"%>
<%@page import="backenddmn20222.controllers.ControllerBancoLogradouro"%>

<%
    int idBanco = Integer.parseInt(request.getParameter("ID_BANCO"));
    int idLogradouro= Integer.parseInt(request.getParameter("ID_LOGRADOURO"));
    BancoLogradouro banlog = new BancoLogradouro(idLogradouro,idBanco);
    ControllerBancoLogradouro banlogcont = new ControllerBancoLogradouro();
    banlog = banlogcont.inserir(banlog);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoBancoLogradouro.jsp";
    response.sendRedirect(url);

%>