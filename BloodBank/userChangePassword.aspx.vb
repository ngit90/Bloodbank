Imports System.Data.SqlClient
Imports System.Data

Partial Class userChangePassword
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim str, uname As String
    Dim cmd As SqlCommand
    Dim ds As DataSet
    Dim da As SqlDataAdapter
    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            str = "select*from blood  where Username='" & Me.txtusername.Text & "' and password='" & txtold.Text & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "blood")
            If ds.Tables(0).Rows.Count > 0 Then
                str = "update blood set password='" & txtpassword.Text.Trim & "' where Username='" & txtusername.Text & "'"
                con.Open()
                Dim cmd As New SqlCommand(str, con)
                cmd.ExecuteNonQuery()
                con.Close()

                lblmsg.Text = "Password Changed Successfully !!"
            Else
                lblmsg.Text = "Username or Password Incorrect !!"
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        clear()
        lblmsg.Text = ""
    End Sub
    Sub clear()
        Me.txtusername.Text = ""
        Me.txtpassword.Text = ""
        Me.txtconformpassword.Text = ""
    End Sub

    Protected Sub linkSignOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSignOut.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        uname = Request.QueryString.ToString
        If uname = "" Then
            Response.Redirect("home.aspx")
        End If
        txtusername.Text = uname
        lblmsg.Text = ""
    End Sub
End Class
