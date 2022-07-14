<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Line.aspx.cs" Inherits="Segment_visual.Line" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
            <div class="auto-style1">
                <asp:Table ID="Tb_Line" runat="server" BackColor="White" BorderColor="Black" BorderStyle="None" Height="10px" HorizontalAlign="Center">
                    <asp:TableRow runat="server">
                    </asp:TableRow>
                </asp:Table>
            </div>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="N: "></asp:Label>
            <asp:TextBox ID="Tb_N" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Text="A: "></asp:Label>
            <asp:TextBox ID="Tb_A" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Text="B: "></asp:Label>
            <asp:TextBox ID="Tb_B" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Text="C: "></asp:Label>
            <asp:TextBox ID="Tb_C" runat="server"></asp:TextBox>
            <br />
        </div>
        <p>
            &nbsp;</p>
        <p class="auto-style1">
            <asp:Button ID="Bt_pnt" runat="server" Height="26px" OnClick="Bt_pnt_Click" Text="Paint" />
        </p>
    </form>
</body>
</html>
