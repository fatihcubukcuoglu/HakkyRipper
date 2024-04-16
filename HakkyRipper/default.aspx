<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="default.aspx.vb" Inherits="HakkyRipper._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <h1 class="heading-element" dir="auto" style="box-sizing: border-box; font-size: 2em; margin: 24px 0px 16px; font-weight: var(--base-text-weight-semibold, 600); line-height: 1.25; padding-bottom: 0.3em; border-bottom: 1px solid var(--borderColor-muted, var(--color-border-muted)); color: rgb(31, 35, 40); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, &quot;Noto Sans&quot;, Helvetica, Arial, sans-serif, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial;" tabindex="-1">Certificate Ripper<span>&nbsp;By Hakky54 </span></h1>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter the URL starting with SSL"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="373px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Rip" />
            <br />
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="225px" TextMode="MultiLine" Width="810px"></asp:TextBox>
            <br />
            https://github.com/Hakky54/certificate-ripper</div>
    </form>
</body>
</html>
