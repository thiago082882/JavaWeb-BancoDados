<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Conta con = new Conta(id);
    ControllerConta conCont = new ControllerConta();
    con = conCont.excluir(con);
    String cbusca = request.getParameter("CBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarConta.jsp?AGENCIA=" + cbusca;
    response.sendRedirect(url);
%>