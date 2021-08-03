<%@ Page Language="VB" AutoEventWireup="false" CodeFile="donordisp.aspx.vb" Inherits="donordisp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Online BloodBank </title>
<link type="text/css" rel="stylesheet" href="style.css"/>
    <style type="text/css">
        .style1
        {
            width: 108px;
        }
        .style2
        {
            width: 126px;
            height: 7px;
        }
        .style3
        {
            width: 116px;
            height: 7px;
        }
        .style4
        {
            width: 132px;
            height: 7px;
        }
        .style5
        {
            width: 88px;
        }
    </style>
</head>

<body>
<form id="Form1" runat="server">
<div id="wrapper">
  <div id="header">
    <h1> <span> </span>Online BloodBank  </h1>
  </div>
 <div id="content" style="height: 1743px">
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
	<p>
        </p>
  <div id="rightcolumn"> 
  <div class="nav"><a href="AdminHome.aspx">Home</a> - 
  <a href="donordisp.aspx">Donors</a> - 
     <a href="AdminHospital.aspx">Hospitals </a> - 
     <a href="campdisplay.aspx">Camps </a> - 
     <a href="feedbackDisplay.aspx">Feedback</a> - 
  <a href="AdminChange.aspx">Change Password</a> - 
  <a href="home.aspx">Sign Out</a> </div>
   <table style="width: 490px">
   <tr>
              <td align="center" rowspan="1" class="style1">
                  <asp:Label ID="Label4" runat="server" Font-Size="X-Large" Text="Donor Display"
                      Width="240px"></asp:Label></td>
              <td style="width: 100px; height: 19px">
              </td>
          </tr>
       <tr>
           <td colspan="3" style="height: 26px">
               <asp:Label ID="lblmsg" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label></td>
       </tr>
      <tr>
          <td style="width: 126px; height: 26px">
              <asp:Label ID="Label1" runat="server" Text="Bloodgroup :"></asp:Label></td>
          <td style="width: 116px; height: 26px">
              <asp:DropDownList ID="ddlbloodgroup" runat="server" Width="130px">
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
          <td style="width: 132px; height: 26px">
              <asp:Button ID="btnsearch" runat="server" Text="Search" Width="104px" /></td>
      </tr>
      <tr>
          <td class="style2">
              <asp:Label ID="Label2" runat="server" Text="Location :" Width="96px"></asp:Label></td>
          <td class="style3">
              <asp:DropDownList ID="ddllocation" runat="server" Width="128px">
              </asp:DropDownList></td>
          <td class="style4">
          </td>
      </tr>
      <tr>
          <td style="width: 126px; height: 21px">
              <asp:Label ID="Label3" runat="server" Text="District :"></asp:Label></td>
          <td style="width: 116px; height: 21px">
              <asp:DropDownList ID="ddldistrict" runat="server" Width="127px">
              </asp:DropDownList></td>
          <td style="width: 132px; height: 21px">
          </td>
      </tr>
      <tr>
          <td colspan="3" style="height: 21px">
              <asp:DataList ID="DlSearch" runat="server" CellPadding="3"
                  RepeatColumns="2" RepeatDirection="Horizontal" Width="492px" 
                  BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                  CellSpacing="2" GridLines="Both">
                  <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                  <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                  <ItemTemplate>
                      <table>
                          <tr>
                              <td class="style5">
                      Name:</td>
                              <td style="width: 100px">
                      <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" 
                                      Font-Size="11pt" style="font-size: small"></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Date of Birth:</td>
                              <td style="width: 100px">
                      <asp:Label ID="DateofbirthLabel" runat="server" Text='<%# Eval("Dateofbirth") %>'>
                            </asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Gender:</td>
                              <td style="width: 100px">
                      <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Blood Group:</td>
                              <td style="width: 100px">
                      <asp:Label ID="BloodgroupLabel" runat="server" Text='<%# Eval("Bloodgroup") %>' 
                                      Font-Bold="True" Font-Size="11pt" ForeColor="#C00000" style="font-size: small"></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Address:
                              </td>
                              <td style="width: 100px">
                      <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Mobile:</td>
                              <td style="width: 100px">
                      <asp:Label ID="MobnoLabel" runat="server" Text='<%# Eval("Mobno") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Email:</td>
                              <td style="width: 100px">
                      <asp:Label ID="EmailidLabel" runat="server" Text='<%# Eval("Emailid") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      State:</td>
                              <td style="width: 100px">
                      <asp:Label ID="StateLabel" runat="server" Text='<%# Eval("State") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      District:</td>
                              <td style="width: 100px">
                      <asp:Label ID="DistrictLabel" runat="server" Text='<%# Eval("District") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                      Location:</td>
                              <td style="width: 100px">
                      <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>'></asp:Label></td>
                          </tr>
                          <tr>
                              <td class="style5">
                                  Last Donated</td>
                              <td style="width: 100px">
                      <asp:Label ID="DateoflastdonationLabel" runat="server" Text='<%# Eval("Dateoflastdonation") %>'>
                            </asp:Label></td>
                          </tr>
                      </table>
                      <br />
                  </ItemTemplate>
                  <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                  <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
              </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                      SelectCommand="SELECT * FROM [blood]"></asp:SqlDataSource>
          </td>
      <td style="width: 100px">
              </td>
          </tr>
      </table>
      <span style="font-size: 14pt; color: #009999"> <span style="color: #990000"></span></span></div>
  <div class="clear">
      &nbsp;</div>
  </div>
</div>
  </form>
</body>
</html>
