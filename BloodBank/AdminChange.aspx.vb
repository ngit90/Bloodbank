Imports System.Data.SqlClient
Imports System.Data

Partial Class AdminChange
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim str As String
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim da As SqlDataAdapter
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            str = "select*from admreg  where username='" & txtuser.Text & "' and password='" & Me.txtold.Text & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "admreg")
            If ds.Tables(0).Rows.Count > 0 Then
                str = "update admreg set password='" & txtpassword.Text.Trim & "' where username='" & txtuser.Text & "'"
                con.Open()
                Dim cmd As New SqlCommand(str, con)
                cmd.ExecuteNonQuery()
                con.Close()
                lblmsg.Text = "Password Changed Successfull !"
            Else
                lblmsg.Text = "Username or Password Incorrect !!"
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        clear()
        Response.Redirect("AdminHome.aspx")
    End Sub
    Sub clear()
        Me.txtold.Text = ""
        Me.txtpassword.Text = ""
        Me.txtconformpassword.Text = ""
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        lblmsg.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
End Class
