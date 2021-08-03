<%@ Page Language="VB" AutoEventWireup="false" CodeFile="BloodFacts.aspx.vb" Inherits="BloodFacts" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper">
  <div id="header">
    <h1> <span> </span>Online BloodBank  </h1>
  </div>
  <div id="content">
  <div id="leftcolumn">
    <div class="box">
      <h3>Contents </h3>
 <ul>
					<li><a href="Camps.aspx"> Show Camps</a></li>
					<li><a href="HospitalDisplay.aspx"> Show Hospitals</a></li>
					<li><a href="CampReg.aspx"> Add New Camp</a></li>
					<li><a href="Hospital.aspx"> Add new Hospitals</a></li>
					<li>---------------</li>
					<li><a href="Donarlogin.aspx"> Donor Login</a></li>
					<li><a href="Hospitallogin.aspx"> Hospital Login</a></li>
					</ul>
    </div>
	<p>
        </p>
      <div class="box">
          <h3>
              Blood Facts
          </h3>
          <ul>
					<li><a href="AboutBloodDonate.aspx"> About Blood Donate</a></li>
					<li><a href="Eligible.aspx"> Eligible to Blood Donation</a></li>
					<li><a href="WhoCanDonate.aspx"> Who Can/Can't Blood Donate</a></li>
					<li><a href="BloodFacts.aspx"> Blood facts</a></li>
					<li><a href="Donorsafety.aspx"> Donor Safety</a></li>
					<li><a href="whenisbloodneed.aspx"> When is Blood Need</a></li>
					<li><a href="who need.aspx"> Who need</a></li>
					<li><a href="whydonate.aspx"> Why Donate</a></li>
				</ul>
          <p>
         
          </p>
      </div>
  </div>
  <div id="rightcolumn">
  <div class="nav"><a href="Home.aspx">Home</a> - 
  <a href="about.aspx">About</a> - 
  <a href="Donarreg.aspx">Registration</a> -
  <a href="Search.aspx">BloodSearch</a> - 
  <a href="feedbackDisplay.aspx">Feedback</a> - 
  <a href="Contact.aspx">Contact</a>&nbsp;</div>
      <br />
      <strong><span style="font-size: 14pt">Blood facts<br />
      </span>
          <br />
          &nbsp; . </strong>Blood is the life-maintaining fluid that circulates through
      the body's heart, arteries, veins and capillaries.
      <br />
      <br />
      &nbsp;&nbsp;. Blood carries to the body nourishment, electrolytes, hormones, vitamins,
      antibodies, heat, and oxygen.
      <br />
      <br />
      &nbsp;&nbsp;. Blood carries away from the body waste matter and carbon dioxide. Blood
      fights against infection and helps heal wounds, keeping you healthy.
      <br />
      <br />
      &nbsp;&nbsp;. Blood makes up about 7% of your body's weight.
      <br />
      <br />
      &nbsp;&nbsp;. A newborn baby has about one cup of blood in his or her body.
      <br />
      <br />
      &nbsp;&nbsp;. White blood cells are the body's primary defence against infection.
      <br />
      <br />
      &nbsp;&nbsp;. Granulocytes, a type of white blood cell, roll along blood vessel walls
      to search and destroy bacteria.
      <br />
      <br />
      &nbsp;&nbsp;. Red blood cells carry oxygen to the body's organs and tissues.
      <br />
      <br />
      &nbsp;&nbsp;. There are about one billion red blood cells in two to three drops of
      blood.
      <br />
      <br />
      &nbsp;&nbsp;. Red blood cells live about 120 days in the circulatory system.
      <br />
      <br />
      &nbsp;&nbsp;. Blood platelets help clotting and give those with leukemia and other
      cancers a chance to live.&nbsp;<br />
      <br />
      <span style="font-size: 14pt; color: #009999">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; <span style="color: #990000">
          
          To Register, Click here</span></span>
      <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Larger"
          ForeColor="MediumBlue" PostBackUrl="~/Donarreg.aspx">SignUp</asp:LinkButton></div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by Online BloodBank .</div>
</div></form>
</body>
</html>
