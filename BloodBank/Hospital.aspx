<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Hospital.aspx.vb" Inherits="Hospital" %>

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
        }
        .style2
        {
            width: 18px;
        }
        .style3
        {
            width: 71px;
        }
        .style4
        {
            width: 73px;
            height: 27px;
        }
        .style5
        {
            width: 18px;
            height: 27px;
        }
        .style6
        {
            width: 71px;
            height: 27px;
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
      </div><br />
      
  </div>
  <div id="rightcolumn">
  <div class="nav"><a href="Home.aspx">Home</a> - 
  <a href="about.aspx">About</a> - 
  <a href="Donarreg.aspx">Registration</a> -
  <a href="Search.aspx">BloodSearch</a> - 
  <a href="feedbackDisplay.aspx">Feedback</a> - 
  <a href="Contact.aspx">Contact</a>&nbsp;</div>
      <table style="width: 448px; height: 544px">
          <tr>
              <td align="center" colspan="2" style="height: 29px">
                  <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Hospital Registration"
                      Width="240px"></asp:Label></td>
              <td style="width: 71px; height: 29px">
              </td>
          </tr>
        <tr>
            <td colspan="3" style="height: 29px">
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label></td>
        </tr>
          <tr>
              <td style="width: 73px; height: 29px">
                  <asp:Label ID="Label13" runat="server" Text="User ID:"></asp:Label>
              </td>
              <td style="width: 18px; height: 29px">
                  <asp:TextBox ID="txtuserid" runat="server" Width="165px" ></asp:TextBox>
              </td>
              <td style="width: 71px; height: 29px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtuserid"
                      ErrorMessage="Enter the user id" Width="107px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 29px">
                  <asp:Label ID="Label11" runat="server" Text="Password:"></asp:Label></td>
              <td style="width: 18px; height: 29px">
                  <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px; height: 29px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtpassword"
                      ErrorMessage="Enter the password" Width="152px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 27px">
                  <asp:Label ID="Label12" runat="server" Text="Conform Password:" Width="136px"></asp:Label></td>
              <td style="width: 18px; height: 27px">
                  <asp:TextBox ID="txtconformpassword" runat="server" TextMode="Password" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px; height: 27px">
                  <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                      ControlToValidate="txtconformpassword" ErrorMessage="password missmatch" Width="128px"></asp:CompareValidator></td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label2" runat="server" Text="Hospital Name:" Width="104px"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txthospitalname" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txthospitalname"
                      ErrorMessage="Enter the hospital name" Width="160px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 24px">
                  <asp:Label ID="Label3" runat="server" Text="Location:"></asp:Label></td>
              <td style="width: 18px; height: 24px">
                  <asp:TextBox ID="txtlocation" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px; height: 24px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtlocation"
                      ErrorMessage="Enter the location" Width="136px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px; height: 26px">
                  <asp:Label ID="Label4" runat="server" Text="District:"></asp:Label></td>
              <td style="width: 18px; height: 26px">
                  <asp:TextBox ID="txtdistrict" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px; height: 26px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtdistrict"
                      ErrorMessage="Enter the district" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label5" runat="server" Text="State:"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtstate" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtstate"
                      ErrorMessage="Enter the state" Width="120px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td class="style1">
                  <asp:Label ID="Label6" runat="server" Text="Blood Bank Phno:" Width="112px"></asp:Label></td>
              <td class="style2">
                  <asp:TextBox ID="txtbloodbankphno" runat="server" Width="165px" ></asp:TextBox></td>
              <td class="style3">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtbloodbankphno"  
                      ErrorMessage="Enter valid 10 digit MobNo." ValidationExpression= "[0-9]{10}" Width="150px" ></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td style="width: 73px; height: 27px">
                  <asp:Label ID="Label7" runat="server" Text="Co-ordinator:" Width="96px"></asp:Label></td>
              <td style="width: 18px; height: 27px">
                  <asp:TextBox ID="txtcoordinator" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px; height: 27px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcoordinator"
                      ErrorMessage="Enter the co-ordinator" Width="144px" Height="17px"></asp:RequiredFieldValidator></td>
          </tr>
          <tr>
              <td class="style4">
                  <asp:Label ID="txt" runat="server" Text="Co-ordinator Phno:" Width="128px"></asp:Label></td>
              <td class="style5">
                  <asp:TextBox ID="txtcoordinatorphno" runat="server" Width="165px"></asp:TextBox></td>
              <td class="style6">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcoordinatorphno"  
                      ErrorMessage="Enter valid 10 digit MobNo." ValidationExpression= "[0-9]{10}" Width="150px" ></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label10" runat="server" Text="Hospital Website:" Width="128px"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txthospitalwebsite" runat="server" Width="165px"></asp:TextBox></td>
              <td style="width: 71px">
                  &nbsp;</td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:Label ID="Label14" runat="server" Text="E-Mail Id:"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtemailid" runat="server" Width="165px" ></asp:TextBox></td>
              <td style="width: 71px">
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemailid" 
                      ErrorMessage="Enter valid Email ID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Width="160px" ></asp:RegularExpressionValidator>
              </td>
          </tr>
          <tr>
              <td style="width: 73px">
                  &nbsp;<asp:Label ID="Label9" runat="server" Text="Facilities:"></asp:Label></td>
              <td style="width: 18px">
                  <asp:TextBox ID="txtfacilities" runat="server" Height="56px" TextMode="MultiLine"></asp:TextBox></td>
              <td style="width: 71px">
              </td>
          </tr>
          <tr>
              <td style="width: 73px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtbloodbankphno" 
                      ErrorMessage="Enter Bloodbank Phno" Width="130px" ></asp:RequiredFieldValidator>
              </td>
              <td style="width: 18px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 47px">
                  <asp:Button ID="btnaccept" runat="server" Text="Accept" Width="106px" /></td>
                          <td style="width: 100px">
                  <asp:Button ID="btnClear" runat="server" Text="Cancel" CausesValidation="False" /></td>
                      </tr>
                  </table>
              </td>
              <td style="width: 71px">
                  </td>
          </tr>
          <tr>
              <td style="width: 73px; height: 27px">
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="txtemailid"  
                      ErrorMessage="Enter Email ID" Width="130px" ></asp:RequiredFieldValidator>
              </td>
              <td style="width: 18px; height: 27px">
                  &nbsp;
              </td>
              <td style="width: 71px; height: 27px">
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
