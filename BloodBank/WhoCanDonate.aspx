<%@ Page Language="VB" AutoEventWireup="false" CodeFile="WhoCanDonate.aspx.vb" Inherits="WhoCanDonate" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style2
        {
            font-size: small;
        }
    </style>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper">
  <div id="header">
    <h1> <span> </span>Online Online BloodBank&nbsp;
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
      <strong><span style="font-size: 12pt">
      <span style="font-family: Verdana">Who Can/Can't Blood Donate</span>&nbsp;<br />
      <br />
      <span style="font-family: Verdana"><strong>Do donate blood if ...</strong>
      <br />
      </span>
      <br />
      </span></strong>
          <span class="style2">
      you are between
      age group of 18-60 years. 
      <br />
      your weight is 45 kgs or more. 
      <br />
      your haemoglobin is 12.5
      gm% minimum. 
      <br />
      your last blood donation was 3 months earlier. 
      <br />
      you are healthy and
      have not suffered from malaria, typhoid or other transmissible disease in the recent
      past. 
      <br />
      There are many, many people who meet these parameters of health and fitness!
      <br />
      Do abide by our rules - be truthful about your health status! 
      <br />
      We ensure the health
      of blood, before we take it, as well as after it is collected.Firstly,
      the donor is expected to be honest about his or her health history and current condition.
      Secondly, collected blood is tested for venereal diseases, hepatitis B &amp; C and
      AIDS. 
      <br />
      You have to be healthy to give 'safe blood' 
      <br />
      <br />
      </span><span style="font-size: 12pt">
      <strong> 
      <br />
      <span style="font-family: Verdana">Do not donate blood if you have
      any of these conditions<br />
      </span>
      &nbsp;<br />
      </strong>
          </span><span class="style2">
      Malaria (within 1 year) 
      ,Hepatitis B, C * 
      ,
      Any other type
      of Jaundice (within 16 years) 
      ,
      AIDS 
      ,Tuberculosis (within 2 years) 
      ,Diabetes (are you
      under medication currently?) 
      ,
      Fits/ Convulsions (are you under medication currently?)
      ,Cancer * 
      <br />
      Leprosy or any other infectious diseases 
      ,
      Any allergies (Only if you are
      suffering from severe symptoms),Hemophilia/ Bleeding problems * 
      ,
      Kidney disease *
      ,<br />
      Heart disease * 
      ,Chicken Pox (within 1 year)&nbsp; ,Hormonal disorders * 
      ,Hemoglobin deficiency
      / Anemia (recently) 
      ,Drastic weight loss (recently) 
      ,Small Pox, Vaccination (within
      the last 3weeks) ,Blood Donation (within the last 3 months)
      ,<br />
      Blood Transfusion (within
      the last 6 months),Major Surgery (within the last 3 months),
      Pregnancy (within the
      last 6 months),
      Organ Transplant (within one year).</span><span style="font-size: 12pt"><strong><br />
      <br />
      <span style="font-size: 14pt; color: #009999">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <span style="color: #990000">
          
          To Register, Click here</span></span>
      <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="Larger"
          ForeColor="MediumBlue" PostBackUrl="~/Donarreg.aspx">SignUp</asp:LinkButton></strong>
          </span>
          </div>
  <div class="clear">
      &nbsp;</div>
  </div>
</div>
    </form>
</body>
</html>
