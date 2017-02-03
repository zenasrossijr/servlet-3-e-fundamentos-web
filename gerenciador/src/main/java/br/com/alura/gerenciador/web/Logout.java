package br.com.alura.gerenciador.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alura.gerenciador.Usuario;

public class Logout implements Tarefa {

	@Override
	public String executa(HttpServletRequest req, HttpServletResponse resp) {
		HttpSession session = req.getSession();
		 
		 Usuario usuario =  (Usuario) session.getAttribute("usuarioLogado");
		  
		 session.removeAttribute("usuarioLogado");
		 
		 req.setAttribute("usuario", usuario);
		 
		 return "/WEB-INF/paginas/logout.jsp";
	}

}
