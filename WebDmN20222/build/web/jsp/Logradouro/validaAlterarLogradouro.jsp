<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String endereco = request.getParameter("ENDERECO");
    String cep = request.getParameter("CEP");
    String complemento = request.getParameter("COMPLEMENTO");
    String lbusca = request.getParameter("LBUSCA");
    Logradouro log = new Logradouro(id,endereco,cep,complemento);
    ControllerLogradouro logCont = new ControllerLogradouro();
    log =logCont.alterar(log);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarLogradouro.jsp?ENDERECO="+lbusca;
    response.sendRedirect(url);
%>