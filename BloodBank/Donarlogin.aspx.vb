Imports System.Data.SqlClient
Imports System.Data
Partial Class donarlogin
    Inherits System.Web.UI.Page

    Dim str, UNAME As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;;database=BloodBank ;trusted_connection=true")


    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        UNAME = txtuserid.Text
        str = "select * from blood where username='" & txtuserid.Text & "' and password='" & txtpassword.Text & "'"
        ds = New DataSet
        ds.Clear()
        da = New SqlDataAdapter(str, con)
        da.Fill(ds, "blood")
        If ds.Tables(0).Rows.Count > 0 Then
            Response.Redirect("donarupdation.aspx?" & UNAME & "")
        Else
            lblmsg.Text = "User did not exist"
        End If
    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Me.txtuserid.Text = ""
        Me.txtpassword.Text = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class
