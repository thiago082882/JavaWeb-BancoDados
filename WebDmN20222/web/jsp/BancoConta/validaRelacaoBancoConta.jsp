<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.BancoConta"%>
<%@page import="backenddmn20222.controllers.ControllerBancoConta"%>

<%
  int idBanco = Integer.parseInt(request.getParameter("ID_BANCO"));
  int idConta = Integer.parseInt(request.getParameter("ID_CONTA"));
    BancoConta bancon = new BancoConta(idConta,idBanco);
    ControllerBancoConta banconcont = new ControllerBancoConta();
    bancon = banconcont.inserir(bancon);
    
// REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirRelacaoBancoConta.jsp";
    response.sendRedirect(url);

%>