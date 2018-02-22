<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Postal_Calculator.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Postal Calculator<br />
            <div>Width: <asp:TextBox ID="widthTextBox" runat="server" AutoPostBack="True" OnTextChanged="widthTextBox_TextChanged"></asp:TextBox></div>
            <div> Height: <asp:TextBox ID="heightTextBox" runat="server" AutoPostBack="True" OnTextChanged="heightTextBox_TextChanged"></asp:TextBox></div>
            <div>Length: <asp:TextBox ID="lengthTextBox" runat="server" AutoPostBack="True" OnTextChanged="lengthTextBox_TextChanged"></asp:TextBox></div>

            <br />

            <div><asp:RadioButton ID="groundRadioButton" runat="server" AutoPostBack="True" GroupName="shipType" Text="Ground" Checked="True" OnCheckedChanged="groundRadioButton_CheckedChanged1" /></div>
            <div><asp:RadioButton ID="airRadioButton" runat="server" AutoPostBack="True" GroupName="shipType" Text="Air" OnCheckedChanged="airRadioButton_CheckedChanged" /></div>
            <div><asp:RadioButton ID="nextDayRadioButton" runat="server" AutoPostBack="True" GroupName="shipType" Text="Next Day" OnCheckedChanged="nextDayRadioButton_CheckedChanged" /></div>

            <br />

            <asp:Label ID="resultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
