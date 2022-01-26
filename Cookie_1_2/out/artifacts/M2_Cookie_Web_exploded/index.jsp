<%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 24.01.2022
  Time: 14:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<%
          String name=(String) request.getAttribute("name");
          String surname=(String) request.getAttribute("surname");
    String country=(String) request.getAttribute("country");
    String phone=(String) request.getAttribute("phone");
    String siteName=(String) request.getAttribute("siteName");
%>
     <div class="container">
         <div class="row">
             <div class="col-lg-6 m-auto">
                 <form action="/main" method="post" class="mt-5">
                     <div class="mb-3">
                         <label for="personName" class="form-label">Name</label>
                         <input type="text" value="<%=name!=null?name:""%>" class="form-control" name="personName" id="personName" >
                     </div>

                     <div class="mb-3">
                         <label for="personSurname" class="form-label">Surname</label>
                         <input type="text" value="<%=surname!=null?surname:""%>" class="form-control" name="personSurname" id="personSurname" >
                     </div>

                     <div class="mb-3">
                         <label for="personCountry" class="form-label">Country</label>
                         <select name="personCountry" id="personCountry">
                             <option value="<%=country!=null?country:""%>"><%=country!=null?country:""%></option>
                             <option value="usa">Usa</option>
                             <option value="can">Canada</option>
                             <option value="kaz">Kazakhstan</option>
                         </select>
                     </div>

                     <div class="mb-3">
                         <label for="personPhone" class="form-label">Phone</label>
                         <input type="text" value="<%=phone!=null?phone:""%>" class="form-control" name="personPhone" id="personPhone" >
                     </div>

                     <button type="submit" class="btn btn-primary">Draft</button>
                     <a href="/DeleteCookie" class="btn btn-danger">Delete Cookie</a>
                 </form>
             </div>
         </div>
         <div class="row mt-5">
             <div class="col-lg-6 m-auto">
                 <form action="/main" method="post" class="mt-5">
                     <div class="mb-3">
                         <label for="siteName" class="form-label">SITE NAME:</label>
                         <input type="text" value="<%=siteName!=null?siteName:"default site name"%>" class="form-control" name="siteName" id="siteName" >
                         <%
                             if(siteName==""){
                         %>
                         <h2 class="text-danger">Default site Name</h2>
                         <%
                             }%>
                     </div>
                     <button type="submit" class="btn btn-success">SET SITE NAME</button>

                 </form>
             </div>
         </div>
     </div>
</body>
</html>
