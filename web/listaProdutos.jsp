<%-- 
    Document   : listaProdutos
    Created on : 05/10/2016, 22:05:00
    Author     : Pietro
--%>
<%@page import="entidades.Produto"%>
<%@page import="entidades.Usuario"%>
<%@page import="java.util.LinkedList"%>
<%
    LinkedList<Produto> lista = (LinkedList) session.getAttribute("listaProduto");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
        <div class="row" style="margin:0;">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    <h4 align="center" style="max-width: 230px;margin: 40px auto;border: 1px solid;padding: 10px 0px;color: #999;text-transform: uppercase;">Lista de Produtos</h4>
                    <table style="width: auto !important; margin: auto; marin-top: 30px !important" border="1" class="table table-striped table-bordered">
                        <thead>
                        <tbody>
                                <tr>
                                    <td>Codigo</td>
                                    <td>Nome</td>
                                    <td>Descricao</td>
                                    <td>Preco</td>
                                    <td>Quantidade</td>
                                    <td>Tipo</td>
                                    <td>Quem cadastrou</td>
                  
                                </tr>
                            <%
                              for(Produto prod: lista){ %>
                                <tr>
                                    <td class="cod"><%= prod.getCod()%></td>
                                    <td class="nome" style="min-width: 200px !important;"><%= prod.getNome()%></td>
                                    <td class="login" style="min-width: 160px !important;"><%= prod.getDescricao()%></td>
                                    <td class="cpf" style="min-width: 160px !important;">R$ <%=prod.getPreco()%></td>
                                    <td class="cpf" style="min-width: 160px !important;"><%=prod.getQuantidade()%> unidades</td>
                                    <td class="cpf" style="min-width: 160px !important;"><%=prod.getTipo()%></td>
                                    <td class="cpf" style="min-width: 160px !important; text-transform: capitalize"><%=prod.getUsuario().getNome()%></td>
                                    
               
                                    
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
                <div class="com-sm-2"></div>
            </div>
    </body>
</html>