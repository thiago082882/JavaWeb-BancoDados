<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.BancoConta"%>
<%@page import="backenddmn20222.controllers.ControllerBancoConta"%>

<%
       String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    int idConta = Integer.parseInt(request.getParameter("ID_CONTA"));
    int idBanco = Integer.parseInt(request.getParameter("ID_BANCO"));
    String bbusca = request.getParameter("BBUSCA");
    BancoConta bancon = new BancoConta(id,idConta,idBanco);
    ControllerBancoConta banconcont = new ControllerBancoConta();
    bancon = banconcont.alterar(bancon);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoBancoConta.jsp?ID=" + bbusca;
    response.sendRedirect(url);
%>    
    
    