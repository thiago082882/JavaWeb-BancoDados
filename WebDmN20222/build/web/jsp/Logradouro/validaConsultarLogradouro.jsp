<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>

<%
    
     String endereco = request.getParameter("ENDERECO");
    Logradouro log = new Logradouro(endereco);
    ControllerLogradouro logcont = new ControllerLogradouro();
    List<Logradouro>logs= logcont.listar(log);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "LBUSCA=" + endereco+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA LOGRADOUROS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Endereco">Endereco</th>
                  <th data-field="Cep">Cep</th>
                  <th data-field="Complemento">Complemento</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(logs.isEmpty())) { %>    
                <tbody>
                    <% for (Logradouro listaLogradouros : logs) { %>
                        <tr>
                            <td><%=listaLogradouros.getId()%></td>
                            <td><%=listaLogradouros.getEnd()%></td>
                            <td><%=listaLogradouros.getCep()%></td>
                            <td><%=listaLogradouros.getComp()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirLogradouro.jsp?<%=url + listaLogradouros.getId()%>">Excluir</a></td>
                                <td><a href="alterarLogradouro.jsp?<%=url + listaLogradouros.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>