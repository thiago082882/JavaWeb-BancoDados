<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.ParseException"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>

<%
     
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String num = request.getParameter("AGENCIA");
    int agencia = Integer.parseInt(num);
    String numb = request.getParameter("NUMERO");
     int numero = Integer.parseInt(numb);
SimpleDateFormat formato = new SimpleDateFormat("dd/MM/yyyy");
    Date data_abertura =formato.parse(request.getParameter("DATA_ABERTURA").toString());
    String status=request.getParameter("STATUS");
    double saldo = Double.parseDouble(request.getParameter("SALDO"));
    String cbusca = request.getParameter("CBUSCA");
    Conta con = new Conta(id,agencia,numero,new java.sql.Date(data_abertura.getTime()),status,saldo);
    ControllerConta conCont = new ControllerConta();
    con = conCont.alterar(con);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarConta.jsp?AGENCIA="+cbusca;
     
    response.sendRedirect(url);
%>