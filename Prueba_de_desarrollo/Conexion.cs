using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Data;

namespace Prueba_de_desarrollo
{
    class Conexion
    {
        SqlConnection conex = new SqlConnection();
        static string servidor= "LAPTOP-TI28IMT7";
        static string bd="Bodega";
        static string usuario="SA";
        static string password="asd123";
        static string puerto= "1433";
        string cadenaConexion = "Data Source=" + servidor + "," + puerto + ";" + "user id=" + usuario + ";" + "password=" + password + ";" + "Initial Catalog=" + bd + ";" + "Persist Security Info=true";
        public void mostrar(String tabla, DataGridView grid)
        {
            string cadenaConexion = "Data Source=" + servidor + "," + puerto + ";" + "user id=" + usuario + ";" + "password=" + password + ";" + "Initial Catalog=" + bd + ";" + "Persist Security Info=true";
            SqlDataAdapter adapter = new SqlDataAdapter();
            DataTable contenedor = new DataTable();
            conex.ConnectionString = cadenaConexion;
            conex.Open();
            string query = "select * from " + tabla;
            SqlCommand cmd = new SqlCommand(query, conex);
            try
            {
                cmd.ExecuteNonQuery();
                adapter.SelectCommand = cmd;
                adapter.Fill(contenedor);
                grid.DataSource = contenedor;
            }
            catch(SqlException ex)
            {
                Console.WriteLine("Error: " + ex.ToString());
                throw;
            }
            conex.Close();
        }
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
        
    }
}
