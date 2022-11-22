<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.BancoConta"%>
<%@page import="backenddmn20222.controllers.ControllerBancoConta"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoConta banCon = new BancoConta(id);
    ControllerBancoConta banConCont = new ControllerBancoConta();
    banCon = banConCont.excluir(banCon);
    
    String bbusca = request.getParameter("BBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoBancoConta.jsp?ID=" + bbusca;
    response.sendRedirect(url);

%>

