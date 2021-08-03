<%@ Page Language="VB" AutoEventWireup="false" CodeFile="AdminChange.aspx.vb" Inherits="AdminChange" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper" style="width: 799px">
  <div id="header">
    <h1> <span> </span>Online Blood Bank</h1>
  </div>
  <div id="content" style="width: 753px">
  <div id="leftcolumn" style="width: 211px">
	<p>
        </p>
      <div class="box">
          <h3>
              Blood Facts
          </h3>
          <p>
              &nbsp;You walk into a reputed and safe blood donation centre or a mobile camp organised
              by a reputed institution. A few questions will be asked to determine your health
              status (general questions on health, donation history etc). Usually you will be
              asked to fill out a short form.&nbsp;
         
          </p>
      </div><br />
  </div>
  <div id="rightcolumn">
<div class="nav"><a href="AdminHome.aspx">Home</a> - 
  <a href="home.aspx">Sign Out</a> </div>
      <br /><table style="width: 468px; height: 108px">
          <tr>
              <td align="center" colspan="2" style="height: 36px">
                  <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Change Password" Width="184px"></asp:Label></td>
              <td style="width: 73px; height: 36px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px; height: 23px">
                  <asp:Label ID="Label2" runat="server" Text="User ID :"></asp:Label></td>
              <td style="width: 100px; height: 23px">
                  <asp:TextBox ID="txtuser" runat="server" Width="152px"></asp:TextBox></td>
              <td style="width: 73px; height: 23px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuser"
                      ErrorMessage="Enter User Name" Width="157px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px; height: 23px">
                  <asp:Label ID="Label5" runat="server" Text="Old Password :"></asp:Label></td>
              <td style="width: 100px; height: 23px">
                  <asp:TextBox ID="txtold" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
              <td style="width: 73px; height: 23px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold"
                      ErrorMessage="Enter the Old Password" Width="157px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:Label ID="Label3" runat="server" Text="New Password :"></asp:Label></td>
              <td style="width: 100px">
                  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox>
              </td>
              <td style="width: 73px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword"
                      ErrorMessage="Enter the New password" Width="152px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:Label ID="Label4" runat="server" Height="24px" Text="Confirm password :" Width="111px"></asp:Label></td>
              <td style="width: 100px">
                  <asp:TextBox ID="txtconformpassword" runat="server" TextMode="Password" Width="152px"></asp:TextBox></td>
              <td style="width: 73px">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                      ControlToValidate="txtconformpassword" ErrorMessage="Password mismatch" Width="128px"></asp:CompareValidator></td>
          </tr>
          <tr>
              <td style="width: 100px; height: 19px">
              </td>
              <td style="width: 100px; height: 19px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 100px; height: 26px">
                              <asp:Button ID="btnlogin" runat="server" Text="Submit" Width="64px" /></td>
                          <td style="width: 100px; height: 26px">
                              <asp:Button ID="btncancel" runat="server" Text="Cancel" Width="56px" CausesValidation="False" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 73px; height: 19px">
              </td>
          </tr>
          <tr>
              <td colspan="3" style="height: 26px">
                  <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
          </tr>
      </table>
	
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by BloodBank.</div>
</div></form>
</body>
</html>
