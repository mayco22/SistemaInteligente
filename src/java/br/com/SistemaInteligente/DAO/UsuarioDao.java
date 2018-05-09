/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.SistemaInteligente.DAO;

import br.com.SistemaInteligente.Modelo.Usuario;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author mayco
 */
public class UsuarioDao {
    private final Session session;
    
    public UsuarioDao(Session session){
        this.session = session;
    }
    
    public void teste(){
        
        Transaction tx = this.session.beginTransaction();
        //this.session.get(, session);
        tx.commit();
        this.session.close();
    }
}
