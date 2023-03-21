package br.edu.ifgoiano.controle;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet ("/cadastrarUsuario")
public class CadastroUsuarioServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String senha1 = req.getParameter("senha");
		String senha2 = req.getParameter("senha1");
		
		//Verificar se as senhas sao igais
		
		if(senha1.equals(senha2)) {
			//Redirecionar o usuario para a pagina de login
			
			resp.sendRedirect("index.html");
			
		}else {
			
			//Redirecionar o usuario para a mesma pagina de cadastro de usuario
			
			req.getRequestDispatcher("CadastroUsuario.html").forward(req, resp);
		}
		
	}

}
