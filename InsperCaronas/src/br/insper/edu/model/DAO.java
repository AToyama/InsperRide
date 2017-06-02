package br.insper.edu.model;

import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import com.mysql.jdbc.PreparedStatement;

import br.insper.edu.controller.Usuarios;
import sun.misc.BASE64Encoder;
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
	
	public int getUsuarioId(String email){
		int usuarioId = 0;
		String sql = "select id from usuario where email=?";
		PreparedStatement stmt;
		ResultSet rs;
		try{
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, email);
			rs = stmt.executeQuery();
			rs.next();
			usuarioId = rs.getInt("id");
			//System.out.println(usuarioId);
			rs.close();
			stmt.close();
		}catch (SQLException e){
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
		return usuarioId;
	}
	
	public String getPhotoEmail(String email){
		String sql = "SELECT photo from usuario where email=?";
		PreparedStatement stmt;
		Blob photo = null;
		String image = null;
		byte[] photoData = null;
		BASE64Encoder base64 = new BASE64Encoder();
		StringBuilder imageString = new StringBuilder();
		ResultSet rs;
		try{
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, email);
			rs = stmt.executeQuery();
			rs.next();
			photo = rs.getBlob("photo");
			photoData = photo.getBytes(1, (int)photo.length());
			imageString.append("data:image/png;base64,");
			imageString.append(base64.encode(photoData));
			image = imageString.toString();
			rs.close();
			stmt.close();
		}catch (SQLException e){
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
		return image;
		
	}
	public String getPhotoUsuarioId(int usuarioId){
		String sql = "SELECT photo from usuario where id=?";
		PreparedStatement stmt;
		Blob photo = null;
		String image = null;
		byte[] photoData = null;
		BASE64Encoder base64 = new BASE64Encoder();
		StringBuilder imageString = new StringBuilder();
		ResultSet rs;
		try{
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1, usuarioId);
			rs = stmt.executeQuery();
			rs.next();
			photo = rs.getBlob("photo");
			photoData = photo.getBytes(1, (int)photo.length());
			imageString.append("data:image/png;base64,");
			imageString.append(base64.encode(photoData));
			image = imageString.toString();
			rs.close();
			stmt.close();
		}catch (SQLException e){
        	// TODO Auto-generated catch block
        	e.printStackTrace();
        }
		return image;
		
	}
	public Timestamp getCurrentTime(){
		Timestamp time = null;
		String sql = "SELECT current_timestamp()";
		PreparedStatement stmt;
		ResultSet rs;
		try{
			stmt= (PreparedStatement) connection.prepareStatement(sql);
			rs = stmt.executeQuery();
			rs.next();
			time = rs.getTimestamp("current_timestamp()");
			rs.close();
			stmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return time;
	}
	public void adicionaCarona(Caronas carona){
		String sql = "INSERT into carona"+"(indo,usuario_id,endereco,horario,tolerancia,placa,carro,vagas,observacao,bairro,ativa,efetivada,usuario_1,usuario_2,usuario_3,usuario_4) values(?,?,?,?,?,?,?,?,?,?,'S','N',NULL,NULL,NULL,NULL)";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			//System.out.println("adiciona carona");
			stmt.setString(1, carona.getIndo());
			stmt.setInt(2,carona.getUsuarioId());
			stmt.setString(3, carona.getEndereco());
			stmt.setTimestamp(4, carona.getHorario());
			stmt.setTimestamp(5, carona.getTolerancia());
			stmt.setString(6, carona.getPlaca());
			stmt.setString(7, carona.getCarro());
			stmt.setInt(8, carona.getVagas());
			stmt.setString(9, carona.getObs());
			stmt.setString(10, carona.getBairro());
			stmt.execute();
			stmt.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
	}
	public void usuario1(Caronas carona){
		String sql = "UPDATE carona SET usuario_1=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1,carona.getUsuarioId());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void usuario2(Caronas carona){
		String sql = "UPDATE carona SET usuario_2=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1,carona.getUsuarioId());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void usuario3(Caronas carona){
		String sql = "UPDATE carona SET usuario_3=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1,carona.getUsuarioId());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}	
	public void usuario4(Caronas carona){
		String sql = "UPDATE carona SET usuario_4=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1,carona.getUsuarioId());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void updateVagas(Caronas carona){
		String sql = "UPDATE carona SET vagas=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setInt(1, carona.getVagas());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	}

	public void efetivaCarona(Caronas carona){
		String sql = "UPDATE Caronas SET efetivada=? WHERE placa=?";
		PreparedStatement stmt;
		try {
			stmt = (PreparedStatement) connection.prepareStatement(sql);
			stmt.setString(1, carona.getEfetivada());
			stmt.setString(2, carona.getPlaca());
			stmt.execute();
			stmt.close();
		} catch (SQLException e) {
			//TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public List<Caronas> listaCaronas(){
		List<Caronas> caronas = new ArrayList<Caronas>();
		
		PreparedStatement stmt;
		
		try {
			stmt = (PreparedStatement) connection.prepareStatement("SELECT * FROM carona");
			ResultSet rs = stmt.executeQuery();
			
			while (rs.next()) {
				Caronas carona = new Caronas();
				carona.setAtiva(rs.getString("ativa"));
				carona.setUsuarioId(rs.getInt("usuario_id"));
				carona.setBairro(rs.getString("bairro"));
				carona.setCarro(rs.getString("carro"));
				carona.setEfetivada(rs.getString("efetivada"));
				carona.setEndereco(rs.getString("endereco"));
				carona.setHorario(rs.getTimestamp("horario"));
				carona.setIndo(rs.getString("indo"));
				carona.setObs(rs.getString("observacao"));
				carona.setPlaca(rs.getString("placa"));
				carona.setTolerancia(rs.getTimestamp("tolerancia"));
				carona.setVagas(rs.getInt("vagas"));
				carona.setUsuario1(rs.getInt("usuario_1"));
				carona.setUsuario2(rs.getInt("usuario_2"));
				carona.setUsuario3(rs.getInt("usuario_3"));
				carona.setUsuario4(rs.getInt("usuario_4"));
				caronas.add(carona);
			}
			
			rs.close();
			stmt.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return caronas;
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
