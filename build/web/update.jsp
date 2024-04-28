<%-- 
    Document   : update
    Created on : 12 Oct, 2023, 7:21:09 PM
    Author     : Dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Student Update</h1>
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
            
            
        </div>
    </body>
</html>
