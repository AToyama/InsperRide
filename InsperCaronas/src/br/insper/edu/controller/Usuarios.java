package br.insper.edu.controller;

import java.io.InputStream;
import java.sql.Date;

public class Usuarios {
	private Integer id;
	private String nome;
	private String email;
	private String senha;
	private String telefone;
	private InputStream inputStream;
	
	
	public InputStream getPhoto(){
		return inputStream;
	}
	public void setInputStream(InputStream inputStream){
		this.inputStream = inputStream;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	 public String getEmail(){
		 return email;
		 
	 }
	 public void setEmail(String email){
		 this.email=email;
	 }
	 
	 public String getSenha(){
		 return senha;
	 }
	 public void setSenha(String senha){
		 this.senha=senha;
	 }
	 
	 public String getTelefone(){
		 return telefone;
	 }
	 
	 public void setTelefone(String telefone){
		 this.telefone=telefone;
	 }
}
