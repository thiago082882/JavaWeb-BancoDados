<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Cliente cli = new Cliente(id);
    ControllerCliente cliCont = new ControllerCliente();
    cli = cliCont.excluir(cli);
    String cbusca = request.getParameter("CBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarCliente.jsp?NOME=" + cbusca;
    response.sendRedirect(url);
%>