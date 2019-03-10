package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AjaxController")
public class AjaxController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/plain");
		PrintWriter out = response.getWriter();
		String acion = request.getParameter("action");
		
		if (acion.equals("demo1")){
			String nome = request.getParameter("nome");
			out.print("Ola " + nome);
		} else if (acion.equals("demo2")){
			int numero1 = Integer.parseInt(request.getParameter("numero1"));
			int numero2 = Integer.parseInt(request.getParameter("numero2"));
			out.print(numero1 + numero2);
		}
		
	}

}
