package br.edu.ifgoiano.controle;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/soma")

public class SomaServlet extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String n1 = req.getParameter("n1");
		String n2 = req.getParameter("n2");
		
		int nun1 = Integer.parseInt(n1);
		int nun2 = Integer.parseInt(n2);
		
		int soma = nun1 + nun2; 
		
		PrintWriter somando = resp.getWriter();
		
		somando.print(soma);
		
		
	}

}
