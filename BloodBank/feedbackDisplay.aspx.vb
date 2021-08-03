Imports System.Data.SqlClient
Imports System.Data
Partial Class feedbackDisplay
    Inherits System.Web.UI.Page
    Dim str As String
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            str = "select * from  feedback"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "feedback")
            If ds.Tables(0).Rows.Count > 0 Then
                dlreceiver.Visible = True
                dlreceiver.DataSource = ds.Tables(0)
                dlreceiver.DataBind()
            Else
                dlreceiver.Visible = False
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("feedback.aspx")
    End Sub
End Class
