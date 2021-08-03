Imports system.Data.SqlClient
Imports System.Data
Partial Class Hospital
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=bloodbank;trusted_connection=true")
    Dim str As String
    Dim cmd As SqlCommand

    Protected Sub btnaccept_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaccept.Click
        Try
            str = "insert into hospital values('" & Me.txtuserid.Text.Trim & "', '" & Me.txtpassword.Text.Trim & _
           "','" & Me.txthospitalname.Text.Trim & "','" & Me.txtlocation.Text.Trim & "','" & Me.txtdistrict.Text.Trim & _
           "','" & Me.txtstate.Text.Trim & "', '" & Me.txtbloodbankphno.Text.Trim & "','" & Me.txtcoordinator.Text.Trim & _
           "','" & Me.txtcoordinatorphno.Text.Trim & "','" & Me.txthospitalwebsite.Text.Trim & "','" & Me.txtemailid.Text.Trim & _
           "','" & Me.txtfacilities.Text.Trim & "')"
            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Your Registration Successful"
            clear()
        Catch ex As Exception

        End Try


    End Sub

    Protected Sub btnignore_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        clear()
        lblmsg.Text = ""
        Response.Redirect("Home.aspx")

    End Sub
    Sub clear()
        Me.txtuserid.Text = ""
        Me.txtpassword.Text = ""
        Me.txtconformpassword.Text = ""
        Me.txthospitalname.Text = ""
        Me.txtlocation.Text = ""
        Me.txtdistrict.Text = ""
        Me.txtstate.Text = ""
        Me.txtbloodbankphno.Text = ""
        Me.txtcoordinator.Text = ""
        Me.txtcoordinatorphno.Text = ""
        Me.txthospitalwebsite.Text = ""
        Me.txtemailid.Text = ""
        Me.txtfacilities.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
