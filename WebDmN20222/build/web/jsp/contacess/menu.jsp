<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    ControllerUsuario usucont = new ControllerUsuario();
    Usuario usuSaida = usucont.validaWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>

<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Acesso</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Status</a>  
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Banco</a>  
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Manter Conta</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown7'>Manter Cliente</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown8'>Manter Logradouro</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown9'>Manter BancoConta</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown10'>Manter ContaCliente</a>
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown11'>Manter BancoLogradouro</a>
            

            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../status/inserirStatus.jsp"> InseriStatus </a></li>
                    <li><a href="../status/consultarStatus.jsp"> ConsultaStatus </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../status/consultarStatus.jsp"> ConsultaStatus </a></li>
                </ul>
            <% } %>
            
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../Banco/inserirBanco.jsp"> InseriBanco </a></li>
                    <li><a href="../Banco/consultarBanco.jsp"> ConsultaBanco </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../Banco/consultarBanco.jsp"> ConsultaBanco </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown6 Structure -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../Conta/inserirConta.jsp"> InseriConta </a></li>
                    <li><a href="../Conta/consultarConta.jsp"> ConsultaConta </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                <li><a href="../Conta/consultarConta.jsp"> ConsultaConta </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown7 Structure -->
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../Cliente/inserirCliente.jsp"> InseriCliente </a></li>
                    <li><a href="../Cliente/consultarCliente.jsp"> ConsultaCliente </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown7' class='dropdown-content'>
                <li><a href="../Cliente/consultarCliente.jsp"> ConsultaCliente </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown8 Structure -->
                <ul id='dropdown8' class='dropdown-content'>
                    <li><a href="../Logradouro/inserirLogradouro.jsp"> InseriLogradouro </a></li>
                    <li><a href="../Logradouro/consultarLogradouro.jsp"> ConsultaLogradouro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown8' class='dropdown-content'>
                <li><a href="../Logradouro/consultarLogradouro.jsp"> ConsultaLogradouro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown8 Structure -->
                <ul id='dropdown9' class='dropdown-content'>
                    <li><a href="../BancoConta/inserirRelacaoBancoConta.jsp"> InseriBancoConta </a></li>
                    <li><a href="../BancoConta/consultarRelacaoBancoConta.jsp"> ConsultaBancoConta </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown9' class='dropdown-content'>
                <li><a href="../BancoConta/consultarRelacaoBancoConta.jsp"> ConsultaBancoConta </a></li>
                </ul>
            <% } %>
            
               <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown8 Structure -->
                <ul id='dropdown10' class='dropdown-content'>
                    <li><a href="../ContaCliente/inserirRelacaoContaCliente.jsp"> InseriContaCliente </a></li>
                    <li><a href="../ContaCliente/consultarRelacaoContaCliente.jsp"> ConsultaContaCliente </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown10' class='dropdown-content'>
                <li><a href="../ContaCliente/consultarRelacaoContaCliente.jsp"> ConsultaContaCliente </a></li>
                </ul>
            <% } %>
            
               <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown8 Structure -->
                <ul id='dropdown11' class='dropdown-content'>
                    <li><a href="../BancoLogradouro/inserirRelacaoBancoLogradouro.jsp"> InseriBancoLogradouro </a></li>
                    <li><a href="../BancoLogradouro/consultarRelacaoBancoLogradouro.jsp"> ConsultaBancoLogradouro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown11' class='dropdown-content'>
                <li><a href="../BancoLogradouro/consultarRelacaoBancoLogradouro.jsp"> ConsultaBancoLogradouro </a></li>
                </ul>
            <% } %>
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>