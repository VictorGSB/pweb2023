package br.edu.ifgoiano.entidade;

import java.util.Date;

public class usuario {
	
 private String email, nome;
 private String senha;
 private Date dataNascimento;
 

public String getEmail() {
	return email;
}


public void setEmail(String email) {
	this.email = email;
}


public String getNome() {
	return nome;
}


public void setNome(String nome) {
	this.nome = nome;
}


public String getSenha() {
	return senha;
}


public void setSenha(String senha) {
	this.senha = senha;
}


public Date getDataNascimento() {
	return dataNascimento;
}


public void setDataNascimento(Date dataNascimento) {
	this.dataNascimento = dataNascimento;
}
 
public Integer getOberIdade() {
	 
	 return 0;
	 
}


}
