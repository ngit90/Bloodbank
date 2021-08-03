<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feedback.aspx.vb" Inherits="feedback" %>

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
     <br /> <table>
         <tr>
             <td align="center" colspan="2" style="height: 42px">
                  <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="FEEDBACK" Width="168px"></asp:Label></td>
             <td style="width: 164px; height: 42px">
             </td>
         </tr>
         <tr>
             <td colspan="3" style="height: 42px">
                 <asp:Label ID="lblmsg" runat="server" Font-Bold="False" Font-Size="Medium" ForeColor="Red"></asp:Label></td>
         </tr>
          <tr>
              <td style="width: 112px; height: 42px">
                  <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>&nbsp;
              </td>
              <td style="width: 141px; height: 42px">
                  <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
              <td style="width: 164px; height: 42px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                      ErrorMessage="Enter Name"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 112px; height: 43px">
                  <asp:Label ID="Label2" runat="server" Text="Address"></asp:Label></td>
              <td style="width: 141px; height: 43px">
                  <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
              <td style="width: 164px; height: 43px">
                  </td>
          </tr>
          <tr>
              <td style="width: 112px; height: 43px">
                  <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label></td>
              <td style="width: 141px; height: 43px">
                  <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox></td>
              <td style="width: 164px; height: 43px">
              </td>
          </tr>
          <tr>
              <td style="width: 112px; height: 43px">
                  <asp:Label ID="Label5" runat="server" Text="E-Mail"></asp:Label></td>
              <td style="width: 141px; height: 43px">
                  <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></td>
              <td style="width: 164px; height: 43px">
              </td>
          </tr>
          <tr>
              <td style="width: 112px; height: 43px">
                  <asp:Label ID="Label6" runat="server" Text="Comments"></asp:Label></td>
              <td style="width: 141px; height: 43px">
                  <asp:TextBox ID="txtComments" runat="server" Height="64px" TextMode="MultiLine"></asp:TextBox></td>
              <td style="width: 164px; height: 43px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComments"
                      ErrorMessage="Enter Comments"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 112px; height: 39px">
                  &nbsp;</td>
              <td style="width: 141px; height: 39px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 100px">
                  <asp:Button ID="txtSubmit" runat="server" Text="Submit" Width="135px" /></td>
                          <td style="width: 100px">
                  </td>
                      </tr>
                  </table>
              </td>
              <td style="width: 164px; height: 39px">
                  </td>
          </tr>
      </table>
	
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by Online BloodBank .</div>
</div></form>
</body>
</html>
