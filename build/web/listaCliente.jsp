<%-- 
    Document   : listaCliente
    Created on : 05/10/2016, 20:51:16
    Author     : Pietro
--%>
<%@page import="entidades.Cliente"%>
<%@page import="entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%
    LinkedList<Cliente> lista = (LinkedList) session.getAttribute("listaCliente");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
        <div class="row" style="margin:0;">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <h4 align="center" style="max-width: 230px;margin: 40px auto;border: 1px solid;padding: 10px 0px;color: #999;text-transform: uppercase;">Lista de Clientes</h4>
                    <table style="width: auto !important; margin: auto; marin-top: 30px !important" border="1" class="table table-striped table-bordered">
                        <thead>
                        <tbody>
                                <tr>
                                    <td>Codigo</td>
                                    <td>Nome</td>
                                    <td>CPF</td>
                                    <td>Endereco</td>
                                    <td>Usuario que Cadastrou</td>
                  
                                </tr>
                            <%
                              for(Cliente cli: lista){ %>
                                <tr>
                                    <td class="cod"><%= cli.getCod()%></td>
                                    <td class="nome" style="min-width: 200px !important;"><%= cli.getNome()%></td>
                                    <td class="login" style="min-width: 160px !important;"><%= cli.getCpf()%></td>
                                    <td class="cpf" style="min-width: 160px !important;"><%=cli.getEndereco()%></td>
                                    <td class="cpf" style="min-width: 160px !important;"><%=cli.getUsuario().getNome()%></td>
               
                                    
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <div class="com-sm-2"></div>
            </div>
    </body>
</html>
