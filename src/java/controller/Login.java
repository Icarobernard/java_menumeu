package controller;

import dao.PersistenceUtil;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;
import model.Administrador;


public class Login {

    private static Login instance = new Login();

    public static Login getInstance() {
        return instance;
    }

    private Login() {

    }
    
    public Administrador administradorLogin(String email) {
        EntityManager em = PersistenceUtil.getEntityManager();
        EntityTransaction tx = em.getTransaction();
        Administrador administrador = null;

        try {
                tx.begin();
            TypedQuery<Administrador> query = em.createQuery("select p From Administrador p WHERE p.email like :email", Administrador.class);
            query.setParameter("email", email);
            administrador = query.getSingleResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null && tx.isActive()) {
                tx.rollback();
            }
            throw new RuntimeException(e);
        } finally {
            PersistenceUtil.close(em);
        }
        return administrador;
    }

    



}
