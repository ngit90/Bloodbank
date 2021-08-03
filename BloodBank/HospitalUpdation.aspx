<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HospitalUpdation.aspx.vb" Inherits="HospitalUpdation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            width: 73px;
            height: 80px;
        }
        .style2
        {
            width: 18px;
            height: 80px;
        }
        .style3
        {
            width: 71px;
            height: 80px;
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
      <asp:LinkButton ID="linkPassword" runat="server" CausesValidation="False">Change Password </asp:LinkButton>&nbsp;
      <asp:LinkButton ID="linkSignOut" runat="server" CausesValidation="False">Sign Out</asp:LinkButton></div>
    <br />  <table style="width: 448px; height: 544px">
          <tr>
              <td align="center" colspan="2" style="height: 29px">
                  <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Hospital Updation"
                      Width="240px"></asp:Label></td>
              <td style="width: 71px; height: 29px">
              </td>
          </tr>
        <tr>
            <td colspan="3" style="height: 29px">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="10pt" ForeColor="Red"></asp:Label></td>
        </tr>
          <tr>
              <td style="width: 73px; height: 29px">
                  <asp:Label ID="Label13" runat="server" Text="User ID:"></asp:Label>
              </td>
              <td style="width: 18px; height: 29px">
                  <asp:TextBox ID="txtuserid" runat="server" Enabled="False"></asp:TextBox>
              </td>
              <td style="width: 71px; height: 29px">
                  </td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label2" runat="server" Text="Hospital Name:" Width="104px"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txthospitalname" runat="server"></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthospitalname"
                      ErrorMessage="Enter the hospital name" Width="160px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 24px">
                  <asp:Label ID="Label3" runat="server" Text="Location:"></asp:Label></td>
              <td style="width: 18px; height: 24px">
                  <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
              <td style="width: 71px; height: 24px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlocation"
                      ErrorMessage="Enter the location" Width="136px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 26px">
                  <asp:Label ID="Label4" runat="server" Text="District:"></asp:Label></td>
              <td style="width: 18px; height: 26px">
                  <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox></td>
              <td style="width: 71px; height: 26px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdistrict"
                      ErrorMessage="Enter the district" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label5" runat="server" Text="State:"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate"
                      ErrorMessage="Enter the state" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 26px">
                  <asp:Label ID="Label6" runat="server" Text="Blood Bank Phno:" Width="112px"></asp:Label></td>
              <td style="width: 18px; height: 26px">
                  <asp:TextBox ID="txtbloodbankphno" runat="server"></asp:TextBox></td>
              <td style="width: 71px; height: 26px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtbloodbankphno"
                      ErrorMessage="Enter the phno" Width="112px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 27px">
                  <asp:Label ID="Label7" runat="server" Text="Co-ordinator:" Width="96px"></asp:Label></td>
              <td style="width: 18px; height: 27px">
                  <asp:TextBox ID="txtcoordinator" runat="server"></asp:TextBox></td>
              <td style="width: 71px; height: 27px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcoordinator"
                      ErrorMessage="Enter the co-ordinator" Width="144px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="txt" runat="server" Text="Co-ordinator Phno:" Width="128px"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtcoordinatorphno" runat="server"></asp:TextBox></td>
              <td style="width: 71px">
              </td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label10" runat="server" Text="Hospital Website:" Width="128px"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txthospitalwebsite" runat="server"></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txthospitalwebsite"
                      ErrorMessage="Enter the hospital web site" Width="160px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label14" runat="server" Text="E-Mail Id:"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtemailid" runat="server" TextMode="MultiLine"></asp:TextBox></td>
              <td style="width: 71px">
              </td>
          </tr>
          <tr>
              <td class="style1">
                  &nbsp;<asp:Label ID="Label9" runat="server" Text="Facilities:"></asp:Label></td>
              <td class="style2">
                  <asp:TextBox ID="txtfacilities" runat="server" Height="56px" TextMode="MultiLine"></asp:TextBox></td>
              <td class="style3">
              </td>
          </tr>
          <tr>
              <td style="width: 73px; height: 17px;">
              </td>
              <td style="width: 18px; height: 17px;">
                  <table>
                      <tr>
                          <td style="width: 188px; height: 27px;">
                              &nbsp;
                          </td>
                          <td style="width: 3200px; height: 27px;">
                  <asp:Button ID="btnaccept" runat="server" Text="Update" CausesValidation="False" 
                                  Width="106px" Height="28px" style="margin-left: 0px" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 71px; height: 17px;">
                  <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="106px" 
                      Height="28px" style="margin-top: 0px" />
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
