<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="condicionales.aspx"  %>

<!DOCTYPE html>
<script runat="server">

    protected void btnCalcularFianza_Click(object sender, EventArgs e)
    {
        double monto = Convert.ToDouble(TxtMontoFianza.Text);
        double cuota;

        if (monto < 50000)
        {
            cuota = monto * 0.03; // 3%
        }
        else
        {
            cuota = monto * 0.02; // 2%
        }

        lblResultadoFianza.Text = "$" + cuota.ToString();
    }

    protected void btnCalcularColegiatura_Click(object sender, EventArgs e)
    {
        double costo = Convert.ToDouble(TxtCostoColegiatura.Text);
        double promedio = Convert.ToDouble(TxtPromedio.Text);
        double total;

        if (promedio >= 9)
        {
            // Descuento del 30% y sin IVA
            double descuento = costo * 0.30;
            total = costo - descuento;
        }
        else
        {
            // Colegiatura completa con 10% de IVA
            double iva = costo * 0.10;
            total = costo + iva;
        }

        lblResultadoColegiatura.Text = "$" + total.ToString();
    }

    protected void btnCalcularCasa_Click(object sender, EventArgs e)
    {
        double costoCasa = Convert.ToDouble(TxtCostoCasa.Text);
        double ingresos = Convert.ToDouble(TxtIngresos.Text);
        double enganche;
        double pagoMensual;

        if (ingresos < 8000)
        {
            enganche = costoCasa * 0.15; // 15%
            double resto = costoCasa - enganche;
            pagoMensual = resto / 120; // 10 años (120 meses)
        }
        else
        {
            enganche = costoCasa * 0.30; // 30%
            double resto = costoCasa - enganche;
            pagoMensual = resto / 84; // 7 años (84 meses)
        }

        lblResultadoEnganche.Text = "$" + enganche.ToString();
        lblResultadoPagoMensual.Text = "$" + pagoMensual.ToString();
    }

    protected void btnCalcularSAR_Click(object sender, EventArgs e)
{
    double salario = Convert.ToDouble(TxtSalario.Text);
    double pctEmpresa = Convert.ToDouble(TxtPctEmpresa.Text);
    double aporteExtra = Convert.ToDouble(TxtAporteExtra.Text);

    double montoEmpresa = salario * (pctEmpresa / 100);
    double totalDepositado = montoEmpresa + aporteExtra;
    double pagoNeto = salario - aporteExtra;

    lblResultadoTotalDepositado.Text = "$" + totalDepositado.ToString();
    lblResultadoPagoNeto.Text = "$" + pagoNeto.ToString();
}
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 207px;
        }
        .auto-style5 {
            height: 227px;
            width: 660px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblMontoFianza" runat="server" Text="favor ingresar el monto de la fianza:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtMontoFianza" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblCuotaText" runat="server" Text="la cuota a pagar es:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResultadoFianza" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Button ID="btnCalcularFianza" runat="server" Text="calcular" OnClick="btnCalcularFianza_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        
        <br />
        <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblCostoColegiatura" runat="server" Text="favor ingresar el costo de la colegiatura:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TxtCostoColegiatura" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPromedio" runat="server" Text="favor ingresar el promedio del alumno:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:TextBox ID="TxtPromedio" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblTotalColegiatura" runat="server" Text="el total a pagar es:"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:Label ID="lblResultadoColegiatura" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Button ID="btnCalcularColegiatura" runat="server" Text="calcular" OnClick="btnCalcularColegiatura_Click" />
        </td>
        <td class="auto-style1">&nbsp;</td>
    </tr>
</table>
        <br />
        <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblCostoCasa" runat="server" Text="favor ingresar el costo de la casa:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtCostoCasa" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblIngresos" runat="server" Text="favor ingresar los ingresos del comprador:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtIngresos" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblEngancheText" runat="server" Text="el enganche es:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResultadoEnganche" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPagoMensualText" runat="server" Text="el pago mensual es:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResultadoPagoMensual" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Button ID="btnCalcularCasa" runat="server" Text="calcular" OnClick="btnCalcularCasa_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
        <br />
        <table class="auto-style5">
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblSalario" runat="server" Text="favor ingresar el salario mensual:"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtSalario" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPctEmpresa" runat="server" Text="porcentaje obligatorio de la empresa (%):"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtPctEmpresa" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblAporteExtra" runat="server" Text="aporte extra voluntario ($):"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="TxtAporteExtra" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblTotalDepositadoText" runat="server" Text="total depositado en la cuenta al mes:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResultadoTotalDepositado" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Label ID="lblPagoNetoText" runat="server" Text="pago mensual que recibirá el trabajador:"></asp:Label>
        </td>
        <td>
            <asp:Label ID="lblResultadoPagoNeto" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style6">
            <asp:Button ID="btnCalcularSAR" runat="server" Text="calcular" OnClick="btnCalcularSAR_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
    </form>
</body>
</html>
