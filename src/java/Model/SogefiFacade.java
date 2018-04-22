/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author mayco
 */
@Stateless
public class SogefiFacade extends AbstractFacade<Sogefi> {

    @PersistenceContext(unitName = "SistemaIteligentePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public SogefiFacade() {
        super(Sogefi.class);
    }
    
}
