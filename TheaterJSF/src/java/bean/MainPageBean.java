/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import ejb.TheaterEJB;
import entity.Theater;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.faces.application.FacesMessage;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.validator.ValidatorException;

/**
 *
 * @author Kha Alienware
 */
@Named(value = "mainPageBean")
@RequestScoped
public class MainPageBean implements Serializable {

    @EJB
    private TheaterEJB theaterEJB;
    private Theater theater;
    private String zipcode;
    private String error;

    //getter and setter
    public Theater getTheater() {
        return theater;
    }

    public void setTheater(Theater theater) {
        this.theater = theater;
    }

    public String getZipcode() {
        return zipcode;
    }

    public void setZipcode(String zipcode) {
        this.zipcode = zipcode;
    }
    
    

    /**
     * Creates a new instance of MainPageBean
     */
    public MainPageBean() {
    }
    
    //get list of theater
    public List<Theater> getTheaterList()
    {
        return theaterEJB.findAllTheater();
    }
    
    //get all theater by zipcode
    public String showTheater()
    {
        try
        {
            theater = theaterEJB.getTheater(zipcode);
            return "Theater.xhtml";
        }
        catch (Exception e)
        {
            return "No theater found.";
        }
        
        
    }
    
    

    
    
    
}
