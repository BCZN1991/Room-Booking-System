package servlets;
import DAO.RegisterDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/ProjectServlet"})
public class ProjectServlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        RegisterDAO dao = new RegisterDAO();
        PrintWriter out = response.getWriter();
        try
        {
            dao.getConnection();
            HttpSession session = request.getSession(true);
            RequestDispatcher dispatcher = null;
            String user = request.getParameter("email");
            String passw = request.getParameter("pass");
            
            switch (request.getParameter("decission")) 
            {
              //  case "Login":
          /*       if(session != null)
                     {
                          session.setAttribute("name", user);
                     }
                    if(logino != null){
                        if(logino.getStatus().equalsIgnoreCase("block")){
                            dispatcher = request.getRequestDispatcher("/ErrorBlocked.jsp");
                            dispatcher.forward(request, response);
                        }else{
                            if(logino.getRole().equalsIgnoreCase("student"))
                            {
                                    session.setAttribute("login", logino);
                                    session.setAttribute("passw", passw);
                                        
                                    dispatcher = request.getRequestDispatcher("/StudentMain.jsp");
                                    dispatcher.forward(request, response);
                            }
                            else if(logino.getRole().equalsIgnoreCase("Admin")){
                                session.setAttribute("login", logino);
                                session.setAttribute("passw", passw);

                                dispatcher = request.getRequestDispatcher("/Admin.jsp");
                                dispatcher.forward(request, response);
                            }
                            else if(logino.getRole().equalsIgnoreCase("Teacher")){

                                    session.setAttribute("login", logino);
                                    session.setAttribute("passw", passw);

                                    dispatcher = request.getRequestDispatcher("/TeacherHomePage.jsp");
                                    dispatcher.forward(request, response); 
                            }
                        }
                    }
                    else{
                        request.setAttribute("result", "Your registration no or passward is wrong!");
                        dispatcher = request.getRequestDispatcher("/ErrorLogin.jsp");
                        dispatcher.forward(request, response);
                    }   break; */
                case "Register":
                    dao.register(Integer.parseInt(request.getParameter("userID")),
                            request.getParameter("name"),
                            request.getParameter("surname"),
                            request.getParameter("birthday"),
                            request.getParameter("gender"),
                            request.getParameter("email"),
                            request.getParameter("contact"));
                      
                    
                    dispatcher = request.getRequestDispatcher("/registersuccess.jsp");
                    dispatcher.forward(request, response);
                    break;
              //  case "booking":
                    
                //    break;
                default:
                    break;
            }
        }
        catch(IOException | ClassNotFoundException | NumberFormatException | SQLException | ServletException error)
        {
            out.println("<P>Error is....</p>" + error.getMessage());
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        RegisterDAO dao = new RegisterDAO();
        PrintWriter out = response.getWriter();
    }
}
