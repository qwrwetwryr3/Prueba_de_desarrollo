using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;


namespace Prueba_de_desarrollo
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        SqlConnection conex = new SqlConnection();
        static string servidor = "LAPTOP-TI28IMT7";
        static string bd = "Bodega";
        static string usuario = "SA";
        static string password = "asd123";
        static string puerto = "1433";
        string cadenaConexion = "Data Source=" + servidor + "," + puerto + ";" + "user id=" + usuario + ";" + "password=" + password + ";" + "Initial Catalog=" + bd + ";" + "Persist Security Info=true";
        public SqlConnection establecerConexion()
        {
            try
            {
                conex.ConnectionString = cadenaConexion;
                conex.Open();
                MessageBox.Show("Se conectó correctamente a la Base de Datos");
            }
            catch (SqlException e)
            {
                MessageBox.Show("No se logro conectar a la Base de Datos: " + e.ToString());
            }
            return conex;
        }
        Conexion con = new Conexion();
        private void label1_Click(object sender, EventArgs e){}
        private void txtDescripcion_TextChanged(object sender, EventArgs e){}
        public void limpiar_campos()
        {
            txtValor.Clear();
            txtStockMinimo.Clear();
            txtCodigo_Bodega.Clear();
            txtDescripcion.Clear();
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            con.mostrar("Articulo", primaryGrid);
            conex.Close();
        }
        private void Form1_Load(object sender, EventArgs e)
        {
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            con.mostrar("Articulo", primaryGrid);
            conex.Close();
        }
        private void btnGuardar_Click(object sender, EventArgs e)
        {
            String descripcion = txtDescripcion.Text;
            DateTime Fecha_Ingreso = dateTimeFecha_Ingreso.Value;
            int Valor = Convert.ToInt32(txtValor.Text); 
            int StockMinimo = Convert.ToInt32(txtStockMinimo.Text);
            int CodigoBodega = Convert.ToInt32(txtCodigo_Bodega.Text);
            if (CodigoBodega > 4)
            {
                MessageBox.Show("No se puede ingresar un numero mayor a 4.");
                return;
            }

            conex.ConnectionString = cadenaConexion;
            conex.Open();
            SqlCommand cmd = new SqlCommand("sp_insertar", conex);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@xDescripcion", descripcion);
            cmd.Parameters.AddWithValue("@xFecha_Ingreso", Fecha_Ingreso);
            cmd.Parameters.AddWithValue("@xValor", Valor);
            cmd.Parameters.AddWithValue("@xStockMinimo", StockMinimo);
            cmd.Parameters.AddWithValue("@xCodigo_Bodega", CodigoBodega);
            cmd.ExecuteNonQuery();
            con.mostrar("Articulo", primaryGrid);
            limpiar_campos();
            conex.Close();
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            int Codigo = Convert.ToInt32(txtCodigo.Text);
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            SqlCommand cmd = new SqlCommand("sp_eliminar", conex);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@xCodigo", Codigo);
            if(MessageBox.Show("El articulo " + Codigo + " se eliminara", "Confirmación", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Se ha eliminado el registro");
                }
                catch (SqlException ex)
                {
                    MessageBox.Show(ex.ToString());
                }
            }
            con.mostrar("Articulo", primaryGrid);
            limpiar_campos();
            conex.Close();
        }
        public int filaActual()
        {
            int index = primaryGrid.CurrentRow.Index;
            return index;
        }
        private void dataGridView1_CellDoubleClick(Object sender, DataGridViewCellEventArgs e)
        {
            txtCodigo.Text = primaryGrid.Rows[filaActual()].Cells["Codigo"].Value.ToString();
            txtDescripcion.Text = primaryGrid.Rows[filaActual()].Cells["Descripcion"].Value.ToString();
            dateTimeFecha_Ingreso.Text = primaryGrid.Rows[filaActual()].Cells["Fecha_Ingreso"].Value.ToString();
            txtValor.Text = primaryGrid.Rows[filaActual()].Cells["Valor"].Value.ToString();
            txtStockMinimo.Text = primaryGrid.Rows[filaActual()].Cells["StockMinimo"].Value.ToString();
            txtCodigo_Bodega.Text = primaryGrid.Rows[filaActual()].Cells["Codigo_Bodega"].Value.ToString();
        }
        private void btnActualizar_Click(object sender, EventArgs e)
        {
            string Codigo = primaryGrid.Rows[filaActual()].Cells["Codigo"].Value.ToString();
            SqlCommand cmd = new SqlCommand("sp_actualizar", conex);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@xCodigo", Codigo);
            cmd.Parameters.AddWithValue("@xDescripcion", txtDescripcion.Text);
            cmd.Parameters.AddWithValue("@xFecha_Ingreso", dateTimeFecha_Ingreso.Value);
            cmd.Parameters.AddWithValue("@xValor", txtValor.Text);
            cmd.Parameters.AddWithValue("@xStockMinimo", txtStockMinimo.Text);
            cmd.Parameters.AddWithValue("@xCodigo_Bodega", txtCodigo_Bodega.Text);
            int CodigoBodega = Convert.ToInt32(txtCodigo_Bodega.Text);
            if (CodigoBodega > 4)
            {
                MessageBox.Show("No se puede ingresar un numero mayor a 4.");
                return;
            }
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            if (MessageBox.Show("¿Realmente desea cambiar estos datos?", "Advertencia", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    MessageBox.Show("Producto actualizado");
                }
                catch(SqlException ex)
                {
                    MessageBox.Show(ex.ToString());
                    throw;
                }
            }
            con.mostrar("Articulo", primaryGrid);
            limpiar_campos();
            conex.Close();
        }

        

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            int Codigo = Convert.ToInt32(txtBuscar.Text);
            SqlCommand cmd0 = new SqlCommand("sp_consultar", conex);
            cmd0.CommandType = CommandType.StoredProcedure;
            cmd0.Parameters.AddWithValue("@xCodigo", Codigo);
            try
            {
                cmd0.ExecuteNonQuery();
            }
            catch (SqlException EX)
            {
                MessageBox.Show(EX.ToString());
                throw;
            }
            string consulta="select * from Articulo where Codigo= " +txtBuscar.Text+ "";
            SqlDataAdapter adaptador = new SqlDataAdapter(consulta, conex);
            DataTable dt = new DataTable();
            adaptador.Fill(dt);
            primaryGrid.DataSource = dt;
            SqlDataReader lector;
            lector = cmd0.ExecuteReader();
            conex.Close();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            txtCodigo.Text = "";
            txtValor.Text = "";
            txtStockMinimo.Text = "";
            txtCodigo_Bodega.Text = "";
            txtDescripcion.Text = "";
        }

        private void btnRefrescar_Click(object sender, EventArgs e)
        {
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            con.mostrar("Articulo", primaryGrid);
            limpiar_campos();
            conex.Close();
        }

        private void txtValor_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar >= 32 && e.KeyChar <= 47)||(e.KeyChar >=58 && e.KeyChar <= 255)){
                MessageBox.Show("Solo puede ingresar números", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                e.Handled = true;
                return;
            }
        }

        private void txtStockMinimo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar >= 32 && e.KeyChar <= 47) || (e.KeyChar >= 58 && e.KeyChar <= 255))
            {
                MessageBox.Show("Solo puede ingresar números", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                e.Handled = true;
                return;
            }
        }

        private void txtCodigo_Bodega_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((e.KeyChar >= 32 && e.KeyChar <= 47) || (e.KeyChar >= 58 && e.KeyChar <= 255))
            {
                MessageBox.Show("Solo puede ingresar números", "Alerta", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                e.Handled = true;
                return;
            }
        }
    }
}
