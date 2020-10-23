package servlets;
import DAO.LoginDAO;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/Login")
public class Login extends HttpServlet {
    private static final long serialVersionUID = 1L;
          
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        
        
        LoginDAO Check =new LoginDAO();
        HttpSession session =request.getSession();
        
        
        if(Check.check(username, password,session))
        {
            
            session.setAttribute("username",username);
        
            if(username.equals("username")&& password.equals("password")) 
            {
                response.sendRedirect("index.jsp");
                
            }
            else
            {
                response.sendRedirect("index.html");
                
            }

            
        }
        else
        {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
        }
        
        
    }
}