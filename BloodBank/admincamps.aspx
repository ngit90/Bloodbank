<%@ Page Language="VB" AutoEventWireup="false" CodeFile="admincamps.aspx.vb" Inherits="Camps" enableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            width: 492px;
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
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
          <p>
              &nbsp;</p>
      </div>
  </div>
  <div id="rightcolumn">
  <div class="nav">
     <a href="AdminHome.aspx">Home</a> - 
     <a href="admindonor.aspx">Donors</a> - 
     <a href="adminhospital.aspx">Hospitals </a> -
     <a href="admincamps.aspx">Camps </a> - 
     <a href="adminfeedback.aspx">Feedback</a> - 
     <a href="AdminChange.aspx">Change Password</a> - 
     <a href="home.aspx">Sign Out</a> </div>
   <div id="scroll" style="height: 344px">
          <div class="post" style="font-size": 18pt;>
              &nbsp; &nbsp; &nbsp;
              <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="16pt" Height="32px"
                  Text="Camps Details" Width="139px"></asp:Label>
              &nbsp; &nbsp; &nbsp; &nbsp;></div>
          <table style="width: 320px">
              <tr>
                  <td colspan="2" style="width: 280px; height: 26px">
                      <table>
                          <tr>
                              <td style="width: 100px">
                                  <asp:Label ID="Label1" runat="server" Font-Bold="True" Text="Place" Width="64px" Font-Size="12pt"></asp:Label></td>
                              <td style="width: 100px">
                                  <asp:DropDownList ID="ddlplace" runat="server" Font-Bold="True" Width="137px" 
                                      Height="25px">
                                      <asp:ListItem>Select</asp:ListItem>
                                  </asp:DropDownList></td>
                              <td class="style1">
                                  <asp:Button ID="btnsearch" runat="server" Font-Bold="True" Text="Search" Width="120px" /></td>
                              <td class="style1">
                                  <asp:Label ID="lblDate" runat="server"></asp:Label>
                              </td>
                          </tr>
                      </table>
                      <asp:DataList ID="dlCamps" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" DataKeyField="Organisation" OnDeleteCommand="dlCamps_DeleteCommand" 
                          BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both">
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <ItemTemplate>
                              <table style="width: 387px; height: 187px">
                                  <tr>
                                      <td style="width: 100px">
                                          Camps For</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="CampForLabel" runat="server" Font-Size="12pt" Text='<%# Eval("CampFor") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Place</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="PlaceLabel" runat="server" Font-Size="12pt" Text='<%# Eval("Place") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Date</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="CdateLabel" runat="server" Font-Size="12pt" Text='<%# Eval("Cdate") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Time</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="CtimeLabel" runat="server" Font-Size="12pt" Text='<%# Eval("Ctime") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Organisation</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="OrganisationLabel" runat="server" Font-Size="12pt" Text='<%# Eval("Organisation") %>'
                                              Width="213px"></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Email ID</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="EmailIDLabel" runat="server" Font-Size="12pt" Text='<%# Eval("EmailID") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px">
                                          Contact Person</td>
                                      <td style="width: 100px">
                                          <asp:Label ID="ContactPersonLabel" runat="server" Font-Size="12pt" Text='<%# Eval("ContactPerson") %>'></asp:Label></td>
                                  </tr>
                                  <tr>
                                      <td style="width: 100px; height: 20px">
                                          Phone No.</td>
                                      <td style="width: 100px; height: 20px">
                                          <asp:Label ID="PhoneLabel" runat="server" Font-Size="12pt" Text='<%# Eval("Phone") %>'></asp:Label></td>
                                  </tr>
                                   <tr>
                                      <td style="width: 100px; height: 20px">
                                          </td>
                                      <td style="width: 100px; height: 20px">
                                         <asp:Button ID="btdelete" runat="server" Font-Bold="True" Text="Delete" Width="120px" CommandName="delete" /></td>
                                  </tr>
                              </table>
                              <br />
                          </ItemTemplate>
                      </asp:DataList>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString2 %>"
                          SelectCommand="SELECT * FROM [campregistration]" DeleteCommand= "DELETE FROM [camp_registration] WHERE [Organisation] = @Organisation" >
                          <DeleteParameters>
                          <asp:Parameter Name="Organisation" /> 
                          </DeleteParameters>
                          </asp:SqlDataSource>
                  </td>
              </tr>
              <tr>   
                  <td colspan="2" style="width: 280px">
                      &nbsp;</td>
              </tr>
          </table>
      </div>
      <br />
  </div>
  <div class="clear">
      &nbsp;</div>
  </div>
  <div id="footer">
      Powered by Online BloodBank .</div>
</div></form>
</body>
</html>
