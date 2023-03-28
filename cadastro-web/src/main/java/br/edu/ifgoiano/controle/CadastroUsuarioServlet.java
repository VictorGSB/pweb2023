package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.digester.SystemPropertySource;

import br.edu.ifgoiano.entidade.usuario;


@WebServlet ("/cadastrarUsuario")
public class CadastroUsuarioServlet extends HttpServlet {
	//Simular o banco de dados 
	
	private List<usuario> lstDeUsuarios;
	
	@Override
	public void init() throws ServletException {
		
		this.lstDeUsuarios = new ArrayList<usuario>();
		
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String senha1 = req.getParameter("senha");
		String senha2 = req.getParameter("senha1");
		
		//Verificar se as senhas sao igais
		
		if(senha1.equals(senha2)) {
			
			usuario usu = new usuario();
			
			usu.setNome(req.getParameter("nome"));
			usu.setEmail(req.getParameter("email"));
			usu.setSenha(senha1);
			
			lstDeUsuarios.add(usu);
				
			//Redirecionar o usuario para a pagina de login.
			
			resp.sendRedirect("index.html");
			
		}else {
			
			//Redirecionar o usuario para a mesma pagina de cadastro de usuario.
			
			
			
			req.getRequestDispatcher("CadastroUsuario.html").forward(req, resp);
		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		for (usuario usuario : lstDeUsuarios) {
			
			System.out.println(usuario.getNome().concat(" - ").concat(usuario.getEmail()));
			
		}
	}
	
	@Override
	public void destroy() {
		
		this.lstDeUsuarios.clear();
	}

}
