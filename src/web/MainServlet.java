package web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import search.FoofleSearch;

/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/search")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("yao");
		request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getParameter("search-term"));
		request.setAttribute("searchterm", request.getParameter("search-term"));
		request.setAttribute("results", FoofleSearch.search(request.getParameter("search-term")));
		request.getServletContext().getRequestDispatcher("/WEB-INF/jsp/index.jsp").forward(request, response);
	}

}
