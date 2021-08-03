Imports System.Data.SqlClient
Imports System.Data
Partial Class admlogin
    Inherits System.Web.UI.Page

    Dim str As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")


    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            str = "select*from admreg  where username='" & Me.txtusername.Text.Trim & "'and password='" & Me.txtpassword.Text.Trim & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "admreg")
            If ds.Tables(0).Rows.Count > 0 Then
                Response.Redirect("adminhome.aspx")
            Else
                lblmsg.Text = "User did not exist"
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Me.txtusername.Text = ""
        Me.txtpassword.Text = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class
