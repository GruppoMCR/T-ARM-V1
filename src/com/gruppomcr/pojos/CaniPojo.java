package com.gruppomcr.pojos;

import java.io.Serializable;
import java.util.Date;

public class CaniPojo implements Serializable {
		
	private Integer id;
	
	private String razza;
	
	private char pedegree;
	
	private String nome;
	
	private String pelo;
	
	private String sesso;
	
	private Date data_di_nascita;
	
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

	
	
}
