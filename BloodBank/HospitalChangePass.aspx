<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HospitalChangePass.aspx.vb" Inherits="HospitalChangePass" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            height: 29px;
            width: 18px;
        }
        .style2
        {
            height: 30px;
            width: 18px;
        }
        .style3
        {
            height: 24px;
            width: 18px;
        }
        .style4
        {
            height: 55px;
            width: 18px;
        }
    </style>
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
         
          </p>
      </div><br />
  </div>
  <div id="rightcolumn">
  <div class="nav">
    <asp:LinkButton ID="linkSignOut" runat="server" CausesValidation="False">Sign Out</asp:LinkButton></div>
    <br />  <table style="width: 448px; height: 246px">
          <tr>
              <td align="center" colspan="2" style="height: 29px">
                  <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Hospital Details"
                      Width="240px"></asp:Label></td>
              <td style="width: 71px; height: 29px">
              </td>
          </tr>
          <tr>
              <td style="width: 114px; height: 29px">
                  User Name</td>
              <td class="style1">
                  <asp:TextBox ID="txtUser" runat="server"></asp:TextBox></td>
              <td style="width: 71px; height: 29px">
                  </td>
          </tr>
          <tr>
              <td style="width: 114px; height: 30px;">
                  Old Password</td>
              <td class="style2">
                  <asp:TextBox ID="txtOld" runat="server" TextMode="Password"></asp:TextBox></td>
              <td style="width: 71px; height: 30px;">
                  </td>
          </tr>
          <tr>
              <td style="width: 114px; height: 24px">
                  New Password</td>
              <td class="style3">
                  <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox></td>
              <td style="width: 71px; height: 24px">
                  </td>
          </tr>
        <tr>
            <td style="width: 114px; height: 24px">
                Confirm Password</td>
            <td class="style3">
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox></td>
            <td style="width: 71px; height: 24px">
            </td>
        </tr>
          <tr>
              <td style="width: 114px; height: 55px;">
              </td>
              <td class="style4">
                  <table>
                      <tr>
                          <td style="width: 188px; height: 27px;">
                  <asp:Button ID="btnupdate" runat="server" Text="Submit" CausesValidation="False" 
                                  Width="136px" />&nbsp;
                          </td>
                          <td style="width: 3200px; height: 27px;">
                  </td>
                      </tr>
                  </table>
              </td>
              <td style="width: 71px; height: 55px;">
                  </td>
          </tr>
        <tr>
            <td colspan="3" style="height: 21px">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
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
