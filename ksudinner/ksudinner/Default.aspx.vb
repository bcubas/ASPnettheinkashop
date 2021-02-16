
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub LinkButton1_Click(sender As Object, e As EventArgs) Handles LinkButton1.Click
        Response.Redirect("http://www.kennesaw.edu")
    End Sub

    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        'clear all the fields on the screen
        ' clear text fields
        txtName.Text = ""
        txtPhone.Text = ""
        txtQuantity.Text = "1"

        ' clear checkbox by setting back false. it turns it off
        chkAllergies.Checked = False

        'clear labels
        lblTotal.Text = ""
        lblMessage.Text = ""

        'clear drop down list a set it to the default index
        ddlBread.SelectedIndex = "0"

        'clear list sumary control to empty
        lstSummary.Items.Clear()

        ' goes back to the 1st choice
        rbolistPlatter.SelectedIndex = "0"

        'sets them back to default
        rbolistDrinks.SelectedIndex = "0"
        rblDelivery.SelectedIndex = "0"

        ' clear checkbox list clear all the items
        cblCondiments.ClearSelection()

        'goes back to the top
        txtName.Focus()


    End Sub
    Protected Sub btnConfirm_Click(sender As Object, e As EventArgs) Handles btnConfirm.Click
        lblMessage.Text = "Thank you for your order. Your order is being Process."
    End Sub

    Protected Sub btnCalculate_Click(sender As Object, e As EventArgs) Handles btnCalculate.Click
        'define variables
        Dim myqty As Integer
        Dim myplatter As Double
        Dim mydrink As Double

        Dim subttl As Double
        Dim tax As Double
        Dim taxttl As Double
        Dim total As Double

        ' convert the values entered by the user and store into variable
        myqty = CInt(txtQuantity.Text)
        myplatter = CDbl(rbolistPlatter.SelectedValue)
        mydrink = CDbl(rbolistDrinks.SelectedValue)

        ' set the tax rate
        tax = 0.05

        'calculate the subtttl
        subttl = (myqty * myplatter) + (myqty * mydrink)

        'tax total is the tax rate times the sbttl
        taxttl = tax * subttl

        'calculate the total
        total = subttl + taxttl + rblDelivery.SelectedValue

        'put total into the label. c means currency
        lblTotal.Text = total.ToString("c")

        'add items to the list box name lstsummary
        lstSummary.Items.Add("Order Details")
        lstSummary.Items.Add("*******************")
        lstSummary.Items.Add("Name: " & txtName.Text)
        lstSummary.Items.Add("Phone: " & txtPhone.Text)

        lstSummary.Items.Add("*******************")
        lstSummary.Items.Add("Tax: 5%")
        lstSummary.Items.Add("Final Price: " & lblTotal.Text)
        lstSummary.Items.Add(rblDelivery.SelectedItem)

        ' check for allergies and add the right message to list box
        If chkAllergies.Checked = True Then
            lstSummary.Items.Add("this customer has allergies")
        Else
            lstSummary.Items.Add("no allergies")
        End If

        'which condiments did the user select
        For Each item As ListItem In cblCondiments.Items
            If item.Selected Then
                lstSummary.Items.Add("Condiment: " & item.Value)
            End If

        Next

        lstSummary.Items.Add("*************************")

        btnConfirm.Visible = True

    End Sub
End Class
