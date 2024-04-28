<%-- 
    Document   : index
    Created on : 11 Oct, 2023, 7:07:43 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<%
    if(request.getParameter("submit")!=null)
    {
     String name=request.getParameter("sname");
     String course=request.getParameter("course");
     String fee=request.getParameter("fee");
     
     Connection con;
     PreparedStatement pst;
     ResultSet rs;
     
     
     String url="jdbc:mysql://localhost:3306/scholl";
        String userName="root";
        String passWord="pass123";
        
        
        
      
    
        Class.forName("com.mysql.jdbc.Driver");
        con =DriverManager.getConnection(url,userName,passWord);
        
        
        
        pst=con.prepareStatement("insert into schooll(name,course,fee) values(?,?,?)");
        
        pst.setString(1, name);
        pst.setString(2,course);
        pst.setString(3,fee);
        
        pst.executeUpdate();
        
        %>
        
        <script>
            
            
            alert("Record Addeddd !!!!");
        </script>
     
        
        
 <%    
     
    }




%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Student Registration System Crud using - Jsp</h1>
        <br>
        
        
        
        <div class="row">
            
            <div class="col-sm-4">
                
                <form method="POST" action="#">
                    
                    <div alight="left">
                        <label class="form-label">Student Name</label>
                        <input type="text" class="form-control" placeholder="Student Name" name="sname" id="sname" required>
                        
                    </div>
                    
                     <div alight="left">
                        <label class="form-label">Course</label>
                        <input type="text" class="form-control" placeholder="Course" name="course" id="course" required>
                        
                    </div>
                    
                     <div alight="left">
                        <label class="form-label">Fee</label>
                        <input type="text" class="form-control" placeholder="Fee" name="fee" id="fee" required>
                        
                    </div>
                    
                    <br>
                    
                    <div alight="right">
                        <input type="submit" value="submit" name="submit" class="btn btn-info">
                        <input type="reset" value="reset" name="reset" class="btn btn-warning">
                        
                    </div>
                    
                    
                </form>
                
            </div>
            
            <div class="col-sm-8">
                
                <div class="panel-body">
                    <table id="tbl-student" class="table table-responsive table-bordered" cellpadding="0" width="100%">
                        <thead>
                            <tr>
                                <th>Student Name</th>
                                <th>Course</th>
                                <th>Fee</th>
                                <th>Edit</th>
                                <th>Delete</th>
                                

                                
                            </tr>
                            
                            <%
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
     
     
                                String url="jdbc:mysql://localhost:3306/scholl";
                                String userName="root";
                                String passWord="pass123";
        
        
        
      
    
                                Class.forName("com.mysql.jdbc.Driver");
                                con =DriverManager.getConnection(url,userName,passWord);
                                
                                String query="select*from schooll";
                                Statement st=con.createStatement();
                                rs=st.executeQuery(query);
                                
                                while(rs.next())
                                {
                                    
                                
                                
                            %>
                            <tr>
                                <td><%=rs.getString("name") %></td>
                                <td><%=rs.getString("course") %></td>
                                <td><%=rs.getString("fee") %></td>
                                <td><a href="update.jsp">Edit</a></td>
                                <td><a href="delete.jsp">Delete</a></td>
                                
                                

                                
                            </tr>
                            
                            <%
                                }
                                
                            %>    
                            
                        
                        </thead>
                        
                    </table>
                    
                </div>
                
                
            </div>
        </div>
    </body>
</html>
