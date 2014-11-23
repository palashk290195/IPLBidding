<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=200, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
          </button>
          <a class="navbar-brand" href="#">IPL Player Auction</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
          <ul class="nav navbar-nav navbar-right">
            <li><a href="playerHome.jsp"><span class="glyphicon glyphicon-user"></span>Home</a></li>
            <li><a href="logout.jsp"><span class="glyphicon glyphicon-log-in"></span>Logout</a></li>
          </ul>
        </div>
      </div>
    </nav>


    <div class="container">
	<h2 class="text-center"> Hi , <%=request.getParameter("userName") %></h2>
    </div>


<div class="container">
      <h2>Update Details</h2>
      <form action="Player" method="post" role="form">
        <div class="form-group">
          <label for="email">Username:</label>
          <input type="text" class="form-control" name="UserName" id="email" placeholder="Enter UserName">
        </div>
        <div class="form-group">
          <label for="pwd">Country:</label>
          <input type="text" name="Country" class="form-control" id="pwd" placeholder="Enter Country">
        </div>

        <button type="submit" value="Update" class="btn btn-default">Submit</button> 
		<input type="hidden" name="purpose" value="update" >
      </form>
    </div>



</body>
</html>