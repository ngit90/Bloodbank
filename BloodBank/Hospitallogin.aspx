<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Hospitallogin.aspx.vb" Inherits="Hospitallogin" %>

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
   
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </div>
	<p>
        &nbsp;</p>
  </div>
  <div id="rightcolumn">
  <div class="nav"><a href="Home.aspx">Home</a> - 
  <a href="about.aspx">About</a> - 
  <a href="Donarreg.aspx">Registration</a> -
  <a href="Search.aspx">BloodSearch</a> - 
  <a href="feedbackDisplay.aspx">Feedback</a> - 
  <a href="Contact.aspx">Contact</a>&nbsp;</div>
      &nbsp;<table style="height: 152px">
         <tr>
             <td align="center" colspan="2" style="height: 42px">
                  <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Style="left: -38px; top: 0px" Text="HOSPITAL  LOGIN"></asp:Label></td>
             <td style="width: 164px; height: 42px">
             </td>
         </tr>
          <tr>
              <td style="width: 112px; height: 5px">
                  <asp:Label ID="Label1" runat="server" Text="User Id"></asp:Label>&nbsp;
              </td>
              <td style="width: 141px; height: 5px">
                  <asp:TextBox ID="txtuserid" runat="server"></asp:TextBox></td>
              <td style="width: 164px; height: 5px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuserid"
                      ErrorMessage="Enter the user id"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 112px; height: 8px">
                  <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label></td>
              <td style="width: 141px; height: 8px">
                  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
              <td style="width: 164px; height: 8px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                      ErrorMessage="Enter the password"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 112px; height: 2px">
                  &nbsp;</td>
              <td style="width: 141px; height: 2px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 71px">
                  <asp:Button ID="btnlogin" runat="server" Text="Login" /></td>
                          <td style="width: 100px">
                  <asp:Button ID="btncancel" runat="server" Text="Cancel" CausesValidation="False" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 164px; height: 2px">
                  </td>
          </tr>
          <tr>
              <td colspan="3" style="height: 2px">
                  <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label></td>
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
