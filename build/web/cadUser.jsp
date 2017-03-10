<%-- 
    Document   : cadUser
    Created on : 23/09/2016, 11:57:49
    Author     : lab03c
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>
       
       
        <div class="col-sm-4"></div>
        <div class="col-sm-4">

             <h1 align="center">Cadastro de Usuário</h1>
            <form name="cadUser" action="Cadastrauser" method="post" style="margin-top: 20%;">
                <div class="alert alert-warning" role="alert">ATENÇÃO! Todos os campos são obrigatórios</div>
                <div class="form-group" style="width: 49%;display: inline-block;">                  
                    Digite o nome:
                    <input placeholder="" type="text" name="nome" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group" style="width: 49%;display: inline-block;">
                    Digite o usuario: <input type="text" name="usuario" value="" class="form-control" style="width: 100%;" />
                </div>
                
                 <div class="form-group" style="width: 49%;display: inline-block;">
                    Digite o telefone: <input type="text" name="telefone" value="" class="form-control" style="width: 100%;" />
                </div>
                
                 <div class="form-group" style="width: 49%;display: inline-block;">
                    Digite a cidade: <input type="text" name="cidade" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group" style="width: 49%;display: inline-block;">
                    Digite a senha: <input type="password" name="senha" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group" style="width: 49%;display: inline-block;">
                    Redigite a senha: <input type="password" name="resenha" value="" class="form-control" style="width: 100%;" />
                </div>
                <input type="submit" value="Cadastrar" class="btn-block btn btn-primary"/>
            </form>
        </div>
        <div class="col-sm-4"></div>
    </body>
</html>
