<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.ContaCliente"%>
<%@page import="backenddmn20222.controllers.ControllerContaCliente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ContaCliente conCli = new ContaCliente(id);
    ControllerContaCliente banConCont = new ControllerContaCliente();
    conCli = banConCont.excluir(conCli);
    
    String bbusca = request.getParameter("BBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarRelacaoContaCliente.jsp?ID=" + bbusca;
    response.sendRedirect(url);

%>

