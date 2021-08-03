Imports System.Data.SqlClient
Imports System.Data
Partial Class donarupdation
    Inherits System.Web.UI.Page

    Dim uname As String
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim str As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        uname = Request.QueryString.ToString
        Try
            str = "select * from blood where username='" & uname & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "blood")
            If ds.Tables(0).Rows.Count > 0 Then
                txtname.Text = ds.Tables(0).Rows(0).Item(0).ToString
                Me.txtdateofbirth.Text = ds.Tables(0).Rows(0).Item(3).ToString
                If ds.Tables(0).Rows(0).Item(4).ToString = "Male" Then
                    Me.rdbgender.SelectedIndex = 0
                Else
                    Me.rdbgender.SelectedIndex = 1
                End If

                Me.ddlbloodgroup.Text = ds.Tables(0).Rows(0).Item(5).ToString

                Me.ddlage.Text = ds.Tables(0).Rows(0).Item(6).ToString
                Me.ddlweight.Text = ds.Tables(0).Rows(0).Item(7).ToString
                Me.txtaddress.Text = ds.Tables(0).Rows(0).Item(8).ToString
                Me.txtphno.Text = ds.Tables(0).Rows(0).Item(9).ToString
                Me.txtmobno.Text = ds.Tables(0).Rows(0).Item(10).ToString
                Me.txtemailid.Text = ds.Tables(0).Rows(0).Item(11).ToString
                Me.txtstate.Text = ds.Tables(0).Rows(0).Item(12).ToString
                Me.txtdistrict.Text = ds.Tables(0).Rows(0).Item(13).ToString
                Me.txtlocation.Text = ds.Tables(0).Rows(0).Item(14).ToString
                Me.txtdateoflastdonation.Text = ds.Tables(0).Rows(0).Item(15).ToString
                Me.txtanyillness.Text = ds.Tables(0).Rows(0).Item(16).ToString
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        If Not IsPostBack Then

            uname = Request.QueryString.ToString
            If uname = "" Then
                Response.Redirect("home.aspx")
            End If
            Try
                str = "select * from blood where username='" & uname & "'"
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    txtname.Text = ds.Tables(0).Rows(0).Item(0).ToString
                    Me.txtdateofbirth.Text = ds.Tables(0).Rows(0).Item(3).ToString
                    If ds.Tables(0).Rows(0).Item(4).ToString = "Male" Then
                        Me.rdbgender.SelectedIndex = 0
                    Else
                        Me.rdbgender.SelectedIndex = 1
                    End If

                    Me.ddlbloodgroup.Text = ds.Tables(0).Rows(0).Item(5).ToString

                    Me.ddlage.Text = ds.Tables(0).Rows(0).Item(6).ToString
                    Me.ddlweight.Text = ds.Tables(0).Rows(0).Item(7).ToString
                    Me.txtaddress.Text = ds.Tables(0).Rows(0).Item(8).ToString
                    Me.txtphno.Text = ds.Tables(0).Rows(0).Item(9).ToString
                    Me.txtmobno.Text = ds.Tables(0).Rows(0).Item(10).ToString
                    Me.txtemailid.Text = ds.Tables(0).Rows(0).Item(11).ToString
                    Me.txtstate.Text = ds.Tables(0).Rows(0).Item(12).ToString
                    Me.txtdistrict.Text = ds.Tables(0).Rows(0).Item(13).ToString
                    Me.txtlocation.Text = ds.Tables(0).Rows(0).Item(14).ToString
                    Me.txtdateoflastdonation.Text = ds.Tables(0).Rows(0).Item(15).ToString
                    Me.txtanyillness.Text = ds.Tables(0).Rows(0).Item(16).ToString
                End If
            Catch ex As Exception



            End Try
        End If
    End Sub
    Sub clear()
        txtname.Text = ""
        txtdateofbirth.Text = ""
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
        txtdateoflastdonation.Text = ""
        txtanyillness.Text = ""
    End Sub
    Protected Sub btnupdate_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnupdate.Click
        Try
            str = "update blood set Name='" & txtname.Text.Trim & "',age='" & ddlage.SelectedItem.Text.Trim & "',weight='" & ddlweight.SelectedItem.Text.Trim & _
                    "',address='" & txtaddress.Text.Trim & "',phno='" & txtphno.Text.Trim & "',mobno='" & txtmobno.Text.Trim & _
                    "',emailid='" & txtemailid.Text.Trim & "',state='" & txtstate.Text.Trim & "',district='" & txtdistrict.Text.Trim & _
                    "',location='" & txtlocation.Text.Trim & "',dateoflastdonation='" & Me.txtdateoflastdonation.Text.Trim & _
                    "',anyillness='" & Me.txtanyillness.Text.Trim & "' where username='" & uname & "'"
            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Your Updation successfull"

        Catch ex As Exception

        End Try

    End Sub

   

    Protected Sub linkPassword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkPassword.Click
        Response.Redirect("userChangepassword.aspx?" & uname & "")
    End Sub

    Protected Sub linkSignOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSignOut.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        str = "delete from blood where username='" & uname & "'"
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("home.aspx")
    End Sub

End Class
