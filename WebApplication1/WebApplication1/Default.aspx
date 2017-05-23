<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

    </div>
    <p>

          <asp:Button ID="Button1" runat="server" Text="Получить результат" 
            OnClick="ButtonSend_Click" style="margin-top: 6px; margin-bottom: 0px" 
            Width="143px" />
    </p>
    <p>
        <asp:TextBox ID="TextBox1" runat="server" 
            style="z-index: 1; left: 335px; top: 92px; position: absolute"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label1" runat="server" Style="z-index: 102; left: 210px; position: absolute;
            top: 94px; width: 106px;">Высота конуса:</asp:Label>

    </p>
    <p>
    <asp:Label ID="Label2" runat="server" 
        style="z-index: 1; left: 210px; top: 146px; position: absolute; width: 108px; height: 19px" 
        Text="Радиус конуса:"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="TextBox2" runat="server" 
            style="z-index: 1; left: 337px; top: 143px; position: absolute"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>

          <asp:TextBox ID="TextBox3" runat="server" 
              style="z-index: 1; left: 335px; top: 210px; position: absolute"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
    <asp:Label ID="Label3" runat="server" 
        
            style="z-index: 1; left: 205px; top: 208px; position: absolute; height: 25px; width: 109px;" 
            Text="Объём равен:"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" 
            style="z-index: 1; left: 195px; top: 41px; position: absolute; width: 381px" 
            Text="Найдите объем конуса по радиусу основания и высоте:"></asp:Label>
    </p>
    </form>
</body>
</html>
