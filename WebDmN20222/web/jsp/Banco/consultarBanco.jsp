<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - BANCO </title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR BANCO</h1>
       <form name="consultarBanco" action="validaConsultarBanco.jsp" method="post">
           NOME_BANCO <input type="text" name ="NOME_BANCO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
