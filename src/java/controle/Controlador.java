/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import entidades.Cliente;
import entidades.Produto;
import entidades.Usuario;
import java.util.LinkedList;

/**
 *
 * @author fatec
 */
public class Controlador {
    
    private Cadastro cad = new Cadastro();
    
    public Usuario validaUsuario(Usuario user){
        
        Usuario novo = cad.consultaUsuario(user.getLogin());
        
        if(novo!=null && user.getLogin().equals(novo.getLogin()) 
                && Funcao.md5(user.getSenha()).equals(novo.getSenha())){
            return novo;
        }
        return null;
    }
    
    public void salvarUsuario(Usuario user) {
        
       user.setSenha(Funcao.md5(user.getSenha()));
       cad.salvarUsuario(user);
        
    }
    
    
    public LinkedList consultaUsuario(){
     return cad.consultaUsuario();
    }
    
    public LinkedList consultaCliente(){
     return cad.consultaCliente();
    }
    
    public LinkedList consultaProduto(){
     return cad.consultaProduto();
    }
    
    public void salvarCliente(Cliente cli) {
        
       cad.salvarCliente(cli);
        
    }
    
    public void salvarProduto(Produto prod) {
        
       cad.salvarProduto(prod);
        
    }
    
}















