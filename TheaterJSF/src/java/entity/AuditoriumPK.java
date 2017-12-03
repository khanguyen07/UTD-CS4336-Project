/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author Kha Alienware
 */
@Embeddable
public class AuditoriumPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "AUDITORIUMID")
    private int auditoriumid;
    @Basic(optional = false)
    @NotNull
    @Column(name = "THEATERID")
    private int theaterid;

    public AuditoriumPK() {
    }

    public AuditoriumPK(int auditoriumid, int theaterid) {
        this.auditoriumid = auditoriumid;
        this.theaterid = theaterid;
    }

    public int getAuditoriumid() {
        return auditoriumid;
    }

    public void setAuditoriumid(int auditoriumid) {
        this.auditoriumid = auditoriumid;
    }

    public int getTheaterid() {
        return theaterid;
    }

    public void setTheaterid(int theaterid) {
        this.theaterid = theaterid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) auditoriumid;
        hash += (int) theaterid;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof AuditoriumPK)) {
            return false;
        }
        AuditoriumPK other = (AuditoriumPK) object;
        if (this.auditoriumid != other.auditoriumid) {
            return false;
        }
        if (this.theaterid != other.theaterid) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.AuditoriumPK[ auditoriumid=" + auditoriumid + ", theaterid=" + theaterid + " ]";
    }
    
}
