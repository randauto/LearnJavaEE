package net.sieudaochichcode.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// get parameters from client
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		
		// get language
		String languages[] = request.getParameterValues("language");
		
		if (languages != null && languages.length > 0) {
			System.out.println("Languages are: ");
		    for (String lang : languages) {
		        System.out.println("\t" + lang);
		    }
		}
		
		
		String htmlResponse = "<html>";
		htmlResponse += "<h2>Your username is: " +userName +"</h2>";
		htmlResponse += "</html>";
		
		// get feedback.
		String fb = request.getParameter("feedback");
		System.out.println("Feedback is : " + fb);
		// get job category
		String jobCat = request.getParameter("jobCat");
		System.out.println("Job cat value: " + jobCat);
		PrintWriter writer = response.getWriter();
		writer.println(htmlResponse);
	}

}
