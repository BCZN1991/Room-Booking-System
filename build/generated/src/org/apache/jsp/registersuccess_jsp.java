package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class registersuccess_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Register Success!</title>\n");
      out.write("        <style>\n");
      out.write("            #card {\n");
      out.write("  position: relative;\n");
      out.write("  width: 320px;\n");
      out.write("  display: block;\n");
      out.write("  margin: 40px auto;\n");
      out.write("  text-align: center;\n");
      out.write("  font-family: 'Source Sans Pro', sans-serif;\n");
      out.write("}\n");
      out.write("#upper-side {\n");
      out.write("  padding: 2em;\n");
      out.write("  background-color: #8BC34A;\n");
      out.write("  display: block;\n");
      out.write("  color: #fff;\n");
      out.write("  border-top-right-radius: 8px;\n");
      out.write("  border-top-left-radius: 8px;\n");
      out.write("}\n");
      out.write("#checkmark {\n");
      out.write("  font-weight: lighter;\n");
      out.write("  fill: #fff;\n");
      out.write("  margin: -3.5em auto auto 20px;\n");
      out.write("}\n");
      out.write("#status {\n");
      out.write("  font-weight: lighter;\n");
      out.write("  text-transform: uppercase;\n");
      out.write("  letter-spacing: 2px;\n");
      out.write("  font-size: 1em;\n");
      out.write("  margin-top: -.2em;\n");
      out.write("  margin-bottom: 0;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#lower-side {\n");
      out.write("  padding: 2em 2em 5em 2em;\n");
      out.write("  background: #fff;\n");
      out.write("  display: block;\n");
      out.write("  border-bottom-right-radius: 8px;\n");
      out.write("  border-bottom-left-radius: 8px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(" #message {\n");
      out.write("  margin-top: -.5em;\n");
      out.write("  color: #757575;\n");
      out.write("  letter-spacing: 1px;\n");
      out.write("}\n");
      out.write("\n");
      out.write("#contBtn {\n");
      out.write("  position: relative;\n");
      out.write("  top: 1.5em;\n");
      out.write("  text-decoration: none;\n");
      out.write("  background: #8bc34a;\n");
      out.write("  color: #fff;\n");
      out.write("  margin: auto;\n");
      out.write("  padding: .8em 3em;\n");
      out.write("  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);\n");
      out.write("  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);\n");
      out.write("  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.21);\n");
      out.write("  border-radius: 25px;\n");
      out.write("  -webkit-transition: all .4s ease;\n");
      out.write("\t\t-moz-transition: all .4s ease;\n");
      out.write("\t\t-o-transition: all .4s ease;\n");
      out.write("\t\ttransition: all .4s ease;\n");
      out.write("}\n");
      out.write("#contBtn:hover {\n");
      out.write("  -webkit-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);\n");
      out.write("  -moz-box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);\n");
      out.write("  box-shadow: 0px 15px 30px rgba(50, 50, 50, 0.41);\n");
      out.write("  -webkit-transition: all .4s ease;\n");
      out.write("\t\t-moz-transition: all .4s ease;\n");
      out.write("\t\t-o-transition: all .4s ease;\n");
      out.write("\t\ttransition: all .4s ease;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write(" <div id='upper-side'>\n");
      out.write("   <i class=\"fa fa-check\"></i>\n");
      out.write("   <center>\n");
      out.write("       <h3  id='status'> Registration Success - Thank you for your interest at The Royal Guest House </h3>\n");
      out.write("   </center> \n");
      out.write("   <div id='lower-side'>\n");
      out.write("    <p id='message'>\n");
      out.write("      Congratulations, your account has been successfully created.\n");
      out.write("    </p>\n");
      out.write("    <a href=\"http://localhost:8080/reserve/booking/index.html\" id=\"contBtn\">Continue</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    <center> <a href=\"http://localhost:8080/index/\"><img src=\"Images/royal.png\" width=\"360\" height=\"180\" title=\"Logo\" /> </a></center>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
