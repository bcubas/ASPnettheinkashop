<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Practice</title>
    <link href="css/ksudinner.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 184px;
        }
        .auto-style3 {
            width: 184px;
            height: 26px;
        }
        .auto-style4 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>
            
    <h1>KSU Meeting Dinner Selections</h1>
     
    <h2>Choose your dinner preferences below.</h2>
    </header>
    <section>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" Width="520px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1Name" runat="server" ControlToValidate="txtName" ErrorMessage="*" ForeColor="Red">Name Required</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="520px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Phone Number" ForeColor="#CC0000">**</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" BorderStyle="None" ControlToValidate="txtPhone" ErrorMessage="Enter Correct format" ForeColor="#CC0000" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">(###) ###-####</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Platter choice:</td>
                <td>
                    <asp:RadioButtonList ID="rbolistPlatter" runat="server" AutoPostBack="True" Width="246px">
                        <asp:ListItem Selected="True" Value="12.00">Chicken</asp:ListItem>
                        <asp:ListItem Value="10.00">Fish</asp:ListItem>
                        <asp:ListItem Value="8.00">Veggie</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Drink:</td>
                <td>
                    <asp:RadioButtonList ID="rbolistDrinks" runat="server" AutoPostBack="True" Width="175px">
                        <asp:ListItem Selected="True" Value="0.00">Water</asp:ListItem>
                        <asp:ListItem Value="1.00">Tea</asp:ListItem>
                        <asp:ListItem Value="1.25">Soda</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Bread:</td>
                <td>
                    <asp:DropDownList ID="ddlBread" runat="server" AutoPostBack="True" Width="231px">
                        <asp:ListItem>None</asp:ListItem>
                        <asp:ListItem>Garlic Brread</asp:ListItem>
                        <asp:ListItem>Wheat</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td>
                    <asp:TextBox ID="txtQuantity" runat="server" Width="215px">1</asp:TextBox>
                    <asp:RangeValidator ID="RangeValidatorQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter a Value greater than 0" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="1" Type="Integer">**</asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Allergies:</td>
                <td class="auto-style4">
                    <asp:CheckBox ID="chkAllergies" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:RadioButtonList ID="rblDelivery" runat="server" AutoPostBack="True" Width="207px">
                        <asp:ListItem Selected="True" Value="2.00">Delivery</asp:ListItem>
                        <asp:ListItem Value="0.00">Pick Up</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Condiments, etc:</td>
                <td>
                    <asp:CheckBoxList ID="cblCondiments" runat="server" Width="233px">
                        <asp:ListItem Selected="True">None</asp:ListItem>
                        <asp:ListItem>Ketchup</asp:ListItem>
                        <asp:ListItem>Mayo</asp:ListItem>
                        <asp:ListItem>Tartar Sauce</asp:ListItem>
                        <asp:ListItem>Silverwear</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" />
&nbsp;
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Visible="False" />
&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="83px" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td>
                    <asp:ListBox ID="lstSummary" runat="server" Height="264px" Width="499px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        </section>
        <footer>
            <a href="http://www.kennesaw.edu">KSU regular hyperlink </a> <br />
            Delails hyperlink control 
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Details.aspx">Details</asp:HyperLink>
            <br />
            Linkbutton control

            <asp:LinkButton ID="LinkButton1" runat="server">KSU Site</asp:LinkButton>

        </footer>
    </div>
    </form>
</body>
</html>
