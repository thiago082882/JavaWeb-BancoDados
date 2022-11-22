<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.models.beans.BancoConta"%>
<%@page import="backenddmn20222.controllers.ControllerBancoConta"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoConta bancon = new BancoConta(id);
    ControllerBancoConta banconcont = new ControllerBancoConta();
    List<BancoConta> bancons = banconcont.listar(bancon);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "BBUSCA=" + bancon.getId()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA BANCOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  
                  <th data-field="IdbanConta">Id</th>
                  <th data-field="IdConta">IdConta</th>
                  <th data-field="AgenciaConta">AgenciaConta</th>
                  <th data-field="IdBanco">IdBanco</th>
                  <th data-field="NomeBanco">NomeBanco</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(bancons.isEmpty())) { %>    
                <tbody>
                    <% for (BancoConta listaBancoConta : bancons) { %>
                        <tr>
                            <td><%=listaBancoConta.getId()%></td>
                            <td><%=listaBancoConta.getIdConta()%></td>
                            <td><%=listaBancoConta.getCon().getAgencia()%></td>
                            <td><%=listaBancoConta.getIdBanco()%></td>
                            <td><%=listaBancoConta.getBan().getNome_banco()%></td>
                           
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoBancoConta.jsp?<%=url + listaBancoConta.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoBancoConta.jsp?<%=url + listaBancoConta.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>