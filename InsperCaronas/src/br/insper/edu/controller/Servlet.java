package br.insper.edu.controller;
import br.insper.edu.model.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/cadastro")
public class Servlet extends HttpServlet {
	public Servlet(){
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		
		request.getRequestDispatcher("Cadastro.jsp").forward(request, response);
}
			
	@Override
	protected void doPost (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
				
		DAO dao = new DAO();
		
		Usuarios novo_usuario = new Usuarios();
		String page = "";
		
		if(request.getParameter("submit")!=null){
			novo_usuario.setNome(request.getParameter("nome"));
			novo_usuario.setEmail(request.getParameter("email"));
			novo_usuario.setSenha(request.getParameter("senha"));
			novo_usuario.setTelefone(request.getParameter("telefone"));

			dao.adiciona(novo_usuario);
			page = "Cadastro.jsp";
		}
		
		request.getRequestDispatcher(page).forward(request, response);
				
	}			
			

}
