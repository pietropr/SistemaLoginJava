<%-- 
    Document   : index
    Created on : 02/09/2016, 10:03:25
    Author     : fatec
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="scripts.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página de Login</title>
    </head>
    <body>
        <div class="col-sm-4"></div>
        <div class="col-sm-4">
            <h3 style="text-align: center">Tela de Login</h3>
                <div class="jumbotron" style="margin-top: 30%">
                    <form action="login" method="POST" style="width: 80%; margin: auto;">  

                        <div class="form-group">
                            Usuario: <input type="text" name="usuario" value="" class="form-control" style="width: 100%;" />
                        </div>

                        <div class="form-group">
                            Senha: <input type="password" name="senha" value="" class="form-control" style="width: 100%;"s />
                        </div>
                                    <% if(session.getAttribute("msg")!=null){ %>
                            <%= session.getAttribute("msg") %>                     
                                    <% 
                                        session.removeAttribute("msg");
                                    }
                                    %>
                            <input type="submit" value="Entrar" class="btn-block btn btn-success"/>


                    </form>
                </div>
          
        </div>
        <div class="col-sm-4"></div>            
    </body>
</html>















