<%@ Page Title="Mortgage-Main" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        
        
        
        .auto-style2 {
            width: 968px;
        }
        
        
        
        .auto-style3 {
            width: 968px;
            height: 14px;
        }
        .auto-style4 {
            width: 806px;
            text-align: left;
            height: 14px;
        }
        
        
        
    .auto-style5 {
        width: 968px;
        height: 35px;
    }
    .auto-style6 {
        width: 806px;
        text-align: left;
        height: 35px;
    }
        
        
        
        .auto-style7 {
            width: 968px;
            height: 29px;
        }
        .auto-style8 {
            width: 806px;
            text-align: left;
            height: 29px;
        }
        
        
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section class ="center">  
    <h2>
        Mortgage Calculator</h2>
    <table>
        <tr>
            <td class="auto-style2">Principle amount:</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBoxPrincipal" runat="server" Width="273px"></asp:TextBox>
            &nbsp;
                <asp:RangeValidator ID="RangeValidatorPrincipal" runat="server" ControlToValidate="TextBoxPrincipal" ErrorMessage="Only Amounts more than 1" ForeColor="Red" MinimumValue="1" Type="Integer" MaximumValue="999999999"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Yearly Percentage interest rate:</td>
            <td class="auto-style1">
                
                
                
                <asp:TextBox ID="TextBoxYrPer" runat="server" Width="273px"></asp:TextBox>
                
                
                
            &nbsp;<strong>%</strong>&nbsp;
                <asp:RangeValidator ID="RangeValidatorPercentage" runat="server" ControlToValidate="TextBoxYrPer" ErrorMessage="0 - 20%" ForeColor="Red" MaximumValue="20" MinimumValue="1" Type="Double"></asp:RangeValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                
                
            </td>
        </tr>
        <tr>
            <td class="auto-style5" >Loan Term in months:</td>
            <td class="auto-style6">
                
                
                <asp:TextBox ID="TextBoxTerms" runat="server" Width="273px"></asp:TextBox>
            &nbsp;
                <asp:RangeValidator ID="RangeValidatorTerms" runat="server" ControlToValidate="TextBoxTerms" ErrorMessage="Choose between 12 - 360" ForeColor="Red" MaximumValue="360" MinimumValue="12" Type="Integer"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" ></td>
            <td class="auto-style1" >
                
                
                </td>
        </tr>
         <tr>
            <td class="auto-style2" ></td>
            <td class="auto-style1" >
                
                
                </td>
        </tr>
        <tr>
            <td class="auto-style2" >Monthly Payments:</td>
            <td class="auto-style1">
                
                
                <asp:Label ID="LblPayments" runat="server"></asp:Label>
            </td>
            </tr>

             <tr>
            <td class="auto-style3" ></td>
            <td class="auto-style4" >
                
                
                </td>
        
        </tr>
        <tr>
            <td class="auto-style2">Sum of All Payments:</td>
            <td class="auto-style1">
                
                
                <asp:Label ID="LblSumPay" runat="server"></asp:Label>
            </td>
        </tr>
         <tr>
            <td class="auto-style2" ></td>
            <td class="auto-style1" >
                
                
                </td>
        </tr>
        <tr>
            <td class="auto-style2">Total Interest Paid:</td>
            <td class="auto-style1">
                
                
                <asp:Label ID="LblInt" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" ></td>
            <td class="auto-style8" >
                
                
                </td>
        </tr>
        <tr>
            <td class="auto-style2" >Monthly Interest Rate:</td>
            <td class="auto-style1" >
                
                
                <asp:Label ID="LblMInterestR" runat="server"></asp:Label>
                
                
                </td>
        </tr>
        <tr class="center">
            <td colspan="2">
                <asp:Button ID="btnCalc" runat="server" Text="Calculate" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnClear" runat="server" Text="Clear" />
            </td>
            
        </tr>
    </table>
    <p>
        &nbsp;</p>
      </section>
    </asp:Content>

