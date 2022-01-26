<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Translations" %><%--
  Created by IntelliJ IDEA.
  User: Acer
  Date: 24.01.2022
  Time: 17:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EDocs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<%
    List<String> list=Translations.translations.get(1);;
    String lang=(String) request.getAttribute("language");
    if(lang.equals("rus")){
        list=Translations.translations.get(0);
    }else{
        list=Translations.translations.get(1);
    }



    System.out.println(lang);
    System.out.println(list.get(0));



%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container-fluid d-flex justify-content-between">
       <div>
           <a class="navbar-brand" href="#">EDocs</a>
       </div>
      <div>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="/rus">РУС</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/eng">ENG</a>
                </li>

            </ul>
        </div>
      </div>
    </div>
</nav>

<div class="col-lg-4 m-auto">
    <form class="mt-5">
        <div class="mb-4">

            <label class="form-label"><%=list.get(0)%></label>
            <input type="text" value="" class="form-control" >

        </div>
        <div class="mb-4">
            <label class="form-label"><%=list.get(1)%></label>
            <input type="text" class="form-control" >

        </div>
        <div class="mb-4">
            <label class="form-label"><%=list.get(2)%></label>
            <br>
            <select name="" id="">
                <option value="">Kazakhstan</option>
            </select>

        </div>
        <div class="mb-4">
            <label class="form-label"><%=list.get(3)%></label>
            <br>
            <input type="radio" id="html" value="male">
            <label for="html"><%=list.get(6)%></label><br>
            <input type="radio" id="female" value="female">
            <label for="html"><%=list.get(7)%></label><br>

        </div>
        <div class="mb-4">
            <label class="form-label"><%=list.get(4)%></label>
            <input type="text" class="form-control" >

        </div>
        <button type="submit" class="btn btn-primary"><%=list.get(5)%></button>
    </form>
</div>
</body>
</html>
