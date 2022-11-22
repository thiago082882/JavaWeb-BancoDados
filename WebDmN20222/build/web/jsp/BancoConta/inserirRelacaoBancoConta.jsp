<%@page import="com.sun.tools.javac.resources.ct"%>
<%@page import="backenddmn20222.models.beans.Banco"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.models.beans.Conta"%>
<%@page import="backenddmn20222.controllers.ControllerConta"%>
<%@page import="backenddmn20222.controllers.ControllerBanco"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>



<%
    
   
    ControllerConta conCont = new ControllerConta();
     Conta con = new Conta();
    List<Conta> cons = conCont.listarWeb(con);
    
    ControllerBanco banCont = new ControllerBanco();
    Banco banEnt = new Banco("");
    List<Banco> bans = banCont.listar(banEnt);
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR BANCO CONTA</title>
    <body>
        <div class="container"/>
            <h1>Inseri Banco Conta</h1>
            <form name="inseriBancoConta" action="validaRelacaoBancoConta.jsp" method="POST">
                <table>
                    <tr>
                        <td>Conta:</td>
                        <td>
                            <select NAME ="ID_CONTA" class="browser-default">
                                <% for (Conta ct : cons) { %>
                                    <option value="<%=ct.getId()%>"><%=ct.getAgencia()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Banco:</td>
                        <td>
                            <select NAME="ID_BANCO" class="browser-default">
                                <% for (Banco ban : bans) { %>
                                    <option value="<%=ban.getId()%>"><%=ban.getNome_banco()%></option>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Id:</td>
                        <td><input type="text" name="ID" value=""></td>
                    </tr>
                </table>    
                <input type="submit" name="Enviar" value="Enviar">  <br>
            </form>
        </div>                     
    </body>
</html>
