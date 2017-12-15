<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

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
      <li class="active" style="font-size:18px;"><a href="#">Add Timetable</a></li>
     
     
      <li class="" style="font-size:18px;"><a href="addstd.aspx">Add New</a></li>
      
      <li class="" style="font-size:18px;"><a href="update.aspx">Update timtable</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="default.aspx"><span class="glyphicon glyphicon-user"></span>Goto Panel</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav><br><br>
  <div class="container" style="border:1px solid black;">
  <h2>Fill out Below Fields</h2><hr>
        <form id="form1" runat="server">
  
    <div class="form-group">

      <select class="form-control" id="day" placeholder="Select Day" name="day" required>
         <option value=''>Select Day</option>     
      <option value='mon'>Monday</option>
       <option value='tue'>Tuesday</option>
        <option value='wed'>Wednesday</option>
              <option value='thu'>Thursday</option>
                    <option value='fri'>Friday</option>
                          <option value='sat'>Saturday</option>
                                <option value='sun'>sunday</option>
      </select>
    </div>
       <div class="form-group">
    
          <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" 
               AppendDataBoundItems="True" DataSourceID="SqlDataSource1" 
               DataTextField="name" DataValueField="name" >
             <asp:ListItem>Select standard</asp:ListItem>
     

          </asp:DropDownList>
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
               ConnectionString="<%$ ConnectionStrings:notice_dbConnectionString %>" 
               
               SelectCommand="SELECT * FROM [other] WHERE ([type] = @type)">
               <SelectParameters>
                   <asp:Parameter DefaultValue="std" Name="type" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
    </div>
    <div class="form-group">

      <select class="form-control" id="med" placeholder="Select Standard" name="med" required>
         <option value=''>Select Medium</option> 
          <option value='marathi'>Marathi</option>        
          <option value='semi'>Semi-English</option>  
          <option value='eng'>English</option>  
     
      </select>
    </div>
       <div class="form-group">
           <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" 
               AppendDataBoundItems="True" DataSourceID="SqlDataSource2" 
               DataTextField="name" DataValueField="name" >
            <asp:ListItem>Select batch</asp:ListItem>
           </asp:DropDownList>
    
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:notice_dbConnectionString2 %>" 
               SelectCommand="SELECT [name] FROM [other] WHERE ([type] = @type)">
               <SelectParameters>
                   <asp:Parameter DefaultValue="batch" Name="type" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>
    
    </div>
     <div class="form-group">

         <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" 
               AppendDataBoundItems="True" DataSourceID="SqlDataSource3" 
               DataTextField="name" DataValueField="name" >
            <asp:ListItem>Select Subject</asp:ListItem>
           </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:notice_dbConnectionString3 %>" 
             SelectCommand="SELECT [name] FROM [other] WHERE ([type] = @type)">
             <SelectParameters>
                 <asp:Parameter DefaultValue="sub" Name="type" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>
    </div>
      <div class="form-group">

      <input type="text" class="form-control" id="time" placeholder="Enter time" name="time" required>
    </div>
  <Button ID="Button1" runat="server" Text="Submit" type="submit" onserverclick ="addbatch" class="btn btn-default" >Submit</button>
    
        </form>
        <br>
</div>
<footer id="sticky">&nbspDevelopers&nbsp:&nbspAkshay Kosandar & Akshay Kolhapure</footer>

</body>
</html>