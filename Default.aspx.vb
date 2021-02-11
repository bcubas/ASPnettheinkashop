
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        ' clear all the fields on the screen
        txtName.Text = ""
        txtAddress.Text = ""
        TextCity.Text = ""
        textState.Text = ""
        textZipcode.Text = ""
        txtPhone.Text = ""
        lblprice.Text = ""
        TxtretypeZipcode.Text = ""


        'clear shirt 
        ListBoxshirts.ClearSelection()
        lblTotal.Text = ""

        'clear size
        ddlsize.SelectedIndex = "0"

        'clear quantity to minimum
        txtQuantity.Text = "1"

        'chear shipping
        rblShipping.SelectedIndex = "0"
        lstSummary.Items.Clear()

        txtName.Focus()

    End Sub
    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        lblMessage.Text = "Thank you for shopping at The Inka Shop. Your order is being process."
    End Sub
    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        'Define variables

        Dim myqty As Integer
        Dim myshirts As Double

        Dim subttl As Double
        Dim tax As Double
        Dim taxttl As Double
        Dim total As Double

        'convert the values entereed by te user and store into variable
        myqty = CInt(txtQuantity.Text)
        myshirts = CDbl(ListBoxshirts.SelectedValue)

        'set the tax rate
        tax = 0.07

        'calculate the subtotal
        subttl = myqty * myshirts

        'tax total is the tax rate times the sbttl
        taxttl = tax * subttl

        ' calculate total
        total = subttl + taxttl + rblShipping.SelectedValue

        'put total on label. c means currency
        lblTotal.Text = total.ToString("C")

        'add items to the list box name lstsummary
        lstSummary.Items.Add("Order Details")
        lstSummary.Items.Add("*******************************************")
        lstSummary.Items.Add("Name: " & txtName.Text)
        lstSummary.Items.Add("Phone: " & txtPhone.Text)
        lstSummary.Items.Add("Address: " & txtAddress.Text)
        lstSummary.Items.Add("City: " & TextCity.Text)
        lstSummary.Items.Add("State: " & textState.Text)
        lstSummary.Items.Add("Zipcode: " & textZipcode.Text)
        lstSummary.Items.Add("")

        lstSummary.Items.Add("Shirt Logo: " & ListBoxshirts.SelectedItem.Text)
        lstSummary.Items.Add("Shirt Size: " & ddlsize.SelectedItem.Text)
        lstSummary.Items.Add("Quantity: " & txtQuantity.Text)
        lstSummary.Items.Add("")

        lstSummary.Items.Add("Tax: 7%")
        lstSummary.Items.Add("Final price: " & lblTotal.Text)
        lstSummary.Items.Add("Shipping Option: " & rblShipping.SelectedItem.Text)





        btnConfirm.Visible = True
    End Sub
    Protected Sub ListBoxshirts_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListBoxshirts.SelectedIndexChanged
        lblprice.Text = ListBoxshirts.SelectedValue
    End Sub

End Class
