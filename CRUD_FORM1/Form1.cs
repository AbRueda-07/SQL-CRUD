using CRUD_FORM1.Clases;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace guiP1B
{
    public partial class Form1 : Form
    {

        Crud miCrud = new Crud();
        public Form1()
        {
            InitializeComponent();



        }


        private void buttonSaludar_Click(object sender, EventArgs e)
        {
            MessageBox.Show("HOla te saludo desde el formulario 👊👊👊");
        }
        private void buttonEliminar_Click(object sender, EventArgs e)
        {
            string carnet = textBoxCarnet.Text;

            if (string.IsNullOrWhiteSpace(carnet))
            {
                MessageBox.Show("Por favor, ingrese un carné válido para eliminar el registro.");
                return;
            }

            DialogResult confirmacion = MessageBox.Show(
                "¿Está seguro de que desea eliminar este registro?",
                "Confirmar eliminación",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning
            );

            if (confirmacion == DialogResult.Yes)
            {
                try
                {
                    string respuesta = miCrud.EliminarAlumno(carnet);
                    MessageBox.Show(respuesta);

                    // Limpiar los campos del formulario
                    textBoxCarnet.Clear();
                    textBoxEstudiante.Clear();
                    textBoxEmail.Clear();
                    textBoxNota1.Clear();
                    textBoxNota2.Clear();
                    textBoxNota3.Clear();
                    textBoxNota4.Clear();
                    comboBox1Seccion.SelectedIndex = -1;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error al eliminar el registro: {ex.Message}");
                }
            }
        }

        private void buttonBuscar_Click(object sender, EventArgs e)
        {
            string carnet = textBoxCarnet.Text;

            try
            {
                // Obtener el nombre del alumno
                string nombre = miCrud.MostrarInformacion(carnet);
                textBoxEstudiante.Text = nombre;

                // Obtener las notas desde la tabla Tareas
                Dictionary<string, string> notas = miCrud.ObtenerNotasDeTareas(carnet);

                // Mostrar las notas en los TextBox
                textBoxNota1.Text = notas.ContainsKey("nota1") ? notas["nota1"] : "N/A";
                textBoxNota2.Text = notas.ContainsKey("nota2") ? notas["nota2"] : "N/A";
                textBoxNota3.Text = notas.ContainsKey("nota3") ? notas["nota3"] : "N/A";
                textBoxNota4.Text = notas.ContainsKey("nota4") ? notas["nota4"] : "N/A";
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al buscar las notas: {ex.Message}");
            }
        }





        private void buttonCrear_Click(object sender, EventArgs e)
        {
            string nombre = textBoxEstudiante.Text;
            string carnet = textBoxCarnet.Text;
            string email = textBoxEmail.Text;
            string seccion = comboBox1Seccion.Text;
            string nota1 = textBoxNota1.Text;
            string nota2 = textBoxNota2.Text;
            string nota3 = textBoxNota3.Text;
            string nota4 = textBoxNota4.Text;

            string respuesta = miCrud.AgregarAlumno(carnet, nombre, email, seccion, nota1, nota2, nota3, nota4);
            MessageBox.Show(respuesta);
        }


        private void Form1_Load(object sender, EventArgs e)
        {
            this.BackColor = System.Drawing.Color.LightBlue;
            this.BackgroundImage = System.Drawing.Image.FromFile("C:\\Users\\USUARIO\\Downloads\\IMAGEN FONDO\\wallpaper-1614874_1280.jpg");
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            foreach (Control control in this.Controls)
            {
                control.Font = new System.Drawing.Font("Times New Roman", 8, System.Drawing.FontStyle.Bold);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string carnet = textBoxCarnet.Text;
            string nota1 = textBoxNota1.Text;
            string nota2 = textBoxNota2.Text;
            string nota3 = textBoxNota3.Text;
            string nota4 = textBoxNota4.Text;

            try
            {
                string respuesta = miCrud.ActualizarNotas(carnet, nota1, nota2, nota3, nota4);
                MessageBox.Show(respuesta);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error al actualizar las notas: {ex.Message}");
            }
        }

        private void buttonEliminarRegistro_Click(object sender, EventArgs e)
        {
            string carnet = textBoxCarnet.Text;

            if (string.IsNullOrWhiteSpace(carnet))
            {
                MessageBox.Show("Por favor, ingrese un carné válido para eliminar el registro.");
                return;
            }

            DialogResult confirmacion = MessageBox.Show(
                "¿Está seguro de que desea eliminar este registro?",
                "Confirmar eliminación",
                MessageBoxButtons.YesNo,
                MessageBoxIcon.Warning
            );

            if (confirmacion == DialogResult.Yes)
            {
                try
                {
                    string respuesta = miCrud.EliminarAlumno(carnet);
                    MessageBox.Show(respuesta);

                    // Limpiar los campos del formulario
                    textBoxCarnet.Clear();
                    textBoxEstudiante.Clear();
                    textBoxEmail.Clear();
                    textBoxNota1.Clear();
                    textBoxNota2.Clear();
                    textBoxNota3.Clear();
                    textBoxNota4.Clear();
                    comboBox1Seccion.SelectedIndex = -1;
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error al eliminar el registro: {ex.Message}");
                }
            }
        }

    }
}
