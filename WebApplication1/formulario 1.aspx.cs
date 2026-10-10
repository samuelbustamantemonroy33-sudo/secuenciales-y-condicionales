using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class formulario_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // EJERCICIO 1: SUMA DE DOS NÚMEROS
        protected void btnsumar_Click(object sender, EventArgs e)
        {
            try
            {
                int num1 = Convert.ToInt32(Txbn1.Text);
                int num2 = Convert.ToInt32(Txtn2.Text);
                int resultado = num1 + num2;
                lblresultado1.Text = resultado.ToString();
            }
            catch
            {
                lblresultado1.Text = "Error: Ingrese números válidos";
            }
        }

        // EJERCICIO 1: CÁLCULO DE LLANTAS
        protected void btnnumero1_Click(object sender, EventArgs e)
        {
            try
            {
                int cantidadLlantas = Convert.ToInt32(Tbx2.Text);
                int precioUnitario;

                if (cantidadLlantas < 5)
                {
                    precioUnitario = 800;
                }
                else
                {
                    precioUnitario = 700;
                }

                int total = cantidadLlantas * precioUnitario;

                lblresultado2.Text = "$" + total.ToString();
            }
            catch
            {
                lblresultado2.Text = "Error: Ingrese un número válido";
            }
        }

        // EJERCICIO 2: DESCUENTO EN SUPERMERCADO
        protected void btnDescuento_Click(object sender, EventArgs e)
        {
            try
            {
                double totalCompra = Convert.ToDouble(TbxTotalCompra.Text);
                int numeroAleatorio = Convert.ToInt32(TbxNumeroAleatorio.Text);

                double descuentoPorcentaje;

                if (numeroAleatorio < 74)
                {
                    descuentoPorcentaje = 15;
                }
                else
                {
                    descuentoPorcentaje = 20;
                }

                double montoDescuento = totalCompra * (descuentoPorcentaje / 100);
                double totalAPagar = totalCompra - montoDescuento;

                lblPorcentajeDescuento.Text = descuentoPorcentaje.ToString() + "%";
                lblDescuento.Text = "$" + montoDescuento.ToString("F2");
                lblTotalDescuento.Text = "$" + totalAPagar.ToString("F2");
            }
            catch
            {
                lblPorcentajeDescuento.Text = "Error";
                lblDescuento.Text = "Error";
                lblTotalDescuento.Text = "Error: Ingrese valores válidos";
            }
        }

        // EJERCICIO 3: PULSACIONES PARA EJERCICIO AERÓBICO
        protected void btnPulsaciones_Click(object sender, EventArgs e)
        {
            try
            {
                int edad = Convert.ToInt32(TbxEdad.Text);
                string sexo = TbxSexo.Text.ToUpper();

                double pulsaciones;

                if (sexo == "F")
                {
                    // Femenino: (220 - edad) / 10
                    pulsaciones = (220 - edad) / 10.0;
                }
                else if (sexo == "M")
                {
                    // Masculino: (210 - edad) / 10
                    pulsaciones = (210 - edad) / 10.0;
                }
                else
                {
                    throw new Exception("Sexo no válido");
                }

                lblPulsaciones.Text = pulsaciones.ToString("F2") + " pulsaciones";
            }
            catch
            {
                lblPulsaciones.Text = "Error: Ingrese edad válida y sexo (M/F)";
            }
        }
    }
}
