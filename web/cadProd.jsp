<%-- 
    Document   : cadProd
    Created on : 05/10/2016, 19:43:11
    Author     : Pietro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
     <div class="col-sm-4"></div>
        <div class="col-sm-4">
           <h2 align="center">Cadastro de Produto</h2>
            <form name="cadProd" action="Cadastraproduto" method="post" style="margin-top: 20%;">
                <div class="alert alert-warning" role="alert">ATENÇÃO! Todos os campos são obrigatórios</div>
                <div class="form-group">
                    Digite o nome: <input type="text" name="nome" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group">
                    Digite a descricao <input type="text" name="descricao" value="" class="form-control" style="width: 100%;" />
                </div>

                <div class="form-group">
                    Digite o preco: <input type="text" name="preco" value="" class="form-control" style="width: 100%;" />
                </div>
                
                <div class="form-group">
                    Digite o estoque: <input type="text" name="quantidade" value="" class="form-control" style="width: 100%;" />
                </div>
                
                <div class="form-group">
                    Digite o tipo: <input type="text" name="tipo" value="" class="form-control" style="width: 100%;" />
                </div>

                <input type="submit" value="Cadastrar" class="btn-block btn btn-primary"/>
            </form>
        </div>
        <div class="col-sm-4"></div>
    </body>
</html>
