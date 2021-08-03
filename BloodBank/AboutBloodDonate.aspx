<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AboutBloodDonate.aspx.vb" Inherits="AboutBloodDonate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            font-size: medium;
        }
    </style>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper">
  <div id="header">
    <h1> <span> </span>Online Blood Bank
    </h1>
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
      <span style="font-family: Verdana"><strong>About Blood Donate</strong></span>&nbsp;<br />
      <br />
      &nbsp;&nbsp; <strong><span class="style1">D</span></strong><span class="style1">onating blood
      is safe and simple. It takes approximately 10-15 minutes to complete the blood donation
      process. Any healthy adult between 18 years and 60 years of age can donate blood.
      This is what you can expect when you are ready to donate blood:
      <br />
      You walk into a reputed and safe blood donation centre or a mobile camp organised
      by a reputed institution. A few questions will be asked to determine your health
      status (general questions on health, donation history etc).
      <br />
      Usually you will be asked to fill out a short form. Then a quick physical check
      will be done to check temperature, blood pressure, pulse and haemoglobin content
      in blood to ensure you are a healthy donor. If found fit to donate, then you will
      be asked to lie down on a resting chair or a bed. Your arm will be thoroughly cleaned.
      <br />
      Then using sterile equipments blood will be collected in a special plastic bag.
      Approximately 350 ml of blood will be collected in one donation. Those who weigh
      more than 60 Kg can donate 450 ml of blood. Then you must rest and relax for a few
      minutes with a light snack and something refreshing to drink.
      <br />
      Some snacks and juice will be provided. Blood will be separated into components
      within eight hours of donation The blood will then be taken to the laboratory for
      testing.
      <br />
      Once found safe, it will be kept in special storage and released when required.
      The blood is now ready to be taken to the hospital, to save lives.</span><br />
      <br />
      <span style="font-size: 14pt; color: #009999">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span style="color: #990000">To Register, Click here</span></span>
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
