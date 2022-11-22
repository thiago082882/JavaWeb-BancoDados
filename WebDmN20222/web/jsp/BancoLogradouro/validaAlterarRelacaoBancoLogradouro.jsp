<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.BancoLogradouro"%>
<%@page import="backenddmn20222.controllers.ControllerBancoLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idBanco = Integer.parseInt(request.getParameter("ID_BANCO"));
    int idLogradouro = Integer.parseInt(request.getParameter("ID_LOGRADOURO"));
    String bbusca = request.getParameter("BBUSCA");
    BancoLogradouro banlog = new BancoLogradouro(id,idLogradouro,idBanco);
    ControllerBancoLogradouro banlogcont = new ControllerBancoLogradouro();
    banlog = banlogcont.alterar(banlog);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoBancoLogradouro.jsp?ID=" + bbusca;
    response.sendRedirect(url);
%>    
    
    