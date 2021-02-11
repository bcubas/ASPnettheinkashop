<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Main Page</title>
    <link href ="css/StyleSheet.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        
        .auto-style6 {
            width: 800px;
            height: 60px;
        }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <header>
            
  
        <div class="head"><img alt="The Inka Shop" class="auto-style2" longdesc="inka shop logo" src="images/inkalogo.jpg" /><img alt="llama head" class="auto-style5" longdesc="llama head" src="images/llama%20face.png" /></div>
       

            <h2 class="head">Welcome to the Inka shop. </h2>
       

      
    
    </header>
    <section>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Name:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtName" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ControlToValidate="txtName" ErrorMessage="Name Required" ForeColor="Red">**</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Address:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtAddress" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorAdress" runat="server" ControlToValidate="txtAddress" ErrorMessage="Address Required" ForeColor="Red">**</asp:RequiredFieldValidator>
                </td>
                </tr>

                <tr>
                <td class="auto-style2">City:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TextCity" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorCity" runat="server" ControlToValidate="TextCity" ErrorMessage="CIty Required" ForeColor="Red">**</asp:RequiredFieldValidator>
                </td>
           
            </tr>
            <tr>
                <td class="auto-style2">State:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="textState" runat="server" Width="400px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorState" runat="server" ControlToValidate="textState" ErrorMessage="State Required" ForeColor="Red">**</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">ZipCode:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="textZipcode" runat="server" Width="400px" MaxLength="5"></asp:TextBox>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidatorzipcode" runat="server" ControlToValidate="textZipcode" ErrorMessage="Please put a 5 digit zip code" ForeColor="Red" ValidationExpression="\d{5}(-\d{4})?">#####</asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">Retype ZipCode:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="TxtretypeZipcode" runat="server" Width="400px" MaxLength="5"></asp:TextBox>
                    &nbsp;<asp:CompareValidator ID="CompareZipcode" runat="server" ControlToCompare="textZipcode" ControlToValidate="TxtretypeZipcode" ErrorMessage="ZipCode doesn't match" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>

                        <tr>
                <td class="auto-style2">Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="520px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Enter Phone Number" ForeColor="Red">**</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" BorderStyle="None" ControlToValidate="txtPhone" ErrorMessage="Enter Correct format" ForeColor="Red" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">(###) ###-####</asp:RegularExpressionValidator>
                </td>
            </tr>

           
            <tr>
                <td class="auto-style2">Shirts:</td>
                <td class="auto-style4">
                    <asp:ListBox ID="ListBoxshirts" runat="server" AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="25.23">Te Amo Peru</asp:ListItem>
                        <asp:ListItem Value="22.43 ">Macchu Picchu </asp:ListItem>
                        <asp:ListItem Value="24.25">Lima</asp:ListItem>
                        <asp:ListItem Value="23.53">Callao</asp:ListItem>
                        <asp:ListItem Value="22.34">Beach</asp:ListItem>
                        <asp:ListItem Value="24.50">Llama</asp:ListItem>
                    </asp:ListBox>
                &nbsp;
                    <asp:Label ID="lblprice" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Size</td>
                <td class="auto-style4">
                    <asp:DropDownList ID="ddlsize" runat="server" AutoPostBack="True" Width="231px">
                        <asp:ListItem>Small</asp:ListItem>
                        <asp:ListItem Value="Medium">Medium</asp:ListItem>
                        <asp:ListItem Selected="True" Value="Large">Large</asp:ListItem>
                        <asp:ListItem>X-Large</asp:ListItem>
                        <asp:ListItem>XX-Large</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Quantity:</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtQuantity" runat="server" Width="150px">1</asp:TextBox>
                    <asp:RangeValidator ID="RangeValidatorQuantity" runat="server" ControlToValidate="txtQuantity" ErrorMessage="Enter a Value greater than 0" ForeColor="Red" MaximumValue="100" MinimumValue="1" Type="Integer">**</asp:RangeValidator>
                </td>
            </tr>
            
            <tr>
                <td class="auto-style2">Shipping Options:</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="rblShipping" runat="server" AutoPostBack="True" Width="207px">
                        <asp:ListItem Selected="True" Value="4.99">USPS</asp:ListItem>
                        <asp:ListItem Value="9.95">FedEx</asp:ListItem>
                        <asp:ListItem Value="7.95">UPS</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp; </td>
            </tr>
           
            <tr>
                <td class="auto-style3"></td>
                <td class="auto-style4">
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp; </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="btnCalculate" runat="server" Text="Calculate" />
&nbsp;
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm" Visible="False" />
&nbsp;
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="83px" CausesValidation="False" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style4">
                    <asp:ListBox ID="lstSummary" runat="server" Height="264px" Width="499px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="lblMessage" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
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
