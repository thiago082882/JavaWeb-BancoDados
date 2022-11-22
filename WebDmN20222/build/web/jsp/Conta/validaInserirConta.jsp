<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>

<%
    String num = request.getParameter("AGENCIA");
    int agencia = Integer.parseInt(num);
    String numb = request.getParameter("NUMERO");
    int numero = Integer.parseInt(numb);
    SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    Date data_abertura =formato.parse(request.getParameter("DATA_ABERTURA"));
    String status=request.getParameter("STATUS");
    String sal = request.getParameter("SALDO");
    double saldo = Double.parseDouble(sal);
    Conta con = new Conta(agencia,numero,new java.sql.Date(data_abertura.getTime()),status,saldo);
    ControllerConta concont = new ControllerConta();
    con = concont.inserir(con);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirConta.jsp";
    response.sendRedirect(url);
%>

