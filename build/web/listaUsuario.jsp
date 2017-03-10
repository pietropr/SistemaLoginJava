<%-- 
    Document   : listaProduto
    Created on : 23/09/2016, 11:05:33
    Author     : lab03c
--%>
<%@page import="entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%
    LinkedList<Usuario> lista = (LinkedList) session.getAttribute("listaUsuario");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
        <div class="row" style="margin:0;">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <h4 align="center" style="max-width: 230px;margin: 40px auto;border: 1px solid;padding: 10px 0px;color: #999;text-transform: uppercase;">Lista de Usuários</h4>
                    <table style="width: auto !important; margin: auto; marin-top: 30px !important" border="1" class="table table-striped table-bordered">
                        <thead>
                        <tbody>
                            <%
                              for(Usuario usu: lista){ %>
                                <div class="panel panel-default" style="width: 30% !important; margin-right: 12px !important; margin-left: 15px; display: inline-block">
                                    <div class="panel-heading" style="text-transform:uppercase;"><%=usu.getNome() %></div>
                                    <div class="panel-body">
                                        <p><span class="glyphicon glyphicon-user"></span> <%=usu.getLogin()%></p>
                                        <p><span class="glyphicon glyphicon-earphone"></span> <%=usu.getTelefone()%></p>
                                        <p><span class="glyphicon glyphicon-map-marker"></span> <%=usu.getCidade()%></p>
                                    </div>
                                </div>
<!--                                <tr>
                                    <td class="nome" style="min-width: 200px !important;"><%= usu.getNome()%></td>
                                    <td class="login" style="min-width: 160px !important;"><%= usu.getLogin()%></td>
                                    <td><a href="LoginWeb/?alteraUser.jsp?cod=<%=usu.getCod()%>" class="btn btn-warning btn-sm"><span class="glyphicon glyphicon-pencil"></span> Alterar</a></td>
                                    <td><a href="LoginWeb/?deletaUser.jsp?cod=<%=usu.getCod()%>" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-trash"></span> Deletar</a></td>
                                </tr>-->
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <div class="com-sm-2"></div>
            </div>
    </body>
</html>
