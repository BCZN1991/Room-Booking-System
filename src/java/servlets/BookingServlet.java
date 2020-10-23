package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet (name="BookingServlet",urlPatterns={"/Booking_Room_System"})
public class BookingServlet extends HttpServlet 
{
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int s1 = Integer.parseInt(request.getParameter("id"));
        String s2 = request.getParameter("full_Name");
        String s3 = request.getParameter("checkInDate");
        String s4 = request.getParameter("checkOutDate");
        String s5 = request.getParameter("noOfRooms");
        String s6 = request.getParameter("noOfAdults");
        String s7 = request.getParameter("noOfChildren");
        String s8 = request.getParameter("email");
        String s9 = request.getParameter("contactNumber");
      //  String s10 = request.getParameter("status");

           // sesson..........
           HttpSession session=request.getSession(true);
          String s10 = (String)session.getAttribute("sessname");

       out.println(s10);




       try {


            Class.forName("com.mysql.jdbc.Driver");
      //  out.println("driver loaded");
     Connection  con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online guest house reservation system"
                                                    + "?zeroDateTimeBehavior=convertToNull","root" ,"");
      //  out.println("Connect");
      Statement  st =  con.createStatement();
        //  out.println("conncetion successfull");


       int rs =  st.executeUpdate("insert into reservation (id,full_Name,checkIn,checkOut,noOfRooms,noOfAdults,noOfChildren,email,contactNo,userID)"
                        + "values ('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"','"+s9+"','"+s10+"')");
         // out.println(s1);
         // out.println(s2);
          out.println("<h1> Booking sucsefull </h1>");

          /* if(rs == 1)
           {
           out.println("<script type=\"text/javascript\">");
       out.println("alert('send successfully');");
       out.println("</script>");
       //response.sendRedirect("home.jsp");
           }else{


       }*/

          response.sendRedirect("bookedsuccess.jsp"); 



        }catch(ClassNotFoundException e)
        {
        out.println("Oppps!!  " +e);
        } catch (SQLException e) 
        {
            out.println("Oppps!!  " +e);
        }   catch (IOException e) 
        {
            out.println("Oppps!!  " +e);
        }
        finally
       {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() 
    {
        return "Short description";
    }// </editor-fold>

}