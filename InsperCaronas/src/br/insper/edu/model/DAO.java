package br.insper.edu.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.PreparedStatement;

import br.insper.edu.controller.Usuarios;
import br.insper.edu.controller.Caronas;

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
	public void adicionaUsuario(Usuarios usuario){
		String sql = "INSERT into usuario"+"(photo,nome,email,senha,telefone) values(?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			
			stmt.setBlob(1, usuario.getPhoto());
			stmt.setString(2, usuario.getNome());
			stmt.setString(3, usuario.getEmail());
			stmt.setString(4, usuario.getSenha());
			stmt.setString(5, usuario.getTelefone());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public void adicionaCarona(Caronas carona){
		String sql = "INSERT into carona"+"(indo,ativa,usuario_id,endereco,horario,tolerancia,placa,carro,vagas,observacao,usuario_1,usuario_2,usuario_3,usuario_4,efetivada,bairro) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, carona.getIndo());
			stmt.setString(2, carona.getAtiva());
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public boolean valida(String email, String senha){
		boolean status = false;
		String sql = "SELECT * FROM usuario WHERE email=? AND senha=?";
        PreparedStatement stmt = null;
        ResultSet rs = null;
        
        try{
        	stmt = (PreparedStatement) connection.prepareStatement(sql);
        	stmt.setString(1, email);
        	stmt.setString(2, senha);
        	rs = stmt.executeQuery();
        	status=rs.next();
        	rs.close();
        	stmt.close();
        } catch (SQLException e){
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
        
        return status;
	}
}
