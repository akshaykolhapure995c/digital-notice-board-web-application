<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
 <html>
   <style>
body {
  margin:0; /*gets rid of white space around body*/
  height:100vh;
  
  position:relative; /*REQUIRED Sets up positioning for your footer*/
}

#sticky {
  width:100%;
  padding:5px;
  padding-bottom:7px;
  
  color:white;
  font-weight:;
  font-size:18px;
  text-align:center;
  position:fixed;    /*Here's what sticks it*/
  bottom:0;          /*to the bottom of the body*/
  left:0;            /*and to the left of the body.*/
  
  /*EFFECTS*/
 background:#000000; /*the a value of .5 makes it transparent*/
}


</style>
<body bgcolor='#3B653D'>
	<div>
	<img src='lbp.png' style='width:150px;margin-left:20px;margin-top:-20px;vertical-align:middle'></img>
	<span>	
	<p  style='margin-left:350px;' id='h'><a href='admin.aspx' style="text-decoration:none;color:White;">Digital Notice Board</a></p>
	<div style=' display:inline; float:right; '>
	<P class='head'>Date&nbsp;&nbsp;:&nbsp;</P>
	<P id='date'></P><br>
	<P class='head'>Day&nbsp;&nbsp;&nbsp;:&nbsp;</P>
	<P id='date'></P>
	</div>
	</span>
	<hr>
	</div>
	<center>
<p  style='font-size:24px;' id='h'>Lectures Timetable</p></center><br>
<div id='containt'>
<table id='customers'>	
  

			<tr>
								<th>Day</th>
								<th>Standard and Medium</th>
								<th>Subject</th>
								<th>Time</th>	
			</tr>
								
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>	</tr>
								<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>
	<tr>
								<td>Day</td>
								<td>Standard and Medium</td>
								<td>Subject</td>
								<td>Time</td>
								
								
								
								</tr>

</table>
</div>

<div id='footer'>
<hr>

<p  style='font-size:20px;' id='other'>Other Notice&nbsp;&nbsp;:&nbsp&nbsp</p>
</div>








	
</body>
	<style>

	span{
	display:inline;
	}
	body
	{
	font-family:"Comic Sans MS", cursive, sans-serif;
	}
	
	caption{
	color:white;
	margin-bottom:5px;
	}
  
  
	p
	{
	color:white;
	display:inline;
	}
	
   #h
	{
      font-size:30px;
	}

	#date
	{
	font-size:15px;
	}
	
   .head{
   font-size:16px;
 
   }
   
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	font-size:18px;
    border-collapse: collapse;
    width: 90%;
	margin-left:60px;
	margin-top:-15px;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:nth-child(odd){background-color: #ddd;}

#customers th {
    padding-top: 6px;
    padding-bottom: 6px;
    text-align: left;
    background-color: #4CAF50;
    color: white;
}
	
	#containt{
	height:530px;
	}
	


	#center
	{
	margin-left:50px;
	}

	#t
	{
	margin-top:20px;
	}

	#other
	{
	margin-left:20px;
	}

	#footer
	{
	margin-top:15px;
	}
</style>

<footer id="sticky">&nbspDevelopers&nbsp:&nbspAkshay Kosandar & Akshay Kolhapure</footer>
</html>