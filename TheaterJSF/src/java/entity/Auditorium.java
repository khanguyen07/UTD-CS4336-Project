/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
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
@Table(name = "AUDITORIUM")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Auditorium.findAll", query = "SELECT a FROM Auditorium a")
    , @NamedQuery(name = "Auditorium.findByAuditoriumid", query = "SELECT a FROM Auditorium a WHERE a.auditoriumPK.auditoriumid = :auditoriumid")
    , @NamedQuery(name = "Auditorium.findByTheaterid", query = "SELECT a FROM Auditorium a WHERE a.auditoriumPK.theaterid = :theaterid")
    , @NamedQuery(name = "Auditorium.findByAuditoriumname", query = "SELECT a FROM Auditorium a WHERE a.auditoriumname = :auditoriumname")})
public class Auditorium implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected AuditoriumPK auditoriumPK;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "AUDITORIUMNAME")
    private String auditoriumname;

    public Auditorium() {
    }

    public Auditorium(AuditoriumPK auditoriumPK) {
        this.auditoriumPK = auditoriumPK;
    }

    public Auditorium(AuditoriumPK auditoriumPK, String auditoriumname) {
        this.auditoriumPK = auditoriumPK;
        this.auditoriumname = auditoriumname;
    }

    public Auditorium(int auditoriumid, int theaterid) {
        this.auditoriumPK = new AuditoriumPK(auditoriumid, theaterid);
    }

    public AuditoriumPK getAuditoriumPK() {
        return auditoriumPK;
    }

    public void setAuditoriumPK(AuditoriumPK auditoriumPK) {
        this.auditoriumPK = auditoriumPK;
    }

    public String getAuditoriumname() {
        return auditoriumname;
    }

    public void setAuditoriumname(String auditoriumname) {
        this.auditoriumname = auditoriumname;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (auditoriumPK != null ? auditoriumPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Auditorium)) {
            return false;
        }
        Auditorium other = (Auditorium) object;
        if ((this.auditoriumPK == null && other.auditoriumPK != null) || (this.auditoriumPK != null && !this.auditoriumPK.equals(other.auditoriumPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Auditorium[ auditoriumPK=" + auditoriumPK + " ]";
    }
    
}
