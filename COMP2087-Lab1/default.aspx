<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="COMP2087_Lab1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>COMP2087 - Student Sign-up</title>
    <link href="mainStyles.css" rel="stylesheet" />
</head>
<body>
    <h1>Sign-up</h1>
    <form id="newStudent" runat="server">
        <div>
            <label for="txtName">Name: </label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtPass">Password: </label>
            <asp:TextBox ID="txtPass" TextMode="Password" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="txtAddress">Address: </label>
            <asp:TextBox ID="txtAddress" TextMode="MultiLine" runat="server"></asp:TextBox>
        </div>
        <div>
            <label for="rblEducation">Education Level: </label>
            <asp:RadioButtonList ID="rblEducation" runat="server">
                <asp:ListItem>High School</asp:ListItem>
                <asp:ListItem>College</asp:ListItem>
                <asp:ListItem>Graduate</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
        </div>
        <div>
            <label for="cbLaptop">I have a laptop (check box if true): </label>
            <asp:CheckBox ID="cbLaptop" runat="server" Checked="false" />
        </div>
        <div>
            <label for="cblSkills"> What skills do you possess </label>
            <asp:CheckBoxList ID="cblSkills" runat="server">
                <asp:ListItem>HTML</asp:ListItem>
                <asp:ListItem>PHP</asp:ListItem>
                <asp:ListItem>CSS</asp:ListItem>
                <asp:ListItem>C#</asp:ListItem>
                <asp:ListItem>Java</asp:ListItem>
            </asp:CheckBoxList>
        </div>
        <div>
            <label for="lbProvince">Where are you from? </label>
            <asp:DropDownList ID="ddlProvince" runat="server">
                <asp:ListItem Value="AB" Text="Alberta"></asp:ListItem>
                <asp:ListItem Value="NB" Text="New Brunswick"></asp:ListItem>
                <asp:ListItem Value="QB" Text="Qeubec"></asp:ListItem>
                <asp:ListItem Value="ON" Text="Ontario" Selected="True"></asp:ListItem>
                <asp:ListItem Value="Ot" Text="Other"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
    <h2> Results </h2>
    <div id="formContent">
        <p><asp:Label ID="lblName" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblPass" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblAddress" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblEducation" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblLaptop" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblSkills" runat="server"></asp:Label></p>
        <p><asp:Label ID="lblProvince" runat="server"></asp:Label></p>
    </div>
</body>
</html>
