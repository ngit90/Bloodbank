Imports System.Data.SqlClient
Imports system.data
Partial Class Donarreg
    Inherits System.Web.UI.Page

    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim str As String
    Dim cmd As SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregister.Click
        Try

            Dim dd, mm, yy, dob, dondate, donmonth, donyear, donlast As String
            dd = ddldate.SelectedItem.Text
            mm = ddlmonth.SelectedItem.Text
            yy = ddlyear.SelectedItem.Text
            dondate = ddldondate.SelectedItem.Text
            donmonth = ddldonmonth.SelectedItem.Text
            donyear = ddldonyear.SelectedItem.Text
            dob = dd + mm + yy
            donlast = dondate + donmonth + donyear

            str = "insert into blood values('" & txtname.Text.Trim & "','" & txtusername.Text.Trim & _
            "','" & txtpassword.Text.Trim & "','" & dob & _
            "','" & rdbgender.SelectedItem.Text & _
            "','" & ddlbloodgroup.SelectedItem.Text & "','" & ddlage.SelectedItem.Text & _
            "','" & ddlweight.SelectedItem.Text & "','" & txtaddress.Text.Trim & "','" & txtphno.Text.Trim & _
            "','" & txtmobno.Text.Trim & "','" & txtemailid.Text.Trim & "','" & txtstate.Text.Trim & _
            "','" & txtdistrict.Text.Trim & _
            "','" & txtlocation.Text.Trim & "','" & donlast & "','" & txtanyillness.Text.Trim & "')"

            con.Open()
            Dim cmd As New SqlCommand(str, con)

            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "your registration successfull !!"
            clear()

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        clear()
        Response.Redirect("Home.aspx")
    End Sub

    Sub clear()
        txtname.Text = ""
        txtusername.Text = ""
        txtpassword.Text = ""
        txtconformpassword.Text = ""
        ddldate.SelectedIndex = 0
        ddlmonth.SelectedIndex = 0
        ddlyear.SelectedIndex = 0
        rdbgender.SelectedIndex = 0
        ddlbloodgroup.SelectedIndex = 0
        ddlage.SelectedIndex = 0
        ddlweight.SelectedIndex = 0
        txtaddress.Text = ""
        txtphno.Text = ""
        txtmobno.Text = ""
        txtemailid.Text = ""
        txtstate.Text = ""
        txtdistrict.Text = ""
        txtlocation.Text = ""
        ddldondate.SelectedIndex = 0
        ddldonmonth.SelectedIndex = 0
        ddldonyear.SelectedIndex = 0
        txtanyillness.Text = ""
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        bind()
    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Me.txtname.Focus()
    End Sub

    Sub bind()
        For i As Integer = 1 To 31
            ddldate.Items.Add(i)
        Next

        For i As Integer = 1970 To 2000
            ddlyear.Items.Add(i)
        Next
        For i As Integer = 1 To 31
            ddldondate.Items.Add(i)
        Next
        For i As Integer = 1980 To Now.Year
            ddldonyear.Items.Add(i)
        Next
        ddldate.Items.Insert(0, "DD")
        ddlyear.Items.Insert(0, "YYYY")
        ddldondate.Items.Insert(0, "DD")
        ddldonyear.Items.Insert(0, "YYYY")
    End Sub

    
End Class
