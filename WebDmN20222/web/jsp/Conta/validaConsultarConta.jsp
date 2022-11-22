<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>

<%
    int agencia = Integer.parseInt(request.getParameter("AGENCIA"));
    Conta con = new Conta(agencia,0);
    ControllerConta concont = new ControllerConta();
    List<Conta> cons = concont.listar(con);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CBUSCA=" + agencia+"&ID=";
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Agencia">Agencia</th>
                  <th data-field="Numero">Numero</th>
                  <th data-field="Data_abertura">Data_Abertura</th>
                  <th data-field="Status">Status</th>
                  <th data-field="Saldo">Saldo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(cons.isEmpty())) { %>    
                <tbody>
                    <% for (Conta listaContas : cons) { %>
                        <tr>
                            <td><%=listaContas.getId()%></td>
                            <td><%=listaContas.getAgencia()%></td>
                            <td><%=listaContas.getNumero()%></td>
                            <td><%=listaContas.converteDate()%></td>
                             <td><%=listaContas.getStatus()%></td>
                              <td><%=listaContas.getSaldo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirConta.jsp?<%=url + listaContas.getId()%>">Excluir</a></td>
                                <td><a href="alterarConta.jsp?<%=url + listaContas.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>