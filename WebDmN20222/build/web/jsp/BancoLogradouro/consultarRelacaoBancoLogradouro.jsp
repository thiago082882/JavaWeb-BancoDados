<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - BANCO LOGRADOURO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR BANCO LOGRADOURO</h1>
       <form name="consultarBancoLogradouro" action="validaConsultarRelacaoBancoLogradouro.jsp" method="post">
           Id:<input type="text" name ="ID" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
