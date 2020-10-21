/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import controller.Login;
import dao.DAO;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Administrador implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    private String nome;
    private String email;
    private String senha;
    
    
    public Administrador (){
        
    }

    public Administrador (String nome, String email, String senha){
        this.nome=nome;
        this.email=email;
        this.senha=senha;
    }

    public String getNome(){
        return nome;
    }

    public Long getId() {
        return id;
    }
    
    public void setNome (String nome){
        this.nome = nome;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }


 public void save() throws NoSuchMethodException {
       DAO.getInstance().save(this);
    }

    public void remove() throws NoSuchMethodException {
        DAO.getInstance().remove(this);
    }

    public static Administrador find(Long id) throws ClassNotFoundException {
        return (Administrador) DAO.getInstance().find(id);
    }

    public static List<Object> findAll() throws ClassNotFoundException {
        return DAO.getInstance().findAll();
    }

        public static Administrador findByLogin(String login) {
        return Login.getInstance().administradorLogin(login);
    }

    
    
}
