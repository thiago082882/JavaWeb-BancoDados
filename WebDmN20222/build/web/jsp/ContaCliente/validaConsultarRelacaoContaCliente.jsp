<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.ContaCliente"%>
<%@page import="backenddmn20222.controllers.ControllerContaCliente"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    ContaCliente concli = new ContaCliente(id);
    ControllerContaCliente conclicont = new ControllerContaCliente();
    List<ContaCliente> conclis = conclicont.listar(concli);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "BBUSCA=" + concli.getId()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CONTAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdUsuPessoa">Id</th>
                  <th data-field="IdCliente">IdCliente</th>
                  <th data-field="NomeCliente">NomeCliente</th>
                 <th data-field="IdConta">IdConta</th>
                 <th data-field="NomeConta">NomeConta</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(conclis.isEmpty())) { %>    
                <tbody>
                    <% for (ContaCliente listaContaCliente : conclis) { %>
                        <tr>
                            <td><%=listaContaCliente.getId()%></td>
                            <td><%=listaContaCliente.getIdConta()%></td>
                            <td><%=listaContaCliente.getCon().getAgencia()%></td>
                            <td><%=listaContaCliente.getIdCliente()%></td>
                            <td><%=listaContaCliente.getCli().getNome()%></td>
                           
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoContaCliente.jsp?<%=url + listaContaCliente.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoContaCliente.jsp?<%=url + listaContaCliente.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>