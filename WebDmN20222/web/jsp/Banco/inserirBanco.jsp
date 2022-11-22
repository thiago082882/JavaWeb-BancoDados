<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - BANCO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR BANCO</h1>
        <form name="inserirBanco" action="validaInserirBanco.jsp" method="post">
            
             nome_banco: <input type="text" name="NOME_BANCO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
