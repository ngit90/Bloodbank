<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Donarreg.aspx.vb" Inherits="Donarreg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style2
        {
            width: 85px;
            height: 10px;
        }
        .style3
        {
            width: 122px;
            height: 10px;
        }
        .style5
        {
            width: 85px;
            height: 3px;
        }
        .style6
        {
            width: 122px;
            height: 3px;
        }
        .style7
        {
            height: 30px;
            width: 85px;
        }
        .style9
        {
            height: 32px;
            width: 85px;
        }
        .style10
        {
            width: 85px;
        }
        .style11
        {
            width: 122px;
        }
        .style12
        {
            height: 800px;
        }
        #Form1
        {
            height: 844px;
        }
        .style13
        {
            font-size: large;
        }
        .style14
        {
            font-size: x-large;
        }
    </style>
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
    <table style="width: 496px; height: 695px">
          <tr>
              <td colspan="2" valign="top" class="style12">
                  <table style="width: 424px">
                      <tr>
                          <td colspan="3">
                              <strong><span class="style13">&nbsp;&nbsp;&nbsp; </span><span class="style14">
                              DONOR REGISTRATION</span></strong><br />
                              <br />
                              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>&nbsp;&nbsp;
                              &nbsp;&nbsp;&nbsp;
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphno"
                                  ErrorMessage="Enter the ph no"></asp:RequiredFieldValidator>
                                    </td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                          <td style="width: 122px; height: 26px">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                  ErrorMessage="Enter the name"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style5">
                              <asp:Label ID="Label14" runat="server" Text="User Name :"></asp:Label></td>
                          <td class="style5">
                              <asp:TextBox ID="txtusername" runat="server"></asp:TextBox></td>
                          <td class="style6">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtusername"
                                  ErrorMessage="Enter user name"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label15" runat="server" Text="Password :"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                          <td style="width: 122px; height: 26px">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpassword"
                                  ErrorMessage="Enter password"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label18" runat="server" Text="Conform Password" Width="107px"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtconformpassword" runat="server" TextMode="Password"></asp:TextBox></td>
                          <td style="width: 122px; height: 26px">
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpassword"
                                  ControlToValidate="txtconformpassword" ErrorMessage="password mismatch"></asp:CompareValidator></td>
                      </tr>
                      <tr>
                          <td class="style2">
                              <asp:Label ID="Label19" runat="server" Text="Date Of Birth :"></asp:Label></td>
                          <td class="style2">
                              <table>
                                  <tr>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddldate" runat="server">
                                          </asp:DropDownList></td>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddlmonth" runat="server">
                                              <asp:ListItem Selected="True">MM</asp:ListItem>
                                              <asp:ListItem>Jan</asp:ListItem>
                                              <asp:ListItem>Feb</asp:ListItem>
                                              <asp:ListItem>Mar</asp:ListItem>
                                              <asp:ListItem>Apr</asp:ListItem>
                                              <asp:ListItem>May</asp:ListItem>
                                              <asp:ListItem>June</asp:ListItem>
                                              <asp:ListItem>July</asp:ListItem>
                                              <asp:ListItem>Aug</asp:ListItem>
                                              <asp:ListItem>Sept</asp:ListItem>
                                              <asp:ListItem>Oct</asp:ListItem>
                                              <asp:ListItem>Nov</asp:ListItem>
                                              <asp:ListItem>Dec</asp:ListItem>
                                          </asp:DropDownList></td>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddlyear" runat="server">
                                          </asp:DropDownList></td>
                                  </tr>
                              </table>
                          </td>
                          <td class="style3">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="ddldate"
                                  ErrorMessage="Select Day, " InitialValue="DD"></asp:RequiredFieldValidator><asp:RequiredFieldValidator
                                      ID="RequiredFieldValidator14" runat="server" 
                                  ControlToValidate="ddlmonth" ErrorMessage="   Month , "
                                      InitialValue="MM"></asp:RequiredFieldValidator><asp:RequiredFieldValidator ID="RequiredFieldValidator15"
                                          runat="server" ControlToValidate="ddlyear" ErrorMessage="Year" InitialValue="YYYY"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label3" runat="server" Text="Gender :"></asp:Label></td>
                          <td class="style10">
                              <asp:RadioButtonList ID="rdbgender" runat="server" RepeatDirection="Horizontal">
                                  <asp:ListItem Selected="True">Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                              </asp:RadioButtonList></td>
                          <td class="style11">
                          </td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label4" runat="server" Text="Blood Group :"></asp:Label></td>
                          <td class="style10">
                              <asp:DropDownList ID="ddlbloodgroup" runat="server">
                                  <asp:ListItem Selected="True">Select</asp:ListItem>
                                  <asp:ListItem>A +ve</asp:ListItem>
                                  <asp:ListItem>A -ve</asp:ListItem>
                                  <asp:ListItem>B +ve</asp:ListItem>
                                  <asp:ListItem>B -ve</asp:ListItem>
                                  <asp:ListItem>AB +ve</asp:ListItem>
                                  <asp:ListItem>AB -ve</asp:ListItem>
                                  <asp:ListItem>O +ve</asp:ListItem>
                                  <asp:ListItem>O -ve</asp:ListItem>
                              </asp:DropDownList></td>
                          <td class="style11">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="ddlbloodgroup" 
                                  ErrorMessage="Enter Bloodgroup" InitialValue="Select" ></asp:RequiredFieldValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label5" runat="server" Text="Age :"></asp:Label></td>
                          <td class="style10">
                              <asp:DropDownList ID="ddlage" runat="server">
                                  <asp:ListItem Selected="True">Select</asp:ListItem>
                                  <asp:ListItem>17</asp:ListItem>
                                  <asp:ListItem>18</asp:ListItem>
                                  <asp:ListItem>19</asp:ListItem>
                                  <asp:ListItem>20</asp:ListItem>
                                  <asp:ListItem>21</asp:ListItem>
                                  <asp:ListItem>22</asp:ListItem>
                                  <asp:ListItem>23</asp:ListItem>
                                  <asp:ListItem>24</asp:ListItem>
                                  <asp:ListItem>25</asp:ListItem>
                              </asp:DropDownList></td>
                          <td class="style11">
                          </td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label6" runat="server" Text="Weight :"></asp:Label></td>
                          <td class="style10">
                              <asp:DropDownList ID="ddlweight" runat="server">
                                  <asp:ListItem Selected="True">Select</asp:ListItem>
                                  <asp:ListItem>30 - 35</asp:ListItem>
                                  <asp:ListItem>36 - 40</asp:ListItem>
                                  <asp:ListItem>41 - 45</asp:ListItem>
                                  <asp:ListItem>46 - 50 </asp:ListItem>
                                  <asp:ListItem>51 - 55</asp:ListItem>
                                  <asp:ListItem>56 - 60</asp:ListItem>
                                  <asp:ListItem>61 - 65</asp:ListItem>
                                  <asp:ListItem>66 - 70</asp:ListItem>
                                  <asp:ListItem>71 - 75</asp:ListItem>
                                  <asp:ListItem>76 - 80</asp:ListItem>
                              </asp:DropDownList></td>
                          <td class="style11">
                          </td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label7" runat="server" Text="Address :"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtaddress" runat="server" Height="56px" TextMode="MultiLine"></asp:TextBox></td>
                          <td style="width: 122px; height: 43px">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress"
                                  ErrorMessage="Enter the address" Width="112px"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label8" runat="server" Text="Ph no :"></asp:Label></td>
                          <td class="style10">
                              <asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
                          <td class="style11">
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtphno"  
                                  ErrorMessage="Enter 10 digit no." ValidationExpression = "[0-9]{10}"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label9" runat="server" Text="Mob no :"></asp:Label></td>
                          <td class="style10">
                              <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox></td>
                          <td class="style11">
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobno"  
                                  ErrorMessage="Enter 10 digit no." ValidationExpression = "[0-9]{10}"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label13" runat="server" Text="E-mail id :"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox></td>
                          <td style="width: 122px; height: 29px">
                              <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtemailid"  
                                  ErrorMessage="Enter valid emailid" ValidationExpression = "\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                          </td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label16" runat="server" Text="Location :"></asp:Label></td>
                          <td class="style10">
                              <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
                          <td class="style11">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlocation"
                                  ErrorMessage="Enter the location" Width="110px"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label10" runat="server" Text="District :"></asp:Label></td>
                          <td class="style10">
                              <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox></td>
                          <td class="style11">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdistrict"
                                  ErrorMessage="Enter the district"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style10">
                              <asp:Label ID="Label11" runat="server" Text="State :"></asp:Label></td>
                          <td class="style10">
                              <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
                          <td class="style11">
                              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstate"
                                  ErrorMessage="Enter the state"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style9">
                              <asp:Label ID="Label17" runat="server" Text="Date Of  Last Donation :" Width="160px"></asp:Label></td>
                          <td style="width: 85px;
                              height: 32px;">
                              <table>
                                  <tr>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddldondate" runat="server">
                                          </asp:DropDownList></td>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddldonmonth" runat="server">
                                              <asp:ListItem Selected="True">MM</asp:ListItem>
                                              <asp:ListItem>Jan</asp:ListItem>
                                              <asp:ListItem>Feb</asp:ListItem>
                                              <asp:ListItem>Mar</asp:ListItem>
                                              <asp:ListItem>Apr</asp:ListItem>
                                              <asp:ListItem>May</asp:ListItem>
                                              <asp:ListItem>June</asp:ListItem>
                                              <asp:ListItem>July</asp:ListItem>
                                              <asp:ListItem>Aug</asp:ListItem>
                                              <asp:ListItem>Sept</asp:ListItem>
                                              <asp:ListItem>Oct</asp:ListItem>
                                              <asp:ListItem>Nov</asp:ListItem>
                                              <asp:ListItem>Dec</asp:ListItem>
                                          </asp:DropDownList></td>
                                      <td style="width: 100px; height: 24px">
                                          <asp:DropDownList ID="ddldonyear" runat="server">
                                          </asp:DropDownList></td>
                                  </tr>
                              </table>
                          </td>
                          <td style="width: 122px; height: 32px">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label12" runat="server" Text="Any Illness :"></asp:Label></td>
                          <td style="width: 85px;
                              height: 30px;">
                              <asp:TextBox ID="txtanyillness" runat="server" Height="64px" TextMode="MultiLine"
                                  Width="176px"></asp:TextBox>
                          </td>
                          <td style="width: 122px; height: 16px">
                              </td>
                      </tr>
                      <tr>
                          <td colspan="3" style="height: 30px; ">
                              &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                              <table>
                                  <tr>
                                      <td style="width: 100px">
                              <asp:Button ID="btnregister" runat="server" Text="Register" Width="112px" /></td>
                                      <td style="width: 100px">
                              <asp:Button ID="Button2" runat="server" CausesValidation="False" Text="Cancel" Width="96px" /></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          &nbsp;</td>
                                      <td style="width: 100px">
                                          &nbsp;</td>
                                  </tr>
                              </table>
                          </td>
                      </tr>
                  </table>
              </td>
          </tr>
          </table>
	
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  </div>
</form>
</body>
</html>
