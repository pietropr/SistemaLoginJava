<%-- 
    Document   : cadCli
    Created on : 01/10/2016, 00:35:40
    Author     : Pietro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
     <div class="col-sm-4"></div>
        <div class="col-sm-4">
           <h2 align="center">Cadastro de Clientes</h2>
            <form name="cadCli" action="Cadastracliente" method="post" style="margin-top: 20%;">
                <div class="alert alert-warning" role="alert">ATENÇÃO! Todos os campos são obrigatórios</div>
                <div class="form-group">
                    Digite o nome: <input type="text" name="nome" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group">
                    Digite o CPF <input type="text" name="cpf" value="" class="phone form-control" style="width: 100%;" />
                </div>

                <div class="form-group">
                    Digite o endereco: <input type="text" name="endereco" value="" class="form-control" style="width: 100%;" />
                </div>

                <input type="submit" value="Cadastrar" class="btn-block btn btn-primary"/>
            </form>
        </div>
        <div class="col-sm-4"></div>
    </body>
</html>
