Imports system.Data.SqlClient
Imports System.Data
Partial Class HospitalUpdation
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=bloodbank;trusted_connection=true")
    Dim str, hid As String
    Dim da As SqlDataAdapter
    Dim ds As DataSet
    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        hid = Request.QueryString.ToString
        Try
            str = "select * from hospital where userid='" & hid & "'"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "hospital")
            If ds.Tables(0).Rows.Count > 0 Then
                txtuserid.Text = ds.Tables(0).Rows(0).Item(0).ToString
                txthospitalname.Text = ds.Tables(0).Rows(0).Item(2).ToString
                txtlocation.Text = ds.Tables(0).Rows(0).Item(3).ToString
                txtdistrict.Text = ds.Tables(0).Rows(0).Item(4).ToString
                txtstate.Text = ds.Tables(0).Rows(0).Item(5).ToString
                txtbloodbankphno.Text = ds.Tables(0).Rows(0).Item(6).ToString
                txtcoordinator.Text = ds.Tables(0).Rows(0).Item(7).ToString
                txtcoordinatorphno.Text = ds.Tables(0).Rows(0).Item(8).ToString
                txthospitalwebsite.Text = ds.Tables(0).Rows(0).Item(9).ToString
                txtemailid.Text = ds.Tables(0).Rows(0).Item(10).ToString
                txtfacilities.Text = ds.Tables(0).Rows(0).Item(11).ToString
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
            If Not IsPostBack Then

                hid = Request.QueryString.ToString
            Try

                str = "select * from hospital where userid='" & hid & "'"
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "hospital")
                If ds.Tables(0).Rows.Count > 0 Then
                    txtuserid.Text = ds.Tables(0).Rows(0).Item(0).ToString
                    txthospitalname.Text = ds.Tables(0).Rows(0).Item(2).ToString
                    txtlocation.Text = ds.Tables(0).Rows(0).Item(3).ToString
                    txtdistrict.Text = ds.Tables(0).Rows(0).Item(4).ToString
                    txtstate.Text = ds.Tables(0).Rows(0).Item(5).ToString
                    txtbloodbankphno.Text = ds.Tables(0).Rows(0).Item(6).ToString
                    txtcoordinator.Text = ds.Tables(0).Rows(0).Item(7).ToString
                    txtcoordinatorphno.Text = ds.Tables(0).Rows(0).Item(8).ToString
                    txthospitalwebsite.Text = ds.Tables(0).Rows(0).Item(9).ToString
                    txtemailid.Text = ds.Tables(0).Rows(0).Item(10).ToString
                    txtfacilities.Text = ds.Tables(0).Rows(0).Item(11).ToString
                Else

                End If
            Catch ex As Exception

            End Try

        End If

    End Sub

    Protected Sub btnaccept_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnaccept.Click
        Try
            str = "update hospital set hospitalname='" & Me.txthospitalname.Text.Trim & "',location='" & Me.txtlocation.Text.Trim & _
                 "',district='" & Me.txtdistrict.Text.Trim & _
                 "',state='" & Me.txtstate.Text.Trim & "',bloodbankphno='" & Me.txtbloodbankphno.Text.Trim & "',coordinator='" & Me.txtcoordinator.Text.Trim & _
                 "',coordinatorphno='" & Me.txtcoordinatorphno.Text.Trim & "',hospitalwebsite='" & Me.txthospitalwebsite.Text.Trim & "',emailid='" & Me.txtemailid.Text.Trim & _
                 "',facilities='" & Me.txtfacilities.Text.Trim & "' where userid='" & hid & "'"

            con.Open()
            Dim cmd As New SqlCommand(str, con)
            cmd.ExecuteNonQuery()
            con.Close()
            lblmsg.Text = "Hospital Details Updated Successfully !!"

        Catch ex As Exception

        End Try

    End Sub


    

    Protected Sub linkPassword_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkPassword.Click
        Response.Redirect("HospitalChangePass.aspx?" & hid & "")
    End Sub

    Protected Sub linkSignOut_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles linkSignOut.Click
        Response.Redirect("home.aspx")
    End Sub

    Protected Sub btnDelete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnDelete.Click
        str = "Delete from hospital where userid='" & hid & "'"
        Dim cmd As New SqlCommand(str, con)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Response.Redirect("home.aspx")

    End Sub
End Class
