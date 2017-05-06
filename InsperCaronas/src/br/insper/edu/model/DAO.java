package br.insper.edu.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import br.insper.edu.controller.Usuarios;

public class DAO {
	private Connection connection = null;
	public DAO() {
	 try {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost/inspercaronas", "root", "jp123456");
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	 
	}
	public void adiciona(Usuarios usuario){
		String sql = "INSERT into usuario"+"(nome,email,senha,telefone) values(?,?,?,?)";
		PreparedStatement stmt;
		try {
			
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setString(1, usuario.getNome());
			stmt.setString(2, usuario.getEmail());
			stmt.setString(3, usuario.getSenha());
			stmt.setString(4, usuario.getTelefone());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
