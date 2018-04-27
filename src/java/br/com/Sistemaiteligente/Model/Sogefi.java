/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Sistemaiteligente.Model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author mayco
 */
@Entity
@Table(name = "sogefi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sogefi.findAll", query = "SELECT s FROM Sogefi s")
    , @NamedQuery(name = "Sogefi.findById", query = "SELECT s FROM Sogefi s WHERE s.id = :id")
    , @NamedQuery(name = "Sogefi.findByCentroCusto", query = "SELECT s FROM Sogefi s WHERE s.centroCusto = :centroCusto")
    , @NamedQuery(name = "Sogefi.findByMunicipio", query = "SELECT s FROM Sogefi s WHERE s.municipio = :municipio")
    , @NamedQuery(name = "Sogefi.findBySexo", query = "SELECT s FROM Sogefi s WHERE s.sexo = :sexo")
    , @NamedQuery(name = "Sogefi.findByEstadoCivil", query = "SELECT s FROM Sogefi s WHERE s.estadoCivil = :estadoCivil")
    , @NamedQuery(name = "Sogefi.findByIdade", query = "SELECT s FROM Sogefi s WHERE s.idade = :idade")
    , @NamedQuery(name = "Sogefi.findByTempoCasa", query = "SELECT s FROM Sogefi s WHERE s.tempoCasa = :tempoCasa")
    , @NamedQuery(name = "Sogefi.findByDependentes", query = "SELECT s FROM Sogefi s WHERE s.dependentes = :dependentes")
    , @NamedQuery(name = "Sogefi.findByTotalCop3Anos", query = "SELECT s FROM Sogefi s WHERE s.totalCop3Anos = :totalCop3Anos")
    , @NamedQuery(name = "Sogefi.findByTotalAtestados", query = "SELECT s FROM Sogefi s WHERE s.totalAtestados = :totalAtestados")})
public class Sogefi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "CentroCusto")
    private String centroCusto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "Municipio")
    private String municipio;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "Sexo")
    private String sexo;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "EstadoCivil")
    private String estadoCivil;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 3)
    @Column(name = "Idade")
    private String idade;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "TempoCasa")
    private String tempoCasa;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1)
    @Column(name = "Dependentes")
    private String dependentes;
    @Basic(optional = false)
    @NotNull
    @Column(name = "TotalCop3Anos")
    private float totalCop3Anos;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2)
    @Column(name = "TotalAtestados")
    private String totalAtestados;

    public Sogefi() {
    }

    public Sogefi(Integer id) {
        this.id = id;
    }

    public Sogefi(Integer id, String centroCusto, String municipio, String sexo, String estadoCivil, String idade, String tempoCasa, String dependentes, float totalCop3Anos, String totalAtestados) {
        this.id = id;
        this.centroCusto = centroCusto;
        this.municipio = municipio;
        this.sexo = sexo;
        this.estadoCivil = estadoCivil;
        this.idade = idade;
        this.tempoCasa = tempoCasa;
        this.dependentes = dependentes;
        this.totalCop3Anos = totalCop3Anos;
        this.totalAtestados = totalAtestados;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCentroCusto() {
        return centroCusto;
    }

    public void setCentroCusto(String centroCusto) {
        this.centroCusto = centroCusto;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getEstadoCivil() {
        return estadoCivil;
    }

    public void setEstadoCivil(String estadoCivil) {
        this.estadoCivil = estadoCivil;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getTempoCasa() {
        return tempoCasa;
    }

    public void setTempoCasa(String tempoCasa) {
        this.tempoCasa = tempoCasa;
    }

    public String getDependentes() {
        return dependentes;
    }

    public void setDependentes(String dependentes) {
        this.dependentes = dependentes;
    }

    public float getTotalCop3Anos() {
        return totalCop3Anos;
    }

    public void setTotalCop3Anos(float totalCop3Anos) {
        this.totalCop3Anos = totalCop3Anos;
    }

    public String getTotalAtestados() {
        return totalAtestados;
    }

    public void setTotalAtestados(String totalAtestados) {
        this.totalAtestados = totalAtestados;
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
        if (!(object instanceof Sogefi)) {
            return false;
        }
        Sogefi other = (Sogefi) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model.Sogefi[ id=" + id + " ]";
    }
    
}
