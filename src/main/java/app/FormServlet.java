package app;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/processa-form")
public class FormServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
//		nome
		String nomeParam = req.getParameter("campo-nome");
		
//		radio
		String idiomaParam = req.getParameter("idioma");
		
		
//		checkbox
		String[] habParam = req.getParameterValues("habilidades");
		
		
//		VALIDAÇÃO DE DADOS
		
		if(nomeParam.equals("")){
			throw new IllegalArgumentException("ERRO!!! O nome não pode ser enviado em branco");
		}
		
		if(idiomaParam.equals("")) {
			throw new IllegalArgumentException("ERRO!!! o Idioma deve ser escolhido");
		}
		
		if(habParam.equals("")) {
			throw new IllegalArgumentException("ERRO!!! Selecione pelo menos uma habilidade/conhecimento");
		}
		
		
		for(String hab : habParam) {
		
			System.out.println(hab);
		}
		
//		Envio de dados para form.jsp
		req.setAttribute("nomeAttr", nomeParam);
		req.setAttribute("idiomaAttr", idiomaParam);
		req.setAttribute("habAttr", habParam);
		
		
		RequestDispatcher disp = req.getRequestDispatcher("form.jsp");
		
		disp.forward(req, resp);
				
	}

}
