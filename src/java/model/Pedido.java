/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import dao.DAO;
import java.io.Serializable;
import java.util.List;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Pedido implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    private String nomeCliente;
    private String nomeProduto;
    private String preco;

    public Pedido() {
    }

    public Pedido(Long id, String nomeCliente, String nomeProduto, String preco) {
        this.id = id;
        this.nomeCliente = nomeCliente;
        this.nomeProduto = nomeProduto;
        this.preco = preco;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNomeCliente() {
        return nomeCliente;
    }

    public void setNomeCliente(String nomeCliente) {
        this.nomeCliente = nomeCliente;
    }

    public String getNomeProduto() {
        return nomeProduto;
    }

    public void setNomeProduto(String nomeProduto) {
        this.nomeProduto = nomeProduto;
    }

    public String getPreco() {
        return preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }
   
    
    





 public void save() throws NoSuchMethodException {
       DAO.getInstance().save(this);
    }

    public void remove() throws NoSuchMethodException {
        DAO.getInstance().remove(this);
    }

    public static Pedido find(Long id) throws ClassNotFoundException {
        return (Pedido) DAO.getInstance().find(id);
    }

    public static List<Object> findAll() throws ClassNotFoundException {
        return DAO.getInstance().findAll();
    }


    
    
}
