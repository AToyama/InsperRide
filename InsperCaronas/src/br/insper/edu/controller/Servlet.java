package br.insper.edu.controller;
import br.insper.edu.model.*;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

@WebServlet("/")
@MultipartConfig(maxFileSize = 16177215)// upload de arquivo até 16Mb
public class Servlet extends HttpServlet {
	public Servlet(){
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		
		request.getRequestDispatcher("Login.jsp").forward(request, response);
}
			
	@Override
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		DAO dao = new DAO();
		
		Usuarios novo_usuario = new Usuarios();
		
		Caronas nova_carona = new Caronas();
		
		List<Caronas> caronas = dao.listaCaronas();
		
		HttpSession session = request.getSession();
		
		
		String page = "";
		

		if (request.getParameter("cadastrar")!=null){
			page="Cadastro.jsp";
		}
		else if(request.getParameter("login")!=null){
			String email = request.getParameter("email_login");
			String senha = request.getParameter("senha_login");
			if(dao.valida(email, senha)){
				session.setAttribute("user", email);
				session.setMaxInactiveInterval(30*60);
				Cookie userEmail = new Cookie("email", email);
				userEmail.setMaxAge(30*60);
				response.addCookie(userEmail);
				page="Home.jsp";
			}
			else{
				System.out.println("email ou senha incorretos");
				page="Login.jsp";
			}
		}
		else if(request.getParameter("dar_carona")!=null){
			page="DarCarona.jsp";
		}
		else if(request.getParameter("receber_carona")!=null){
			page="ReceberCarona.jsp";
		}
        Part filePart = request.getPart("photo");
		if(request.getParameter("submit")!=null){
			novo_usuario.setInputStream(filePart.getInputStream());
			novo_usuario.setNome(request.getParameter("nome"));
			novo_usuario.setEmail(request.getParameter("email"));
			novo_usuario.setSenha(request.getParameter("senha"));
			novo_usuario.setTelefone(request.getParameter("telefone"));

			dao.adicionaUsuario(novo_usuario);
			page = "Login.jsp";
		}
		if(request.getParameter("criar_carona")!=null){
			//System.out.println("adiciona carona");
			nova_carona.setIndo(request.getParameter("indo"));
			
			nova_carona.setEndereco(request.getParameter("endereco"));
			nova_carona.setPlaca(request.getParameter("placa"));
			nova_carona.setCarro(request.getParameter("carro"));
			nova_carona.setVagas(Integer.valueOf(request.getParameter("vagas")));
			nova_carona.setObs(request.getParameter("observacao"));
			nova_carona.setBairro(request.getParameter("bairro"));
			nova_carona.setHorario(dao.getCurrentTime());
			nova_carona.setTolerancia(dao.getCurrentTime());
			String email = (String) session.getAttribute("user");
			nova_carona.setUsuarioId(dao.getUsuarioId(email));
			
			dao.adicionaCarona(nova_carona);
			
			page = "Home.jsp";
		}
		for (Caronas carona : caronas) {
			if(request.getParameter("carona_"+carona.getPlaca())!=null){
				int vagas=carona.getVagas();
				String email = (String) session.getAttribute("user");
				
				if (vagas!=0){
					if(vagas==4){
						carona.setUsuarioId(dao.getUsuarioId(email));
						dao.usuario4(carona);
						vagas--;
						carona.setVagas(vagas);
						dao.updateVagas(carona);
					}
					else if(vagas==3){
						carona.setUsuarioId(dao.getUsuarioId(email));
						dao.usuario3(carona);
						vagas--;
						carona.setVagas(vagas);
						dao.updateVagas(carona);
					}
					else if(vagas==2){
						carona.setUsuarioId(dao.getUsuarioId(email));
						dao.usuario2(carona);
						vagas--;
						carona.setVagas(vagas);
						dao.updateVagas(carona);
					}
					else if(vagas==1){
						carona.setUsuarioId(dao.getUsuarioId(email));
						dao.usuario1(carona);
						vagas--;
						carona.setVagas(vagas);
						dao.updateVagas(carona);
					}
				}
				else{
					System.out.println("não há vaga disponível");
				}
				
				page="ReceberCarona.jsp";
				
				
			}
		}
		
		
		request.getRequestDispatcher(page).forward(request, response);
				
	}			
			

}
