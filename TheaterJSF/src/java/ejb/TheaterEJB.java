/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ejb;

import entity.Movie;
import entity.Theater;
import java.util.List;
import javax.ejb.Stateful;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author Kha Alienware
 */
@Stateless
public class TheaterEJB {

    @PersistenceContext(unitName = "TheaterJSFPU")
    private EntityManager em;

    public void persist(Object object) {
        em.persist(object);
    }
    
    public List<Theater> findAllTheater()
    {
        return em.createNamedQuery("Theater.findAll", Theater.class).getResultList();
    }

    public Theater getTheater(String zip)
    {
        return em.createNamedQuery("Theater.findByZip", Theater.class).setParameter("zip", zip).getSingleResult();
    }
    
    public Theater getTheaterByID(int theaterid)
    {
        return em.createNamedQuery("Theater.findByTheaterid", Theater.class).setParameter("theaterid", theaterid).getSingleResult();
    }
    
    public List<Movie> getMovie(int theaterID)
    {
        return em.createNamedQuery("Theater.findMovie", Movie.class).setParameter("theaterid", theaterID).getResultList();
    }
    
    public Movie getMovieByID(int movieid)
    {
        return em.createNamedQuery("Movie.findByMovieid", Movie.class).setParameter("movieid", movieid).getSingleResult();
    }
    
    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
}
