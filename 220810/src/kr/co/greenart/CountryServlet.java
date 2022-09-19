package kr.co.greenart;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class CountryServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String continent = req.getParameter("continent");
	      CountryDAO dao = new CountryDAO();
	      List<Country> list = null;
	      try {
	         list = dao.getCountryByContinent("asia");
	      } catch (Exception e) {
	         e.printStackTrace();
	      }
	      
	      req.setAttribute("continent", continent);
	      req.setAttribute("Countrylist", list);
	      
	      req.getRequestDispatcher("result2.jsp").forward(req, resp);
	}

}
