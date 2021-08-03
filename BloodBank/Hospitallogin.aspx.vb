Imports System.Data.SqlClient
Imports System.Data
Partial Class Hospitallogin
    Inherits System.Web.UI.Page

    Dim str As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Try
            str = "select * from hospital where userid='" & Me.txtuserid.Text & "'and password='" & Me.txtpassword.Text & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "hospital")
            If ds.Tables(0).Rows.Count > 0 Then
                Response.Redirect("hospitalupdation.aspx?" & txtuserid.Text.Trim & "")
            Else
                lblmsg.Text = "User didn't exist"
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        Me.txtuserid.Text = ""
        Me.txtpassword.Text = ""
        Response.Redirect("Home.aspx")
    End Sub
End Class
