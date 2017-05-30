package com.servlet;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.SQLException;
 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import com.dao.Dao;
 
public class loginServlet extends HttpServlet {
    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
 
    }
 
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String cardnum = new String(request.getParameter("cardnum").getBytes(
                "ISO8859_1"), "GBK");
        String password = new String(request.getParameter("password").getBytes(
                "ISO8859_1"), "UTF-8");
        User user = new User();
        user.setCardnum(cardnum);
        user.setPassword(password);
        Dao dao = new Dao();
        boolean isLogin;
        try {
            isLogin = dao.logoin(user);
 
            if (isLogin) {
                InetAddress inetAddress = InetAddress.getLocalHost();
                String m = inetAddress.getHostAddress();
                int n = request.getRemotePort();
                System.out.println(m+"*********"+ n);
                HttpSession session = request.getSession(); 
                session.setAttribute("address", m);
                session.setAttribute("port", n);
                response.sendRedirect("trade.jsp");
            } else {
                response.sendRedirect("index.jsp");
            }
 
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
 
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
 
    public void init() throws ServletException {
    }
 
}