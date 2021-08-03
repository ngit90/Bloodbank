Imports System.Data.SqlClient
Imports System.Data
Partial Class feedbackDisplay
    Inherits System.Web.UI.Page
    Dim str As String
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
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

    Protected Sub dlreceiver_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles dlreceiver.DeleteCommand
        Dim getID As String = dlreceiver.DataKeys(e.Item.ItemIndex)
        SqlDataSource1.DeleteParameters("name").DefaultValue = getID
        SqlDataSource1.Delete()
        Response.Redirect("adminfeedback.aspx")
    End Sub
  
End Class
