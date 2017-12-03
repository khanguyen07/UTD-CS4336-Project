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
import javax.persistence.Lob;
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
@Table(name = "MOVIE")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Movie.findAll", query = "SELECT m FROM Movie m")
    , @NamedQuery(name = "Movie.findByMovieid", query = "SELECT m FROM Movie m WHERE m.movieid = :movieid")
    , @NamedQuery(name = "Movie.findByTitle", query = "SELECT m FROM Movie m WHERE m.title = :title")
    , @NamedQuery(name = "Movie.findByGenre", query = "SELECT m FROM Movie m WHERE m.genre = :genre")
    , @NamedQuery(name = "Movie.findByDescription", query = "SELECT m FROM Movie m WHERE m.description = :description")
    , @NamedQuery(name = "Movie.findByCasts", query = "SELECT m FROM Movie m WHERE m.casts = :casts")
    , @NamedQuery(name = "Movie.findByDirector", query = "SELECT m FROM Movie m WHERE m.director = :director")
    , @NamedQuery(name = "Movie.findByYearmake", query = "SELECT m FROM Movie m WHERE m.yearmake = :yearmake")
    , @NamedQuery(name = "Movie.findByDuration", query = "SELECT m FROM Movie m WHERE m.duration = :duration")
    , @NamedQuery(name = "Movie.findMovie", query ="SELECT m FROM Movie m, Theatermovie t WHERE m.movieid = t.theatermoviePK.movieid and t.theatermoviePK.theaterid =:theaterid")    
})
public class Movie implements Serializable {

    @Size(max = 10)
    @Column(name = "TIME1")
    private String time1;
    @Size(max = 10)
    @Column(name = "TIME2")
    private String time2;
    @Size(max = 10)
    @Column(name = "TIME3")
    private String time3;

    @Size(max = 200)
    @Column(name = "POSTER")
    private String poster;

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "MOVIEID")
    private Integer movieid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "TITLE")
    private String title;
    @Size(max = 50)
    @Column(name = "GENRE")
    private String genre;
    @Size(max = 1000)
    @Column(name = "DESCRIPTION")
    private String description;
    @Size(max = 50)
    @Column(name = "CASTS")
    private String casts;
    @Size(max = 50)
    @Column(name = "DIRECTOR")
    private String director;
    @Size(max = 10)
    @Column(name = "YEARMAKE")
    private String yearmake;
    @Size(max = 10)
    @Column(name = "DURATION")
    private String duration;
    

    public Movie() {
    }

    public Movie(Integer movieid) {
        this.movieid = movieid;
    }

    public Movie(Integer movieid, String title) {
        this.movieid = movieid;
        this.title = title;
    }

    public Integer getMovieid() {
        return movieid;
    }

    public void setMovieid(Integer movieid) {
        this.movieid = movieid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCasts() {
        return casts;
    }

    public void setCasts(String casts) {
        this.casts = casts;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getYearmake() {
        return yearmake;
    }

    public void setYearmake(String yearmake) {
        this.yearmake = yearmake;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

  

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (movieid != null ? movieid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Movie)) {
            return false;
        }
        Movie other = (Movie) object;
        if ((this.movieid == null && other.movieid != null) || (this.movieid != null && !this.movieid.equals(other.movieid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "entity.Movie[ movieid=" + movieid + " ]";
    }

    public String getPoster() {
        return poster;
    }

    public void setPoster(String poster) {
        this.poster = poster;
    }

    public String getTime1() {
        return time1;
    }

    public void setTime1(String time1) {
        this.time1 = time1;
    }

    public String getTime2() {
        return time2;
    }

    public void setTime2(String time2) {
        this.time2 = time2;
    }

    public String getTime3() {
        return time3;
    }

    public void setTime3(String time3) {
        this.time3 = time3;
    }
    
}
