/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Kha Alienware
 */
@Entity
@Table(name = "SCREENING")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Screening.findAll", query = "SELECT s FROM Screening s")
    , @NamedQuery(name = "Screening.findById", query = "SELECT s FROM Screening s WHERE s.id = :id")
    , @NamedQuery(name = "Screening.findByMovieid", query = "SELECT s FROM Screening s WHERE s.movieid = :movieid")
    , @NamedQuery(name = "Screening.findByAuditoriumid", query = "SELECT s FROM Screening s WHERE s.auditoriumid = :auditoriumid")
    , @NamedQuery(name = "Screening.findByScreentime", query = "SELECT s FROM Screening s WHERE s.screentime = :screentime")})
public class Screening implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Column(name = "MOVIEID")
    private int movieid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "AUDITORIUMID")
    private int auditoriumid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "SCREENTIME")
    private String screentime;

    public Screening() {
    }

    public Screening(Integer id) {
        this.id = id;
    }

    public Screening(Integer id, int movieid, int auditoriumid, String screentime) {
        this.id = id;
        this.movieid = movieid;
        this.auditoriumid = auditoriumid;
        this.screentime = screentime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public int getMovieid() {
        return movieid;
    }

    public void setMovieid(int movieid) {
        this.movieid = movieid;
    }

    public int getAuditoriumid() {
        return auditoriumid;
    }

    public void setAuditoriumid(int auditoriumid) {
        this.auditoriumid = auditoriumid;
    }

    public String getScreentime() {
        return screentime;
    }

    public void setScreentime(String screentime) {
        this.screentime = screentime;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Screening)) {
            return false;
        }
        Screening other = (Screening) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Screening[ id=" + id + " ]";
    }
    
}
