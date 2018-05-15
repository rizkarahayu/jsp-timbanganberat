<%@page import="java.sql.*" %>
 <%@page import="java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                                                        try {
                                                                String url = "jdbc:mysql://localhost:3306/programdiet";
                                                                Connection con = null;
                                                                Statement stat = null;
                                                                ResultSet rs = null;
                                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
 
                                                                con = DriverManager.getConnection(url, "root", "root");
                                                                stat = con.createStatement();

                                                                String query = "Select nama_makanan,gambar from menu_makanan where id_makanan between 11 and 15";
                                                                rs = stat.executeQuery(query);
 
                                                    %>
                                            <% while (rs.next())
                                                {
                                            %>
                                                <img src="<%=rs.getString(2)%>" width="230px" height="230px"/>
                                            <%
                                                 }
                                            %>
                                            <br></br>
                                                <center><button type="submit"><a href="deskripsimalam.jsp">Deskripsi</a></button></center>
                                            <%
                                                rs.close();
                                                stat.close();
                                                con.close();
                                                }
                                                catch (Exception ex){
                                                   out.println ("Unable to connect to database");
                                                }
                                            %>
    </body>
</html>
