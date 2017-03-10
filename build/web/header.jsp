<%@page import="entidades.Cliente"%>
<%@page import="entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%
  Usuario user = (Usuario) session.getAttribute("user");
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Entrada</title>
           <%@include file="scripts.jsp" %>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <ul class="nav navbar-nav">
                    <li><a href="inicial.jsp"><span class="glyphicon glyphicon-home"></span></a></li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Cadastros<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="cadUser.jsp">Usuario</a></li>
                            <li><a href="cadCli.jsp">Cliente</a></li>
                            <li><a href="cadProd.jsp">Produtos</a></li>
                        </ul>
                    </li>
                    <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Consultas<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="ConsultaUsuario">Usuario</a></li>
                            <li><a href="ConsultaCliente">Cliente</a></li>
                            <li><a href="Consultaproduto">Produtos</a></li>
                        </ul>
                    </li>
                </ul>
                <div class="sair" style="float: right;">
                    <ul class="nav navbar-nav">
                        <li><p style="margin: 15px 0 !important; text-transform: capitalize; color: cornflowerblue;"><span class="glyphicon glyphicon-user" style="margin-right: 10px;"></span><%=user.getNome() %></p>
                        <li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            Menu <span class="caret"></span></a>
                                <ul class="dropdown-menu">
                                    <li><a href="index.jsp">Sair</a></li>
                                </ul>
                        </li>    
                    </ul>
                </div>
            </div>
            
        </nav>