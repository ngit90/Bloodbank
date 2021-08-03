<%@ Page Language="VB" AutoEventWireup="false" CodeFile="adminfeedback.aspx.vb" Inherits="feedbackDisplay" enableEventValidation="false" %>

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
      <br />
       
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
                  <asp:DataList ID="dlreceiver" runat="server" CellPadding="4" ForeColor="#333333" DataKeyField="name" OnDeleteCommand="dlreceiver_DeleteCommand" 
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
                              <tr>
                                      <td style="width: 100px; height: 20px">
                                          </td>
                                      <td style="width: 100px; height: 20px">
                                         <asp:Button ID="btdelete" runat="server" Font-Bold="True" Text="Delete" Width="120px" CommandName="delete" /></td>
                                  </tr>
                          </table>
                          <br />
                      </ItemTemplate>
                      <AlternatingItemStyle BackColor="White" />
                      <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />
                      <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                  </asp:DataList>
                  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BloodBankConnectionString2 %>"
                          SelectCommand="SELECT * FROM [feedback]" DeleteCommand= "DELETE FROM [feedback] WHERE [name] = @name" >
                          <DeleteParameters>
                          <asp:Parameter Name="name" /> 
                          </DeleteParameters>
                          </asp:SqlDataSource>
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
