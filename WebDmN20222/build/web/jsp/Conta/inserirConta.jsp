<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR-CONTA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR CONTA</h1>
        <form name="inserirConta" action="validaInserirConta.jsp" method="post">
            Agencia: <input type="text" name="AGENCIA" value=""> <br>
            Numero: <input type="text" name="NUMERO" value=""> <br>
            Data_Abertura: <input type="text" name="DATA_ABERTURA" value=""> <br>
            Status: <input type="text" name="STATUS" value=""> <br>
             Saldo: <input type="text" name="SALDO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
