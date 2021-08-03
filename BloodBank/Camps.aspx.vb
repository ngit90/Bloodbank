Imports System.Data.SqlClient
Imports System.Data
Imports iTextSharp.text
Imports iTextSharp.text.pdf
Imports iTextSharp.text.html
Imports iTextSharp.text.html.simpleparser
Imports System.IO

Partial Class Camps
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection("server=NDPP-PC\SQLEXPRESS;database=BloodBank ;trusted_connection=true")
    Dim str As String
    Dim dt, dt1 As Date
    Dim da As New SqlDataAdapter
    Dim ds As DataSet
    Dim cmd As New SqlCommand


    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init

        lblDate.Text = Today.Date
        dt = Today.Date
        lblDate.Text = dt.ToString("dd/MM/yyyy")
        Try
            str = "select distinct(place) from camp_registration "
            da = New SqlDataAdapter(str, con)
            ds = New DataSet
            da.Fill(ds, "camp_registration")

            If ds.Tables(0).Rows.Count > 0 Then
                ddlplace.DataSource = ds.Tables(0)
                ddlplace.DataTextField = "place"
                ddlplace.DataValueField = "place"
                ddlplace.DataBind()
                ddlplace.Items.Insert(0, "Select")
            End If
        Catch ex As Exception

        End Try

    End Sub


    Protected Sub btnsearch_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnsearch.Click
        Try
            If ddlplace.Text = "select" Then
                dlCamps.Visible = False
            Else
                dt1 = Today.Date
                str = "select * from camp_registration where place='" & ddlplace.SelectedItem.Text & "' and cdate >= '" & dt1.ToString("yyyy/MM/dd") & "'"
                'str = "select * from camp_registration where place='" & ddlplace.SelectedItem.Text & "'"
                da = New SqlDataAdapter(str, con)
                ds = New DataSet
                da.Fill(ds, "camp_registration")
            End If
            If ds.Tables(0).Rows.Count > 0 Then
                dlCamps.Visible = True
                dlCamps.DataSource = ds.Tables(0)
                dlCamps.DataBind()

            Else
                dlCamps.Visible = False
            End If

        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("Campreg.aspx")
    End Sub

    Protected Sub button2_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles button2.Click
        Try
            Response.Clear()
            Response.Buffer = True
            Response.ContentType = "application/pdf"
            Response.ContentEncoding = System.Text.Encoding.UTF8
            Response.AddHeader("content-disposition", "attachment;filename=campdetails.pdf")
            Response.Cache.SetCacheability(HttpCacheability.NoCache)
            Dim writer As New StringWriter()
            Dim html As New HtmlTextWriter(writer)
            dlCamps.RenderControl(html)
            Dim sr As New StringReader(writer.ToString())
            Dim pdf As New Document(PageSize.A4, 7.0F, 7.0F, 7.0F, 7.0F)
            Dim htmlparser As New HTMLWorker(pdf)
            PdfWriter.GetInstance(pdf, Response.OutputStream)
            pdf.Open()
            htmlparser.Parse(sr)
            pdf.Close()
            Response.Write(pdf)
            Response.End()

        Catch ex As Exception
        End Try
    End Sub
End Class
