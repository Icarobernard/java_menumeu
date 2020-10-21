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
public class Produto implements Serializable {
    
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue (strategy = GenerationType.AUTO)
    private Long id;
    private String nome;
    private String preco;
    private String descricao;
    private String foto;
    
    
    public Produto (){
        
    }

    public Produto (String nome, String preco, String descricao, String foto){
        this.nome=nome;
        this.preco=preco;
        this.descricao=descricao;
        this.foto=foto;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
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

    public String getPreco() {
        return preco;
    }

    public void setPreco(String preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setescricao(String descricao) {
        this.descricao = descricao;
    }


 public void save() throws NoSuchMethodException {
       DAO.getInstance().save(this);
    }

    public void remove() throws NoSuchMethodException {
        DAO.getInstance().remove(this);
    }

    public static Produto find(Long id) throws ClassNotFoundException {
        return (Produto) DAO.getInstance().find(id);
    }

    public static List<Object> findAll() throws ClassNotFoundException {
        return DAO.getInstance().findAll();
    }


    
    
}
