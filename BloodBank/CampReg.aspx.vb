Imports System.Data.SqlClient
Imports System.Data
Partial Class CampReg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank;trusted_connection=true")
    Dim str As String
    Dim cmd As New SqlCommand
    Dim m, n As String

    Protected Sub btnsubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsubmit.Click
        Try
            Dim dd, mm, yy, dt2 As String
            dd = ddlday.SelectedItem.Text.ToString()
            mm = ddlmonth.SelectedItem.Text.ToString()
            yy = ddlyear.SelectedItem.Text.ToString()
            dt2 = yy + "/" + mm + "/" + dd
            str = "insert into camp_registration values('" & Me.ddlcampfor.SelectedItem.Text & "','" & Me.txtplace.Text.Trim & "','" & dt2 & "','" & Me.txttime.Text.Trim & "','" & Me.txtorganisation.Text.Trim & "','" & Me.txtemail.Text.Trim & "','" & Me.txtcontactperson.Text.Trim & "','" & Me.txtphone.Text.Trim & "')"
            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Camp Details Saved Successfully !!"
            clear()
        Catch ex As Exception

        End Try

    End Sub
    Sub clear()
        ddlcampfor.SelectedIndex = 0
        txtplace.Text = ""
        txttime.Text = ""
        txtorganisation.Text = ""
        txtemail.Text = ""
        txtcontactperson.Text = ""
        txtphone.Text = ""

    End Sub
    Sub datefill()
        n = "0"
        For i As Integer = 1 To 31
            If i < 10 Then
                m = n + i.ToString()
                ddlday.Items.Add(m)
            Else
                ddlday.Items.Add(i)
            End If
        Next
        For i As Integer = 1 To 12
            If i < 10 Then
                m = n + i.ToString()
                ddlmonth.Items.Add(m)
            Else
                ddlmonth.Items.Add(i)
            End If
        Next
        For i As Integer = 2021 To 2030
            ddlyear.Items.Add(i)
        Next

    End Sub

   Protected Sub btncancel_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btncancel.Click
        clear()
        lblmsg.Text = ""
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        datefill()
    End Sub

   
End Class
