<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CampReg.aspx.vb" Inherits="CampReg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style3
        {
            width: 126px;
            height: 22px;
        }
        .style4
        {
            width: 126px;
        }
        .style6
        {
            height: 29px;
            width: 126px;
        }
        .style7
        {
            height: 26px;
            width: 126px;
        }
        .style8
        {
            width: 267px;
        }
        .style11
        {
            height: 29px;
            width: 267px;
        }
        .style12
        {
            height: 26px;
            width: 267px;
        }
        .style13
        {
            width: 267px;
            height: 22px;
        }
        .style15
        {
            height: 38px;
            width: 267px;
        }
        .style16
        {
            height: 38px;
            width: 126px;
        }
        .style17
        {
            width: 102px;
        }
        .style18
        {
            height: 38px;
            width: 102px;
        }
        .style19
        {
            width: 102px;
            height: 22px;
        }
        .style20
        {
            height: 29px;
            width: 102px;
        }
        .style21
        {
            height: 26px;
            width: 102px;
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
      <span style="font-family: Verdana"></span>
      <table id="TABLE1" style="width: 488px; height: 328px">
          <tr>
              <td colspan="3" style="height: 27px">
                  <strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                      &nbsp; &nbsp; &nbsp; &nbsp;<span style="font-size: 16pt"> Camp Registration</span></strong></td>
          </tr>
          <tr>
              <td colspan="3">
                  <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Red"></asp:Label></td>
          </tr>
          <tr>
              <td class="style17">
                  <strong>Camp for<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="*"></asp:Label></strong></td>
              <td style="color: #797272" class="style8">
                  <asp:DropDownList ID="ddlcampfor" runat="server" Font-Bold="True" Width="160px">
                      <asp:ListItem>Select</asp:ListItem>
                      <asp:ListItem>Blood testing</asp:ListItem>
                      <asp:ListItem>Blood donating</asp:ListItem>
                  </asp:DropDownList></td>
              <td class="style4">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style17">
                  <strong>Place<asp:Label ID="Label2" runat="server" ForeColor="Red" Text="*"></asp:Label></strong></td>
              <td class="style8">
                  <asp:TextBox ID="txtplace" runat="server" MaxLength="20"></asp:TextBox></td>
              <td class="style4">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                      ControlToValidate="txtplace" ErrorMessage="Enter place"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style18">
                  <strong>Date<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="*"></asp:Label></strong></td>
              <td class="style15">
                  <asp:DropDownList ID="ddlday" runat="server" Height="26px" Width="79px">
                      <asp:ListItem>--Select--</asp:ListItem>
                  </asp:DropDownList>
                  <asp:DropDownList ID="ddlmonth" runat="server" Height="26px" Width="79px" 
                      style="margin-left: 2px">
                      <asp:ListItem>--Select--</asp:ListItem>
                  </asp:DropDownList>
                  <asp:DropDownList ID="ddlyear" runat="server" Height="26px" Width="79px" 
                      style="margin-left: 2px">
                      <asp:ListItem>--Select--</asp:ListItem>
                  </asp:DropDownList>
              </td>
              <td class="style16">
                  </td>
          </tr>
          <tr>
              <td class="style19">
                  <strong>Time<asp:Label ID="Label4" runat="server" ForeColor="Red" Text="*"></asp:Label></strong></td>
              <td class="style13">
                  <asp:TextBox ID="txttime" runat="server" MaxLength="20"></asp:TextBox></td>
              <td class="style3">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                      ControlToValidate="txttime" ErrorMessage="Enter time"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style17">
                  <strong>Organisation</strong></td>
              <td class="style8">
                  <asp:TextBox ID="txtorganisation" runat="server" MaxLength="30"></asp:TextBox></td>
              <td class="style4">
                  &nbsp;</td>
          </tr>
          <tr>
              <td class="style20">
                  <strong>Email</strong></td>
              <td class="style11">
                  <asp:TextBox ID="txtemail" runat="server" MaxLength="40"></asp:TextBox></td>
              <td class="style6">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate = "txtemail" 
                      ErrorMessage="Enter Valid Email id" validationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td class="style17">
                  <strong>Contact</strong> <strong>Person<asp:Label ID="Label5" runat="server" ForeColor="Red"
                      Text="*"></asp:Label></strong></td>
              <td class="style8">
                  <asp:TextBox ID="txtcontactperson" runat="server" MaxLength="30"></asp:TextBox></td>
              <td class="style4">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                      ControlToValidate="txtcontactperson" ErrorMessage="Enter name"></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style21">
                  <strong>Phone<asp:Label ID="Label6" runat="server" ForeColor="Red" Text="*"></asp:Label></strong></td>
              <td class="style12">
                  <asp:TextBox ID="txtphone" runat="server" MaxLength="20"></asp:TextBox>
                  
                        </td>
              <td class="style7">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                      ControlToValidate="txtphone" ErrorMessage="Enter phone no."></asp:RequiredFieldValidator>
              </td>
          </tr>
          <tr>
              <td class="style18">
              </td>
              <td class="style15">
                  <table style="width: 152px">
                      <tr>
                          <td style="width: 50px; height: 26px;">
                              <asp:Button ID="btnsubmit" runat="server" Font-Bold="True" Text="Submit" Width="80px" /></td>
                          <td style="width: 100px; height: 26px;">
                              <asp:Button ID="btncancel" runat="server" CausesValidation="False" Font-Bold="True"
                                  Text="Cancel" Width="80px" /></td>
                      </tr>
                  </table>
              </td>
              <td class="style16">
              </td>
          </tr>
      </table>
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by Online BloodBank.</div>
</div></form>
</body>
</html>
