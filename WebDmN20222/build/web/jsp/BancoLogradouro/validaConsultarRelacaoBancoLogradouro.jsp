<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page import="backenddmn20222.models.beans.Logradouro"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerLogradouro"%>
<%@page import="backenddmn20222.models.beans.BancoLogradouro"%>
<%@page import="backenddmn20222.controllers.ControllerBancoLogradouro"%>

<%
    
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    BancoLogradouro banLog = new BancoLogradouro(id);
    ControllerBancoLogradouro banlogcont = new ControllerBancoLogradouro();
    List<BancoLogradouro> banlogs = banlogcont.listar(banLog);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "BBUSCA=" + banLog.getId()+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA BANCOS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="IdBanLogradouro">Id</th>
                  <th data-field="IdLogradouro">IdLogradouro</th>
                  <th data-field="NomeLogradouro">NomeLogradouro</th>
                  <th data-field="IdBanco">IdBanco</th>
                  <th data-field="NomeBanco">NomeBanco</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(banlogs.isEmpty())) { %>    
                <tbody>
                    <% for (BancoLogradouro listaBancoLogradouro : banlogs) { %>
                        <tr>
                            <td><%=listaBancoLogradouro.getId()%></td>
                               <td><%=listaBancoLogradouro.getIdLogradouro()%></td>
                              <td><%=listaBancoLogradouro.getLog().getEnd()%></td>
                             <td><%=listaBancoLogradouro.getIdBanco()%></td>
                         <td><%=listaBancoLogradouro.getBan().getNome_banco()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirRelacaoBancoLogradouro.jsp?<%=url + listaBancoLogradouro.getId()%>">Excluir</a></td>
                                <td><a href="alterarRelacaoBancoLogradouro.jsp?<%=url + listaBancoLogradouro.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>