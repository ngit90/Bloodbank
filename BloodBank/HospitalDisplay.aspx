<%@ Page Language="VB" AutoEventWireup="false" CodeFile="HospitalDisplay.aspx.vb" Inherits="HospitalDisplay" %>

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
      <table style="width: 493px">
          <tr>
              <td align="center" rowspan="1" style="height: 34px;" colspan="2">
                  <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="14pt" Height="32px"
                      Text="Hospital Details" Width="154px"></asp:Label>
                  <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="9pt"
                      ForeColor="Red">New Hospital Registration Click Here</asp:LinkButton>
                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</td>
          </tr>
          <tr>
              <td rowspan="2" style="width: 105px">
                  &nbsp;<table>
                      <tr>
                          <td style="width: 100px; height: 24px;">
                              <asp:Label ID="Label1" runat="server" Text="District"></asp:Label></td>
                          <td style="width: 100px; height: 24px;">
                              <asp:DropDownList ID="ddldistrict" runat="server" Width="125px">
                              </asp:DropDownList></td>
                          <td style="width: 100px; height: 24px;">
                          </td>
                      </tr>
                      <tr>
                          <td style="width: 100px">
                              <asp:Label ID="Label2" runat="server" Text="Location"></asp:Label></td>
                          <td style="width: 100px">
                              <asp:DropDownList ID="ddllocation" runat="server" Width="124px">
                              </asp:DropDownList></td>
                          <td style="width: 100px">
                              <asp:Button ID="btnsearch" runat="server" Text="Search" /></td>
                      </tr>
                  </table>
                  &nbsp;
              </td>
              <td style="width: 100px; height: 19px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px; height: 24px">
              </td>
          </tr>
          <tr>
              <td style="width: 105px">
                  &nbsp;<asp:DataList ID="DataList1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" GridLines="Both" Width="432px">
                      <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                      <ItemStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                      <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                      <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                      <ItemTemplate>
                          <br />
                          <table style="width: 335px">
                              <tr>
                                  <td style="width: 100px">
                                      Hospital</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="hospitalnameLabel" runat="server" Font-Size="12pt" Text='<%# Eval("hospitalname") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Location</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="locationLabel" runat="server" Font-Size="12pt" Text='<%# Eval("location") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      District</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="districtLabel" runat="server" Font-Size="12pt" Text='<%# Eval("district") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      State</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="stateLabel" runat="server" Font-Size="12pt" Text='<%# Eval("state") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Bloodbank Phone No:</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="bloodbankphnoLabel" runat="server" Font-Size="12pt" Text='<%# Eval("bloodbankphno") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Co.Ordinator</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="coordinatorLabel" runat="server" Font-Size="12pt" Text='<%# Eval("coordinator") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Phone No:</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="coordinatorphnoLabel" runat="server" Font-Size="12pt" Text='<%# Eval("coordinatorphno") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Hospital Website</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="hospitalwebsiteLabel" runat="server" Font-Size="12pt" Text='<%# Eval("hospitalwebsite") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Email ID:</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="emailidLabel" runat="server" Font-Size="12pt" Text='<%# Eval("emailid") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                                      Facilities</td>
                                  <td style="width: 126px">
                                      <asp:Label ID="facilitiesLabel" runat="server" Font-Size="12pt" Text='<%# Eval("facilities") %>'></asp:Label></td>
                              </tr>
                          </table>
                          <br />
                      </ItemTemplate>
                  </asp:DataList><asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString %>"
                      SelectCommand="SELECT * FROM [hospital]"></asp:SqlDataSource>
              </td>
              <td style="width: 100px">
              </td>
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
