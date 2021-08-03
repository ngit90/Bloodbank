<%@ Page Language="VB" AutoEventWireup="false" CodeFile="userChangePassword.aspx.vb" Inherits="userChangePassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper">
  <div id="header">
    <h1> <span> </span>Online BloodBank </h1>
  </div>
  <div id="content">
  <div id="leftcolumn">
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
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
      </div><br />
  </div>
  <div id="rightcolumn">
  <div class="nav">
      <asp:LinkButton ID="linkSignOut" runat="server" CausesValidation="False">Sign Out</asp:LinkButton><a href="revcdisplay.aspx"></a></div>
      <br /><table style="width: 512px; height: 152px">
          <tr>
              <td align="center" colspan="2" style="height: 36px">
                  <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Change Password" Width="184px"></asp:Label></td>
              <td style="width: 100px; height: 36px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px; height: 36px">
                  <asp:Label ID="Label2" runat="server" Text="User name :"></asp:Label>
              </td>
              <td style="width: 100px; height: 36px">
                  <asp:TextBox ID="txtusername" runat="server" Width="152px" Enabled="False"></asp:TextBox></td>
              <td style="width: 100px; height: 36px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername"
                      ErrorMessage="Enter the user name" Width="128px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px; height: 23px">
                  <asp:Label ID="Label5" runat="server" Text="Old Password :"></asp:Label></td>
              <td style="width: 100px; height: 23px">
                  <asp:TextBox ID="txtold" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
              <td style="width: 100px; height: 23px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:Label ID="Label3" runat="server" Text="New Password :"></asp:Label></td>
              <td style="width: 100px">
                  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
              </td>
              <td style="width: 100px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                      ErrorMessage="Enter the password" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:Label ID="Label4" runat="server" Height="24px" Text="Confirm password :" Width="128px"></asp:Label></td>
              <td style="width: 100px">
                  <asp:TextBox ID="txtconformpassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
              <td style="width: 100px">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                      ControlToValidate="txtconformpassword" ErrorMessage="Password mismatch" Width="128px"></asp:CompareValidator></td>
          </tr>
          <tr>
              <td style="width: 100px; height: 26px">
              </td>
              <td style="width: 100px; height: 26px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 100px; height: 26px">
                              <asp:Button ID="btnlogin" runat="server" Text="Submit" Width="64px" /></td>
                          <td style="width: 100px; height: 26px">
                              <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="56px" CausesValidation="False" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 100px; height: 26px">
              </td>
          </tr>
          <tr>
              <td colspan="3" style="height: 26px">
                  <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
          </tr>
      </table>
	
  </div>
  <div class="clear">
      <br />
      &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
  </div>
  </div>
  <div id="footer">
      Powered by Online BloodBank.</div>
</div></form>
</body>
</html>
