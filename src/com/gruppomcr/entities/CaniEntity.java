
package com.gruppomcr.entities;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.BeanUtils;

import com.gruppomcr.pojos.CaniPojo;
import com.gruppomcr.util.Disaccoppiatore;

/**
 * @author Edoardo
 *
 */
@Entity
@Table(name="cani", schema="t-arm")
public class CaniEntity implements Serializable, Disaccoppiatore<CaniPojo> {

	@Id
	@GeneratedValue
	@Column(name="ID")
	private Integer id;
	
	@Column(name="RAZZA")
	private String razza;
	
	@Column(name="PEDEGREE")
	private char pedegree;
	
	@Column(name="NOME")
	private String nome;
	
	@Column(name="PELO")
	private String pelo;
	
	@Column(name="SESSO")
	private String sesso;
	
	@Column(name="DATA_DI_NASCITA")
	private Date data_di_nascita;
	
	@Column(name="CARATTERISTICHE")
	private String caratteristiche;

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

	public String getCaratteristiche() {
		return caratteristiche;
	}

	public void setCaratteristiche(String caratteristiche) {
		this.caratteristiche = caratteristiche;
	}

	@Override
	public CaniPojo convertiInPojo() {
		
		CaniPojo pojo = new CaniPojo();
		BeanUtils.copyProperties(this, pojo);
		return pojo;
		
	}
	
}
