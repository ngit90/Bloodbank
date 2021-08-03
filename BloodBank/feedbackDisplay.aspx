<%@ Page Language="VB" AutoEventWireup="false" CodeFile="feedbackDisplay.aspx.vb" Inherits="feedbackDisplay" %>

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
     <a href="Donarreg.aspx">Registration </a> - 
     <a href="Search.aspx">BloodSearch </a> - 
     <a href="feedbackDisplay.aspx">Feedback</a> - 
  <a href="Contact.aspx">Contact</a> 
  </div>
      <br />
       <div class="post" style="font-size": 18pt; color: "hotpink">
              &nbsp; &nbsp; &nbsp;
              &nbsp; &nbsp; &nbsp; &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="10pt"
                  ForeColor="Red">Write Your Feedback Here...</asp:LinkButton></div>
      <table style="width: 464px">
          <tr>
              <td rowspan="2" style="width: 100px" align="center">
                  <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Text="User's Speak" Width="168px"></asp:Label></td>
              <td style="width: 100px; height: 19px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px; height: 24px">
              </td>
          </tr>
          <tr>
              <td style="width: 100px">
                  <asp:DataList ID="dlreceiver" runat="server" CellPadding="4" ForeColor="#333333"
                      RepeatColumns="1" RepeatDirection="Horizontal" Width="472px">
                      <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                      <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                      <ItemTemplate>
                          <table>
                              <tr>
                                  <td style="width: 100px">
                          Name:</td>
                                  <td style="width: 100px">
                          <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                          Address:</td>
                                  <td style="width: 100px">
                          <asp:Label ID="addressLabel" runat="server" Text='<%# Eval("address") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                          Phone:</td>
                                  <td style="width: 100px">
                          <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                          Email:</td>
                                  <td style="width: 100px">
                          <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>'></asp:Label></td>
                              </tr>
                              <tr>
                                  <td style="width: 100px">
                          Comments:</td>
                                  <td style="width: 100px">
                          <asp:Label ID="commentsLabel" runat="server" Text='<%# Eval("comments") %>'></asp:Label></td>
                              </tr>
                          </table>
                          <br />
                      </ItemTemplate>
                      <AlternatingItemStyle BackColor="White" />
                      <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                  </asp:DataList>
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
      Powered by Online BloodBank.</div>
</div></form>
</body>
</html>
