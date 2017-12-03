/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Movie;
import java.io.Serializable;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.enterprise.context.SessionScoped;
import javax.faces.bean.ViewScoped;

/**
 *
 * @author Kha Nguyen
 */
@Named(value = "buyTicketBean")
@SessionScoped
public class BuyTicketBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Movie movie;
    private int ticket;
    private String creditcard;
    private String nameoncard;
    private String expirationdate;
    private String showtime;
    private double total;
    
    //getter and setter
    public Movie getMovie() {
        return movie;
    }

    public void setMovie(Movie movie) {
        this.movie = movie;
    }

    public int getTicket() {
        return ticket;
    }

    public void setTicket(int ticket) {
        this.ticket = ticket;
    }

    public String getCreditcard() {
        return creditcard;
    }

    public void setCreditcard(String creditcard) {
        this.creditcard = creditcard;
    }

    public String getNameoncard() {
        return nameoncard;
    }

    public void setNameoncard(String nameoncard) {
        this.nameoncard = nameoncard;
    }

    public String getExpirationdate() {
        return expirationdate;
    }

    public void setExpirationdate(String expirationdate) {
        this.expirationdate = expirationdate;
    }

    public String getShowtime() {
        return showtime;
    }

    public void setShowtime(String showtime) {
        this.showtime = showtime;
    }
    
    //calculate total price
    public double getTotal() {
        total = ticket * 10;
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    
    
    //show buyticket page when button is clicked
    public String buyTicket(Movie movie)
    {
        this.movie = movie;
        return "BuyTicket.xhtml";
    }
    
    //show payment page when button is clicked
    public String payment()
    {
        //this.movie = movie;
        return "Payment.xhtml";
    }
    
    //show confirm page when button is clicked
    public String confirm()
    {
        return "Confirm.xhtml";
    }
    
    /**
     * Creates a new instance of BuyTicketBean
     */
    public BuyTicketBean() {
    }
    
}
