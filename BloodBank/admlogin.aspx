<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admlogin.aspx.vb" Inherits="admlogin" %>

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
  <div id="leftcolumn" style="height: 260px">
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
	   <table style="width: 512px; height: 152px">
          <tr>
              <td colspan="3" style="height: 20px">
                  &nbsp;</td>
          </tr>
         <tr>
             <td align="center" colspan="2" style="height: 36px">
                 <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Admin Login" Width="168px"></asp:Label></td>
             <td style="width: 100px; height: 36px">
             </td>
         </tr>
          <tr>
              <td style="width: 100px; height: 36px">
                  <asp:Label ID="Label2" runat="server" Text="User name :"></asp:Label>
              </td>
              <td style="width: 100px; height: 36px">
                  <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
              <td style="width: 100px; height: 36px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                      ErrorMessage="Enter the user name" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label></td>
              <td style="width: 100px">
                  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
              </td>
              <td style="width: 100px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                      ErrorMessage="Enter the password" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px">
                  </td>
              <td style="width: 100px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 56px">
                  <asp:Button ID="btnlogin" runat="server" Text="Login" Width="56px" /></td>
                          <td style="width: 100px">
                  <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="64px" CausesValidation="False" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 100px">
              </td>
          </tr>
           <tr>
               <td colspan="3" style="height: 24px">
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
