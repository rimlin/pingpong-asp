<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1._Default" %>

         <%@ Import Namespace="System.Data" %>
         <%@ Import Namespace="System.Data.OleDb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>

    <link href="/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="main">   
        <form id="form1" runat="server"> 
            <asp:Login 
                ID="LoginCtrl" 
                OnAuthenticate= "ValidateUser" 
                runat="server" 
                DisplayRememberMe="False"
                DestinationPageUrl="Table.aspx"></asp:Login>
        </form>
    </div>
</body>
</html>
