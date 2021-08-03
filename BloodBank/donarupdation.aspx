<%@ Page Language="VB" AutoEventWireup="false" CodeFile="donarupdation.aspx.vb" Inherits="donarupdation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank</title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            width: 100px;
            height: 2px;
        }
        .style2
        {
            width: 122px;
            height: 2px;
        }
        .style3
        {
            width: 100px;
        }
        .style4
        {
            width: 122px;
        }
        .style5
        {
            width: 100px;
            height: 10px;
        }
        .style6
        {
            width: 122px;
            height: 10px;
        }
        .style7
        {
            width: 100px;
            height: 5px;
        }
        .style8
        {
            width: 122px;
            height: 5px;
        }
        .style9
        {
            width: 100px;
            height: 12px;
        }
        .style10
        {
            width: 122px;
            height: 12px;
        }
        .style11
        {
            width: 100px;
            height: 3px;
        }
        .style12
        {
            width: 122px;
            height: 3px;
        }
        .style13
        {
            width: 100px;
            height: 1px;
        }
        .style14
        {
            width: 122px;
            height: 1px;
        }
        .style15
        {
            width: 100px;
            height: 15px;
        }
        .style16
        {
            width: 122px;
            height: 15px;
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
      </div>
  </div>
  <div id="rightcolumn">
  <div class="nav">
     <asp:LinkButton ID="linkPassword" runat="server" CausesValidation="False">Change Password </asp:LinkButton>&nbsp;
      &nbsp;<asp:LinkButton ID="linkSignOut" runat="server" CausesValidation="False">Sign Out</asp:LinkButton></div>
      <table style="width: 496px; height: 544px">
          <tr>
              <td colspan="2" style="height: 643px" valign="top">
                  <table style="width: 440px">
                      <tr>
                          <td align="center" colspan="2" style="height: 30px">
                              <asp:Label ID="Label1" runat="server" Font-Size="X-Large" Text="Donor Updation" Width="168px"></asp:Label></td>
                          <td style="width: 122px; height: 26px">
                          </td>
                      </tr>
                      <tr>
                          <td colspan="3" style="height: 30px">
                              <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></td>
                      </tr>
                      <tr>
                          <td class="style13">
                              <asp:Label ID="Label2" runat="server" Text="Name :"></asp:Label></td>
                          <td class="style13">
                              <asp:TextBox ID="txtname" runat="server"></asp:TextBox></td>
                          <td class="style14">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname"
                                  ErrorMessage="Enter the name"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label19" runat="server" Text="Date Of Birth :"></asp:Label></td>
                          <td class="style3">
                              <asp:TextBox ID="txtdateofbirth" runat="server" ReadOnly="True"></asp:TextBox></td>
                          <td class="style4">
                          </td>
                      </tr>
                      <tr>
                          <td class="style1">
                              <asp:Label ID="Label3" runat="server" Text="Gender :"></asp:Label></td>
                          <td class="style1">
                              <asp:RadioButtonList ID="rdbgender" runat="server" RepeatDirection="Horizontal">
                                  <asp:ListItem Selected="True">Male</asp:ListItem>
                                  <asp:ListItem>Female</asp:ListItem>
                              </asp:RadioButtonList></td>
                          <td class="style2">
                          </td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label4" runat="server" Text="Blood Group :"></asp:Label></td>
                          <td class="style3">
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
                          <td class="style4">
                          </td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label5" runat="server" Text="Age :"></asp:Label></td>
                          <td class="style3">
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
                          <td class="style4">
                          </td>
                      </tr>
                      <tr>
                          <td class="style15">
                              <asp:Label ID="Label6" runat="server" Text="Weight :"></asp:Label></td>
                          <td class="style15">
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
                          <td class="style16">
                          </td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label7" runat="server" Text="Address :"></asp:Label></td>
                          <td class="style3">
                              <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                          <td class="style4">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtaddress"
                                  ErrorMessage="Enter the address" Width="112px"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label8" runat="server" Text="Ph no :"></asp:Label></td>
                          <td class="style3">
                              <asp:TextBox ID="txtphno" runat="server"></asp:TextBox></td>
                          <td class="style4">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtphno"
                                  ErrorMessage="Enter the ph no"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style5">
                              <asp:Label ID="Label9" runat="server" Text="Mob no :"></asp:Label></td>
                          <td class="style5">
                              <asp:TextBox ID="txtmobno" runat="server"></asp:TextBox></td>
                          <td class="style6">
                          </td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label13" runat="server" Text="E-mail id :"></asp:Label></td>
                          <td class="style3">
                              <asp:TextBox ID="txtemailid" runat="server"></asp:TextBox></td>
                          <td class="style4">
                          </td>
                      </tr>
                      <tr>
                          <td class="style3">
                              <asp:Label ID="Label16" runat="server" Text="Location :"></asp:Label></td>
                          <td class="style3">
                              <asp:TextBox ID="txtlocation" runat="server"></asp:TextBox></td>
                          <td class="style4">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtlocation"
                                  ErrorMessage="Enter the location" Width="120px"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style11">
                              <asp:Label ID="Label10" runat="server" Text="District :"></asp:Label></td>
                          <td class="style11">
                              <asp:TextBox ID="txtdistrict" runat="server"></asp:TextBox></td>
                          <td class="style12">
                              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdistrict"
                                  ErrorMessage="Enter the district"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style9">
                              <asp:Label ID="Label11" runat="server" Text="State :"></asp:Label></td>
                          <td class="style9">
                              <asp:TextBox ID="txtstate" runat="server"></asp:TextBox></td>
                          <td class="style10">
                              &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtstate"
                                  ErrorMessage="Enter the state"></asp:RequiredFieldValidator></td>
                      </tr>
                      <tr>
                          <td class="style9">
                              <asp:Label ID="Label17" runat="server" Text="Date Of  Last Donation :" Width="160px"></asp:Label></td>
                          <td class="style9">
                              <asp:TextBox ID="txtdateoflastdonation" runat="server"></asp:TextBox></td>
                          <td class="style10">
                          </td>
                      </tr>
                      <tr>
                          <td class="style7">
                              <asp:Label ID="Label12" runat="server" Text="Any Illness :"></asp:Label></td>
                          <td class="style7">
                              <asp:TextBox ID="txtanyillness" runat="server" TextMode="MultiLine"></asp:TextBox>
                          </td>
                          <td class="style8">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td style="width: 100px; height: 30px">
                          </td>
                          <td style="width: 100px; height: 30px">
                              <table>
                                  <tr>
                                      <td style="width: 100px">
                                          <asp:Button ID="btnupdate" runat="server" Text="Update" Width="80px" /></td>
                                      <td style="width: 100px">
                                          <asp:Button ID="btnDelete" runat="server" Text="Delete" Width="84px" />
                                      </td>
                                  </tr>
                              </table>
                          </td>
                          <td style="width: 122px; height: 16px">
                              &nbsp;</td>
                      </tr>
                      <tr>
                          <td colspan="2" style="height: 30px; width: 100px;">
                              &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                          </td>
                          <td style="width: 122px; height: 14px">
                          </td>
                      </tr>
                  </table>
                  &nbsp; &nbsp;
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
