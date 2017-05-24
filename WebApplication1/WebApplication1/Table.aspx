<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="WebApplication1.Table" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/style.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/App_Data/db1.mdb" 
        SelectCommand="SELECT * FROM data">
    </asp:AccessDataSource>

    <div class="main">    
        <form id="form1" runat="server">
            <h1>Игровые сессии</h1>

            <asp:gridview id="CustomersGridView" 
                datasourceid="AccessDataSource1" 
                autogeneratecolumns="false"
                allowpaging="true"  
                class="heavyTable"
                runat="server">

                <columns>
                  <asp:boundfield datafield="id"
                    readonly="true"      
                    headertext="ID"/>
                  <asp:boundfield datafield="player1"
                    convertemptystringtonull="true"
                    headertext="Имя первого игрока"/>
                  <asp:boundfield datafield="score1"
                    convertemptystringtonull="true"
                    headertext="Счет первого игрока"/>
                  <asp:boundfield datafield="player2"
                    convertemptystringtonull="true"
                    headertext="Имя второго игрока"/>
                  <asp:boundfield datafield="score2"
                    convertemptystringtonull="true"
                    headertext="Счет второго игрока"/>
                  <asp:boundfield datafield="play_date"
                    convertemptystringtonull="true"
                    headertext="Время игры"/>
                </columns>

          </asp:gridview>
        </form>
    </div>
</body>
</html>
