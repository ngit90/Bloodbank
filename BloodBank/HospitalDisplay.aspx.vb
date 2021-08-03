Imports System.Data.SqlClient
Imports System.Data
Partial Class HospitalDisplay
    Inherits System.Web.UI.Page
    Dim uname As String
    Dim str As String
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        uname = Request.QueryString.ToString
        Try
            str = "select distinct(district) from hospital"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "hospital")
            If ds.Tables(0).Rows.Count > 0 Then
                ddldistrict.DataSource = ds.Tables(0)
                ddldistrict.DataTextField = "district"
                ddldistrict.DataValueField = "district"
                ddldistrict.DataBind()
                ddldistrict.Items.Insert(0, "Select")
            End If
        Catch ex As Exception

        End Try

        Try
            str = "select distinct(location) from hospital"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "hospital")
            If ds.Tables(0).Rows.Count > 0 Then
                ddllocation.DataSource = ds.Tables(0)
                ddllocation.DataTextField = "location"
                ddllocation.DataValueField = "location"
                ddllocation.DataBind()
                ddllocation.Items.Insert(0, "Select")
            End If
        Catch ex As Exception

        End Try


    End Sub

    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Try

            If ddldistrict.SelectedItem.Text = "Select" And ddllocation.SelectedItem.Text = "Select" Then
                DataList1.Visible = False
            ElseIf ddldistrict.SelectedItem.Text = "Select" Then
                str = "select * from hospital where location='" & Me.ddllocation.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "hospital")
                If ds.Tables(0).Rows.Count > 0 Then
                    DataList1.Visible = True
                    DataList1.DataSource = ds.Tables(0)
                    DataList1.DataBind()
                Else
                    DataList1.Visible = False
                End If
            ElseIf ddllocation.SelectedItem.Text = "Select" Then
                str = "select * from hospital where district='" & Me.ddldistrict.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "hospital")
                If ds.Tables(0).Rows.Count > 0 Then
                    DataList1.Visible = True
                    DataList1.DataSource = ds.Tables(0)
                    DataList1.DataBind()
                Else
                    DataList1.Visible = False
                End If
            Else
                str = "select * from hospital where location='" & Me.ddllocation.SelectedItem.Text & "' and district='" & ddldistrict.SelectedItem.Text & "'"
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "hospital")
                If ds.Tables(0).Rows.Count > 0 Then
                    DataList1.Visible = True
                    DataList1.DataSource = ds.Tables(0)
                    DataList1.DataBind()
                Else
                    DataList1.Visible = False
                End If
            End If

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub


    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("hospital.aspx")
    End Sub

End Class
