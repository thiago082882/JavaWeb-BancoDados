<%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.ContaCliente"%>
<%@page import="backenddmn20222.controllers.ControllerContaCliente"%>

<%
       String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idConta = Integer.parseInt(request.getParameter("ID_CONTA"));
    int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
    String bbusca = request.getParameter("BBUSCA");
    ContaCliente concli = new ContaCliente(id,idConta,idCliente);
    ControllerContaCliente banconcont = new ControllerContaCliente();
    concli = banconcont.alterar(concli);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContaCliente.jsp?ID=" + bbusca;
    response.sendRedirect(url);
%>    
    
    