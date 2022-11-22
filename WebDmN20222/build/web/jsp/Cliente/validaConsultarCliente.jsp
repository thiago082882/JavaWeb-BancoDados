<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Cliente"%>
<%@page import="backenddmn20222.controllers.ControllerCliente"%>

<%
    String nome = request.getParameter("NOME");
    Cliente cli = new Cliente(nome);
    ControllerCliente clicont = new ControllerCliente();
    List<Cliente> clis = clicont.listar(cli);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "CBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA CLIENTES</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Cpf">Cpf</th>
                  <th data-field="Telefone">Telefone</th>
                  <th data-field="Email">Email</th>
                  <th data-field="Sexo">Sexo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(clis.isEmpty())) { %>    
                <tbody>
                    <% for (Cliente listaClientes : clis) { %>
                        <tr>
                            <td><%=listaClientes.getId()%></td>
                            <td><%=listaClientes.getNome()%></td>
                            <td><%=listaClientes.getCpf()%></td>
                            <td><%=listaClientes.getTelefone()%></td>
                            <td><%=listaClientes.getEmail()%></td>
                            <td><%=listaClientes.getSexo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirCliente.jsp?<%=url + listaClientes.getId()%>">Excluir</a></td>
                                <td><a href="alterarCliente.jsp?<%=url + listaClientes.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>