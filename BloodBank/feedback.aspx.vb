Imports System.Data.SqlClient
Imports System.Data
Partial Class feedback
    Inherits System.Web.UI.Page
    Dim str As String
    Dim cmd As SqlCommand
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")

    Protected Sub txtSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles txtSubmit.Click
        Try
            str = "insert into feedback values('" & txtname.Text & "','" & txtAddress.Text & "','" & txtPhone.Text & "','" & txtEmail.Text & "','" & txtComments.Text & "')"
            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            Clear()
            lblmsg.Text = "Feedback Submitted !!"
        Catch ex As Exception

        End Try

    End Sub

    Sub Clear()
        txtAddress.Text = ""
        txtComments.Text = ""
        txtEmail.Text = ""
        txtname.Text = ""
        txtPhone.Text = ""

    End Sub


End Class
