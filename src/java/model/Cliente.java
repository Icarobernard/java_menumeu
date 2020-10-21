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

/**
 *
 * @author Samsung
 */
@Entity
public class Cliente extends Administrador implements Serializable {

    public Cliente() {
    }

    public Cliente(String nome, String email, String senha) {
        super(nome, email, senha);
    }
    
     public void save() throws NoSuchMethodException {
       DAO.getInstance().save(this);
    }

    public void remove() throws NoSuchMethodException {
        DAO.getInstance().remove(this);
    }

    public static Cliente find(Long id) throws ClassNotFoundException {
        return (Cliente) DAO.getInstance().find(id);
    }

    public static List<Object> findAll() throws ClassNotFoundException {
        return DAO.getInstance().findAll();
    }

        public static Administrador findByLogin(String login) {
        return Login.getInstance().administradorLogin(login);
    }
    
    
}
