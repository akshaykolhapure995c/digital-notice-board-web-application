<%@ Page Language="C#" AutoEventWireup="true" CodeFile="update.aspx.cs" Inherits="update" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <style>
body {
  margin:0; /*gets rid of white space around body*/
  height:100em;
  background:url("https://static.pexels.com/photos/1440/city-road-street-buildings.jpg") no-repeat center / contain;
  
  position:relative; /*REQUIRED Sets up positioning for your footer*/
}

#sticky {
  width:100%;
  padding:5px;
  padding-bottom:7px;
  
  color:white;
  
  font-size:18px;
  text-align:center;
  position:fixed;    /*Here's what sticks it*/
  bottom:0;          /*to the bottom of the body*/
  left:0;            /*and to the left of the body.*/
  
  /*EFFECTS*/
 background:#000000; /*the a value of .5 makes it transparent*/
}


</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
      <img src='lbp.png' style="height:60px; margin-top:-25px;"></img>
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="" style="font-size:18px;"><a href="#">Add Timetable</a></li>
     
     
      <li class="" style="font-size:18px;"><a href="addstd.aspx">Add New</a></li>
      
      <li class="active" style="font-size:18px;"><a href="update.aspx">Update timtable</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="default.aspx"><span class="glyphicon glyphicon-user"></span>Goto Panel</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav><br><br>
  
<footer id="sticky">&nbspDevelopers&nbsp:&nbspAkshay Kosandar & Akshay Kolhapure</footer>

</body>
</html>