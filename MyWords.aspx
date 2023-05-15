<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyWords.aspx.cs" Inherits="WebApplication1.MyWords" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="searchBox" runat="server" />
            <asp:Button Text="Search" runat="server" OnClick="Search_Click" />
            <asp:Label runat="server" ID="SWord" />
                <asp:Label runat="server" ID="STran" />
        </div>
        <div>
            <div>
                <asp:TextBox runat="server" ID="AWord" />
                <asp:TextBox runat="server" ID="ATran" />
                <asp:Button Tex="Add" runat="server"  ID="AddSave" OnClick="AddSave_Click1" />
            </div>
        </div>
        <div>
            <asp:Repeater runat="server" ID="myWords">
                    <ItemTemplate>
                            <div class="product-card" style="display: flex;
                                flex-direction: column;
                                width: 300px;
                                border: 2px solid #e6e6e6;
                                border-radius: 6px;
                                padding: 12px;">
                                <img width="280px" height="200px" style="border-radius:6px" src=".<%#Eval("").ToString().Trim('~')%>" alt="<%#Eval("ProductName")%>" />
                                <span style="font-size:20px; text-align:center; font-weight:600"><%#Eval("")%></span>
                                <asp:LinkButton runat="server" Text="Select" CommandName="select" CommandArgument='<%# Eval("") %>' CssClass="product-select-btn" />
                            </div>
                        </ItemTemplate>
            </asp:Repeater>
        </div>
    </form>
</body>
</html>
