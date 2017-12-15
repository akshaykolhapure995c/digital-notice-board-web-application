<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addstd.aspx.cs" Inherits="addstd" %>

<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">function Button1_onclick() {

}



</script>
</head>
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
<body>
<form id="Form1" runat="server">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
      <img src='lbp.png' style="height:60px; margin-top:-25px;"></img>
      </a>
    </div>
    <ul class="nav navbar-nav">
      <li class="" style="font-size:18px;"><a href="admin.aspx">Add Timetable</a></li>
     
     
   <li class="active" style="font-size:18px;"><a href="admin.aspx">Add New</a></li>
   <li class="" style="font-size:18px;"><a href="update.aspx">Update timtable</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="default.aspx"><span class="glyphicon glyphicon-user"></span>Goto Panel</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
  
 <div class="container" style="border:1px solid black;">
 <h3>Subject</h3>
  
      <div class="form-group">
      <input type="text" class="form-control" id="sub" name='sub' placeholder="Enter Subject" required>
      <label id='sub_msg' id='sub_msg'></lable>
    </div>
 
     <input id="Button1" class="btn btn-default" type="button" value="Submit" onserverclick ="adsub" runat="server"  />
<hr>
  <h3>Standard</h3>
  
      <div class="form-group">

      <input type="text" class="form-control" id="std" placeholder="Enter standard" name="std" required>
    </div>
 
     <input id="Button2" class="btn btn-default" type="button" value="Submit" onserverclick ="adstd" runat="server" />
<hr>


  <h3>Batch</h3>
  
    <div class="form-group">

      <input type="text" class="form-control" id="batch" placeholder="Enter batch" name="batch" required>
    </div>
  
     <input id="Button3" class="btn btn-default" type="button" value="Submit" onserverclick ="adbatch" runat="server" />
  <hr>
</div>



</form>
<footer id="sticky">&nbspDevelopers&nbsp:&nbspAkshay Kosandar & Akshay Kolhapure

</footer>
</body>
</html>
