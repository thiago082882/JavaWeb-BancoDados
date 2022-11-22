<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>

<%
    String nome_banco = request.getParameter("NOME_BANCO");
    Banco ban = new Banco(nome_banco);
    ControllerBanco bancont = new ControllerBanco();
    List<Banco> bans = bancont.listar(ban);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "BBUSCA=" + nome_banco+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome_Banco">Nome_Banco</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(bans.isEmpty())) { %>    
                <tbody>
                    <% for (Banco listaBancos : bans) { %>
                        <tr>
                            <td><%=listaBancos.getId()%></td>
                            <td><%=listaBancos.getNome_banco()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirBanco.jsp?<%=url + listaBancos.getId()%>">Excluir</a></td>
                                <td><a href="alterarBanco.jsp?<%=url + listaBancos.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>