Imports system.Data.SqlClient
Imports System.Data
Partial Class HospitalChangePass
    Inherits System.Web.UI.Page
    Dim str, hid As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Dim cmd As SqlCommand
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=bloodbank;trusted_connection=true")

    Protected Sub linkSignOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSignOut.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        lblmsg.Text = ""
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            hid = Request.QueryString.ToString
            txtUser.Text = hid
            'txtOld.Focus()
            lblmsg.Text = ""
        End If
    End Sub

    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        str = "select*from hospital where userid='" & txtUser.Text & "' and password='" & Me.txtOld.Text & "'"
        ds = New DataSet
        ds.Clear()
        da = New SqlDataAdapter(str, con)
        da.Fill(ds, "hospital")
        If ds.Tables(0).Rows.Count > 0 Then
            str = "update hospital set password='" & txtnew.Text.Trim & "' where userid='" & txtUser.Text & "'"
            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            'Response.Redirect("adminhome.aspx")

            lblmsg.Text = "Password Changed Successfull !"
        Else
            lblmsg.Text = "Username or Password Incorrect !!"
        End If
    End Sub
End Class
