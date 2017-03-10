/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controle;

import entidades.Cliente;
import entidades.Usuario;
import entidades.Produto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fatec
 */
public class Cadastro {

    private Conexao con = new Conexao();

    public void salvarUsuario(Usuario user) {
        PreparedStatement st;
        ResultSet res;

        int i = 1;

        try {
            st = con.getConexao().prepareStatement("insert into usuario "
                    + " (nome, login, telefone, cidade, senha) values (?, ?, ?, ?, ?)",
                    PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(i++, user.getNome());
            st.setString(i++, user.getLogin());
            st.setString(i++, user.getTelefone());
            st.setString(i++, user.getCidade());
            st.setString(i++, user.getSenha());

            st.execute();

            res = st.getGeneratedKeys();

            if (res.next()) {
                user.setCod(res.getInt(1));
            }

        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }

    }  
    public Usuario consultaUsuario(String login){
        Usuario user = null;
        PreparedStatement st;
        ResultSet res;
        
        int i=1;
        
        try {
            st = con.getConexao().prepareStatement("select id_usuario, nome, "
                    + "login, telefone, cidade, senha from usuario where login = ?");
            st.setString(i, login);
        
            
            res = st.executeQuery();
            
            if(res.next()){
                user = new Usuario();
                user.setCod(res.getInt("id_usuario"));
                user.setNome(res.getString("nome"));
                user.setLogin(res.getString("login"));
                user.setTelefone("telefone");
                user.setCidade("cidade");
                user.setSenha(res.getString("senha"));
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return user;
    }
    public LinkedList consultaUsuario(){
        Usuario usu = null;
        LinkedList lista = new LinkedList();
        PreparedStatement st;
        ResultSet res;
        int i=1;
        
        try {
            st = con.getConexao().prepareStatement("select id_usuario, nome, login, telefone, cidade from usuario");
            
        
            res = st.executeQuery();
            
            while(res.next()){
                usu = new Usuario();
                usu.setCod(res.getInt("id_usuario"));
                usu.setNome(res.getString("nome"));
                usu.setLogin(res.getString("login")); 
                usu.setTelefone(res.getString("telefone"));
                usu.setCidade(res.getString("cidade"));
                
                lista.add(usu);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }    
    public void salvarCliente(Cliente cli) {
        PreparedStatement st;
        ResultSet res;

        int i = 1;

        try {
            st = con.getConexao().prepareStatement("insert into cliente "
                    + " (nome, cpf, endereco, idUsuario) values (?, ?, ?, ?)",
                    PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(i++, cli.getNome());
            st.setString(i++, cli.getCpf());
            st.setString(i++, cli.getEndereco());
            st.setInt(i++, cli.getUsuario().getCod());

            st.execute();

            res = st.getGeneratedKeys();

            if (res.next()) {
                cli.setCod(res.getInt(1));
            }

        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    public void salvarProduto(Produto prod) {
        PreparedStatement st;
        ResultSet res;

        int i = 1;

        try {
            st = con.getConexao().prepareStatement("insert into produto "
                    + " (nome, descricao, preco, quantidade, tipo, idUsuario) values (?, ?, ?, ?, ?, ?)",
                    PreparedStatement.RETURN_GENERATED_KEYS);
            st.setString(i++, prod.getNome());
            st.setString(i++, prod.getDescricao());
            st.setString(i++, prod.getPreco());
            st.setString(i++, prod.getQuantidade());
            st.setString(i++, prod.getTipo());
            st.setInt(i++, prod.getUsuario().getCod());

            st.execute();

            res = st.getGeneratedKeys();

            if (res.next()) {
                prod.setCod(res.getInt(1));
            }

        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }

    } 
    public LinkedList consultaCliente(){
        Cliente cli = null;
        LinkedList lista = new LinkedList();
        PreparedStatement st;
        ResultSet res;
        int i=1;
        
        try {
            st = con.getConexao().prepareStatement("select id_cliente, nome, cpf, endereco, idUsuario from cliente;");
            
        
            res = st.executeQuery();
            
            while(res.next()){
                cli = new Cliente();
                cli.setCod(res.getInt("id_cliente"));
                cli.setNome(res.getString("nome"));
                cli.setCpf(res.getString("cpf")); 
                cli.setEndereco(res.getString("endereco"));
                cli.setUsuario(consultaUsuario(res.getInt("idUsuario")));

                
                lista.add(cli);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
     public Usuario consultaUsuario(int codigo){
        Usuario user = null;
        PreparedStatement st;
        ResultSet res;
        
        int i=1;
        
        try {
            st = con.getConexao().prepareStatement("select id_usuario, nome, "
                    + "login, telefone, cidade, senha from usuario where id_usuario = ?");
            st.setInt(i, codigo);
        
            
            res = st.executeQuery();
            
            if(res.next()){
                user = new Usuario();
                user.setCod(res.getInt("id_usuario"));
                user.setNome(res.getString("nome"));
                user.setLogin(res.getString("login"));
                user.setTelefone("telefone");
                user.setCidade("cidade");
                user.setSenha(res.getString("senha"));
            }
            
        
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return user;
    }
     public LinkedList consultaProduto(){
        Produto prod = null;
        LinkedList lista = new LinkedList();
        PreparedStatement st;
        ResultSet res;
        int i=1;
        
        try {
            st = con.getConexao().prepareStatement("select id_produto, nome, descricao, preco, quantidade, tipo, idUsuario from produto;");
            
        
            res = st.executeQuery();
            
            while(res.next()){
                prod = new Produto();
                prod.setCod(res.getInt("id_produto"));
                prod.setNome(res.getString("nome"));
                prod.setDescricao(res.getString("descricao"));
                prod.setPreco(res.getString("preco"));
                prod.setQuantidade(res.getString("quantidade"));
                prod.setTipo(res.getString("tipo")); 
                prod.setUsuario(consultaUsuario(res.getInt("idUsuario")));

                
                lista.add(prod);
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Cadastro.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return lista;
    }
    
}

















