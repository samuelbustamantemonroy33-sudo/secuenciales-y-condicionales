<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="formulario 1.aspx.cs" Inherits="WebApplication1.formulario_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ejercicios</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-top: 37px;
        }
        .auto-style5 {
            width: 100%;
            border: 2px solid #000000;
            margin-top: 20px;
            padding: 10px;
        }
        .auto-style6 {
            width: 687px;
        }
        td {
            padding: 8px;
        }
    </style>
</head>
<body style="color: #333300; background-color: #FFCCCC">
    <form id="form1" runat="server">
        <!-- EJERCICIO 1: SUMA DE DOS NÚMEROS -->
        <h2>Ejercicio 1: Suma de dos números</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lbl1" runat="server" Text="Favor ingrese un primer numero:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txbn1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Lbl2" runat="server" Text="Favor ingrese un segundo numero:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Txtn2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblresultado" runat="server" Text="El resultado es:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblresultado1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnsumar" runat="server" OnClick="btnsumar_Click" Text="Sumar" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <!-- EJERCICIO 1: CÁLCULO DE LLANTAS -->
        <h2>Ejercicio 1b: Cálculo de precio de llantas</h2>
        <table class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="lblnumero1" runat="server" Text="Favor ingresar el número de llantas:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="Tbx2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label1" runat="server" Text="El total a pagar es:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblresultado2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnnumero1" runat="server" Text="Calcular" OnClick="btnnumero1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <!-- EJERCICIO 2: DESCUENTO SUPERMERCADO -->
        <h2>Ejercicio 2: Descuento en supermercado</h2>
        <table class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label2" runat="server" Text="Favor ingresar el total de la compra ($):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TbxTotalCompra" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label3" runat="server" Text="Número aleatorio (0-100):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TbxNumeroAleatorio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4" runat="server" Text="Porcentaje de descuento:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblPorcentajeDescuento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label4b" runat="server" Text="Descuento ($):"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDescuento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label5" runat="server" Text="Total a pagar:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblTotalDescuento" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnDescuento" runat="server" Text="Calcular" OnClick="btnDescuento_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>

        <!-- EJERCICIO 3: PULSACIONES AERÓBICO -->
        <h2>Ejercicio 3: Pulsaciones para ejercicio aeróbico</h2>
        <table class="auto-style5">
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label6" runat="server" Text="Favor ingresar la edad:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TbxEdad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label7" runat="server" Text="Sexo (M/F):"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TbxSexo" runat="server" MaxLength="1"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Label ID="Label8" runat="server" Text="Pulsaciones por cada 10 segundos:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblPulsaciones" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:Button ID="btnPulsaciones" runat="server" Text="Calcular" OnClick="btnPulsaciones_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
