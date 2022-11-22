<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.ContaCliente"%>
<%@page import="backenddmn20222.controllers.ControllerContaCliente"%>

<%
  int idCliente = Integer.parseInt(request.getParameter("ID_CLIENTE"));
  int idConta = Integer.parseInt(request.getParameter("ID_CONTA"));
   ContaCliente concli = new ContaCliente(idConta,idCliente);
    ControllerContaCliente banconcont = new ControllerContaCliente();
    concli = banconcont.inserir(concli);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoContaCliente.jsp";
    response.sendRedirect(url);

%>