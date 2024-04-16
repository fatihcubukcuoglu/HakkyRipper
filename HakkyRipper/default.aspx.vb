Public Class _default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        TextBox2.Text = CripCertificate(TextBox1.Text)
    End Sub

    Public Function CripCertificate(dosya As String) As String
        ' Java komutunu oluştur
        Dim javaPath As String = HttpContext.Current.Server.MapPath("files/jre-1.8/bin/java.exe")  ' Java'nın yüklü olduğu yol
        Dim jarPath As String = HttpContext.Current.Server.MapPath("files/crip.jar") ' Java JAR dosyasının yolu
        Dim arguments As String = "-jar " & jarPath & " print --url=" & dosya
        ' Yeni bir Process oluştur
        Dim javaProcess As New Process()
        ' ProcessStartInfo özelliklerini ayarla
        javaProcess.StartInfo.FileName = javaPath
        javaProcess.StartInfo.Arguments = arguments
        javaProcess.StartInfo.UseShellExecute = False
        javaProcess.StartInfo.RedirectStandardOutput = True
        javaProcess.StartInfo.CreateNoWindow = True
        Try
            ' Process'i başlat
            javaProcess.Start()
            ' Çıktıyı oku
            Dim output As String = javaProcess.StandardOutput.ReadToEnd()
            ' Process'in tamamlanmasını bekle
            javaProcess.WaitForExit()
            ' Process'i kapat
            javaProcess.Close()
            Return output

        Catch ex As Exception
            ' Hata oluştuğunda hata mesajını yazdır
            Return ex.Message
        End Try
    End Function
End Class