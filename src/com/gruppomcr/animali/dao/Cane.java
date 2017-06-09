package com.gruppomcr.animali.dao;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cani")
public class Cane implements Serializable {
/**
	 * 
	 */
	private static final long serialVersionUID = -8645315106708435222L;
	//	 @Id
//	    @GeneratedValue(strategy = GenerationType.IDENTITY)
//	    private int id;
	@Id
	@Column(name = "ID")
	private Integer id;
	@Column(name = "RAZZA")
	private String razza;
	@Column(name = "PEDEGREE")
	private char pedegree;
	@Column(name = "NOME")
	private String nome;
	@Column(name = "PELO")
	private String pelo;
	@Column(name = "SESSO")
	private String sesso;
	@Column(name = "DATA_DI_NASCITA")
	private Date data_di_nascita;
	@Column(name = "DESCRIZIONE")
	private String descrizione;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRazza() {
		return razza;
	}

	public void setRazza(String razza) {
		this.razza = razza;
	}

	public char getPedegree() {
		return pedegree;
	}

	public void setPedegree(char pedegree) {
		this.pedegree = pedegree;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPelo() {
		return pelo;
	}

	public void setPelo(String pelo) {
		this.pelo = pelo;
	}

	public String getSesso() {
		return sesso;
	}

	public void setSesso(String sesso) {
		this.sesso = sesso;
	}

	public Date getData_di_nascita() {
		return data_di_nascita;
	}

	public void setData_di_nascita(Date data_di_nascita) {
		this.data_di_nascita = data_di_nascita;
	}

	public String getDescrizione() {
		return descrizione;
	}

	public void setDescrizione(String descrizione) {
		this.descrizione = descrizione;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((descrizione == null) ? 0 : descrizione.hashCode());
		result = prime * result + ((data_di_nascita == null) ? 0 : data_di_nascita.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		result = prime * result + pedegree;
		result = prime * result + ((pelo == null) ? 0 : pelo.hashCode());
		result = prime * result + ((razza == null) ? 0 : razza.hashCode());
		result = prime * result + ((sesso == null) ? 0 : sesso.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cane other = (Cane) obj;
		if (descrizione == null) {
			if (other.descrizione != null)
				return false;
		} else if (!descrizione.equals(other.descrizione))
			return false;
		if (data_di_nascita == null) {
			if (other.data_di_nascita != null)
				return false;
		} else if (!data_di_nascita.equals(other.data_di_nascita))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		if (pedegree != other.pedegree)
			return false;
		if (pelo == null) {
			if (other.pelo != null)
				return false;
		} else if (!pelo.equals(other.pelo))
			return false;
		if (razza == null) {
			if (other.razza != null)
				return false;
		} else if (!razza.equals(other.razza))
			return false;
		if (sesso == null) {
			if (other.sesso != null)
				return false;
		} else if (!sesso.equals(other.sesso))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Cane [id=" + id + ", razza=" + razza + ", pedegree=" + pedegree + ", nome=" + nome + ", pelo=" + pelo
				+ ", sesso=" + sesso + ", data_di_nascita=" + data_di_nascita + ", descrizione=" + descrizione
				+ "]";
	}
}
