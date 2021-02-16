
Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
    Protected Sub btnClear_Click(sender As Object, e As EventArgs) Handles btnClear.Click
        'clear boxes
        TextBoxPrincipal.Text = ""
        TextBoxTerms.Text = ""
        TextBoxYrPer.Text = ""

        'clear labels
        LblInt.Text = ""
        LblPayments.Text = ""
        LblSumPay.Text = ""

        TextBoxPrincipal.Focus()

    End Sub
    Protected Sub btnCalc_Click(sender As Object, e As EventArgs) Handles btnCalc.Click
        ' converting percentage to decimals
        Dim Percentagechange As Double

        'Defining Variables
        Dim Principal As Integer
        Dim MPercentage As Double
        Dim Monthly As Integer

        Dim MPay As Double
        Dim ttlPay As Double
        Dim ttlInt As Double


        Percentagechange = CDbl(TextBoxYrPer.Text)

        Principal = CInt(TextBoxPrincipal.Text)
        MPercentage = (Percentagechange / 100) / 12
        Monthly = CInt(TextBoxTerms.Text)

        MPay = Principal * MPercentage / (1 - (1 / (1 + MPercentage) ^ Monthly))
        ttlPay = MPay * Monthly
        ttlInt = ttlPay - Principal



        'put total on label
        LblPayments.Text = MPay.ToString("c")
        LblSumPay.Text = ttlPay.ToString("c")
        LblInt.Text = ttlInt.ToString("c")
        LblMInterestR.Text = MPercentage.ToString("p")
    End Sub
End Class
