Imports System.Data.SqlClient
Imports System.Data
Partial Class search
    Inherits System.Web.UI.Page
    Dim uname As String
    Dim str As String
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;;database=BloodBank ;trusted_connection=true")

    Dim da As SqlDataAdapter
    Dim ds As DataSet

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        uname = Request.QueryString.ToString
        Try
            str = "select distinct(location) from blood"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "blood")
            If ds.Tables(0).Rows.Count > 0 Then
                ddllocation.DataSource = ds.Tables(0)
                ddllocation.DataTextField = "location"
                ddllocation.DataValueField = "location"
                ddllocation.DataBind()
                ddllocation.Items.Insert(0, "Select")
            End If
        Catch ex As Exception

        End Try


        Try
            str = "select distinct(district) from blood"
            ds = New DataSet
            ds.Clear()
            da = New SqlDataAdapter(str, con)
            da.Fill(ds, "blood")
            If ds.Tables(0).Rows.Count > 0 Then
                ddldistrict.DataSource = ds.Tables(0)
                ddldistrict.DataTextField = "district"
                ddldistrict.DataValueField = "district"
                ddldistrict.DataBind()
                ddldistrict.Items.Insert(0, "Select")
            End If
        Catch ex As Exception

        End Try


    End Sub


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        uname = Request.QueryString.ToString

    End Sub




    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Try


            If Me.ddlbloodgroup.SelectedItem.Text = "Select" And Me.ddllocation.SelectedItem.Text = "Select" And Me.ddldistrict.SelectedItem.Text = "Select" Then
                lblmsg.Text = "select any one"
            ElseIf Me.ddllocation.SelectedItem.Text = "Select" And Me.ddldistrict.SelectedItem.Text = "Select" Then

                str = "select * from blood where bloodgroup='" & Me.ddlbloodgroup.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If

            ElseIf ddlbloodgroup.SelectedItem.Text = "Select" And ddllocation.SelectedItem.Text = "Select" Then
                str = "select * from blood where district='" & Me.ddldistrict.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If

            ElseIf ddldistrict.SelectedItem.Text = "Select" And ddlbloodgroup.SelectedItem.Text = "Select" Then
                str = "select * from blood where location='" & Me.ddllocation.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If


                '==============================
            ElseIf ddllocation.SelectedItem.Text = "Select" Then
                str = "select* from blood where bloodgroup ='" & Me.ddlbloodgroup.SelectedItem.Text & "' and district='" & ddldistrict.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If
            ElseIf ddldistrict.SelectedItem.Text = "Select" Then
                str = "select* from blood where bloodgroup ='" & Me.ddlbloodgroup.SelectedItem.Text & "' and location='" & ddllocation.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If
            ElseIf ddlbloodgroup.SelectedItem.Text = "Select" Then
                str = "select* from blood where location ='" & Me.ddllocation.SelectedItem.Text & "' and district='" & ddldistrict.SelectedItem.Text & "' "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If
                '===================================
            Else

                str = "select* from blood where bloodgroup='" & Me.ddlbloodgroup.SelectedItem.Text & "' and location ='" & Me.ddllocation.SelectedItem.Text & "' and district='" & Me.ddldistrict.SelectedItem.Text & "'  "
                ds = New DataSet
                ds.Clear()
                da = New SqlDataAdapter(str, con)
                da.Fill(ds, "blood")
                If ds.Tables(0).Rows.Count > 0 Then
                    lblmsg.Text = ""
                    DlSearch.Visible = True
                    DlSearch.DataSource = ds.Tables(0)
                    DlSearch.DataBind()
                Else
                    DlSearch.Visible = False
                    lblmsg.Text = "Sorry No Donor on your search !!"
                End If


            End If
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub DlSearch_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataListCommandEventArgs) Handles DlSearch.DeleteCommand
        Dim getID As String = DlSearch.DataKeys(e.Item.ItemIndex)
        SqlDataSource1.DeleteParameters("Name").DefaultValue = getID
        SqlDataSource1.Delete()
        Response.Redirect("admindonor.aspx")
    End Sub

End Class
