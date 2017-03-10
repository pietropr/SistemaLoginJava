<%-- 
    Document   : inicial
    Created on : 02/09/2016, 11:23:43
    Author     : fatec
--%>

<%@page import="entidades.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
    

    <div class="container">
        <div class="jumbotron">
            <h1>Trabalho do César<h1> 
            <p>Trabalho de Cadastro e visualização de produtos, usuarios e clientes</p> 
        </div>
        <br>
        <br>
        
        <div class="navegador">
            <ul style="list-style: none">
                <li style="text-align: center;display: inline-block;width: 30%;"><a href="cadUser.jsp"><span class="glyphicon glyphicon-user" style="font-size: 60px;background: #eee;padding: 40px;border-radius: 100%;"></span></a>
                    
                </li>
                <li style="text-align: center;display: inline-block;width: 30%;"><a href="cadCli.jsp"><span class="glyphicon glyphicon-piggy-bank" style="font-size: 60px;background: #eee;padding: 40px;border-radius: 100%;"></span></a>
                </li>
                <li style="text-align: center;display: inline-block;width: 30%;"><a href="cadProd.jsp"><span class="glyphicon glyphicon-cutlery" style="font-size: 60px;background: #eee;padding: 40px;border-radius: 100%;"></span></a>
                </li> 
               
                 
            </ul>
              
        </div>
    </div>
  
</body>
</html>












