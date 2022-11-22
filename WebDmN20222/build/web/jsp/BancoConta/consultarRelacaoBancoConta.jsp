<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - BANCO - CONTA</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR BANCO - CONTA</h1>
       <form name="consultarBancoConta" action="validaConsultarRelacaoBancoConta.jsp" method="post">
           Id:<input type="text" name ="ID" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
