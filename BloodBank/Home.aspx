<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper" style="height: 878px">
  <div id="header">
    <h1> Online Blood Bank
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
					<li><a href="admlogin.aspx"> Admin Login</a></li>
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
      <span style="font-size: 12pt">
           <strong><span style="font-size: 12pt">
         <br /><strong><span style="color: #000099"><span style="font-size: 16pt"><span style="color: #990000">
          <marquee>Welcome&nbsp;To
Online&nbsp;BloodBank</marquee></span><br />
      </span>
      <asp:Image ID="Image1" runat="server" Height="128px" 
          ImageUrl="~/images/header_blood.jpg" Width="494px" />
      </span></strong>
          <br />
          &nbsp;&nbsp; &nbsp; &nbsp;</span></strong><span style="font-size: 11pt; color: #003333; font-family: Arial"><strong>A newborn baby has about one cup of blood in his or her body. White blood cells are
              the body's primary defence against infection. Granulocytes, a type of white blood
              cell, roll along blood vessel walls to search and destroy bacteria. Red blood cells
              carry oxygen to the body's organs and tissues. There are about one billion red blood
              cells in two to three drops of blood. Red blood cells live about 120 days in the
              circulatory system. Blood platelets help clotting and give those with leukemia and other cancers a chance to live.<br />
                  </strong><span style="font-size: 9pt"><span style="color: #9e2e2e; font-family: Trebuchet MS">
                      Blood is needed every minute
                      <br />
                  </span><span style="color: #9e2e2e; font-family: Trebuchet MS">&nbsp;&nbsp; To replace
                      blood lost because of accidents or diseases.
                      <br />
                      &nbsp;&nbsp; To treat shock due to injury.
                      <br />
                      &nbsp;&nbsp; For Major &amp; Minor surgeries including open heart surgeries, transplants
                      etc.
                      <br />
                      &nbsp;&nbsp; For burn victims. For patients suffering from Anemia.
                      <br />
                      &nbsp;&nbsp; During child birth for the mother.
                      <br />
                      &nbsp;&nbsp; For exchange transfusion for new born infants.
                      <br />
                      &nbsp;&nbsp; To make blood derivatives which are used to treat medical problems.
                      For children suffering from ailments like Thalassaemia, Hemophilia (bleeding disorders)
                      , Leukemia, Blood Cancer.&nbsp;</span></span></span><p style="text-align: justify">
                  <span style="font-size: 10pt; color: #003333; font-family: Arial">
                  <span style="font-size: 13pt;
                      color: #1c6177; font-family: Trebuchet MS"><strong>Are you ready to save a life?</strong><asp:LinkButton
                          ID="LinkButton1" runat="server" PostBackUrl="~/DonarReg.aspx">Click Here</asp:LinkButton></span></span></p>
      </span>
	
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by Online BloodBank .</div>
</div></form>
</body>
</html>
