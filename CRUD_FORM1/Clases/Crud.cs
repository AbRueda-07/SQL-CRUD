using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace CRUD_FORM1.Clases
{
    public class Crud
    {
        private readonly string connectionString = "Server=MELANY\\SQLEXPRESS;Database=UMG_DB;Integrated Security=True;TrustServerCertificate=True;";

        public string EliminarAlumno(string carnet)
        {
            string queryAlumno = "DELETE FROM Tb_alumnos WHERE carnet = @carnet";
            string queryNotas = "DELETE FROM Tareas WHERE carnet = @carnet";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    using (SqlCommand commandNotas = new SqlCommand(queryNotas, connection))
                    {
                        commandNotas.Parameters.AddWithValue("@carnet", carnet);
                        commandNotas.ExecuteNonQuery();
                    }

                    using (SqlCommand commandAlumno = new SqlCommand(queryAlumno, connection))
                    {
                        commandAlumno.Parameters.AddWithValue("@carnet", carnet);
                        commandAlumno.ExecuteNonQuery();
                    }
                }

                return "Registro eliminado exitosamente";
            }
            catch (SqlException ex)
            {
                return $"Error de SQL: {ex.Message}";
            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }

        public string ActualizarNotas(string carnet, string nota1, string nota2, string nota3, string nota4)
        {
            string query = @"
                UPDATE Tareas
                SET 
                    nota1 = @nota1,
                    nota2 = @nota2,
                    nota3 = @nota3,
                    nota4 = @nota4
                WHERE carnet = @carnet";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@carnet", carnet);
                    command.Parameters.AddWithValue("@nota1", nota1);
                    command.Parameters.AddWithValue("@nota2", nota2);
                    command.Parameters.AddWithValue("@nota3", nota3);
                    command.Parameters.AddWithValue("@nota4", nota4);

                    connection.Open();
                    command.ExecuteNonQuery();
                    return "Notas actualizadas exitosamente";
                }
            }
            catch (SqlException ex)
            {
                return $"Error de SQL: {ex.Message}";
            }
            catch (Exception ex)
            {
                return $"Error: {ex.Message}";
            }
        }

        public Dictionary<string, string> ObtenerNotasDeTareas(string carnet)
        {
            string query = @"
                SELECT nota1, nota2, nota3, nota4 
                FROM Tareas 
                WHERE carnet = @carnet";

            Dictionary<string, string> notas = new Dictionary<string, string>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@carnet", carnet);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            notas["nota1"] = reader["nota1"].ToString();
                            notas["nota2"] = reader["nota2"].ToString();
                            notas["nota3"] = reader["nota3"].ToString();
                            notas["nota4"] = reader["nota4"].ToString();
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                throw new Exception($"Error de SQL: {ex.Message}");
            }
            catch (Exception ex)
            {
                throw new Exception($"Error: {ex.Message}");
            }

            return notas;
        }

        public string AgregarAlumno(string carnet, string nombre, string email, string seccion, string nota1, string nota2, string nota3, string nota4)
        {
            try
            {
                // Aquí va la lógica real de inserción, por ejemplo en una base de datos
                // Suponiendo que usas SQL Server
                using (SqlConnection conn = new SqlConnection("TU_CONEXION_AQUI"))
                {
                    conn.Open();
                    string query = "INSERT INTO Alumnos (Carnet, Nombre, Email, Seccion, Nota1, Nota2, Nota3, Nota4) " +
                                   "VALUES (@carnet, @nombre, @email, @seccion, @nota1, @nota2, @nota3, @nota4)";
                    SqlCommand cmd = new SqlCommand(query, conn);
                    cmd.Parameters.AddWithValue("@carnet", carnet);
                    cmd.Parameters.AddWithValue("@nombre", nombre);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@seccion", seccion);
                    cmd.Parameters.AddWithValue("@nota1", nota1);
                    cmd.Parameters.AddWithValue("@nota2", nota2);
                    cmd.Parameters.AddWithValue("@nota3", nota3);
                    cmd.Parameters.AddWithValue("@nota4", nota4);
                    cmd.ExecuteNonQuery();
                }

                return "Alumno ingresado correctamente.";
            }
            catch (Exception ex)
            {
                return $"Error al agregar alumno: {ex.Message}";
            }
        }


        public List<string> BuscarTareasPorCarnet(string carnet)
        {
            string query = "SELECT descripcion, fecha_entrega FROM Tareas WHERE carnet = @carnet";
            List<string> tareas = new List<string>();

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@carnet", carnet);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string descripcion = reader["descripcion"].ToString();
                            string fechaEntrega = Convert.ToDateTime(reader["fecha_entrega"]).ToString("dd/MM/yyyy");
                            tareas.Add($"Descripción: {descripcion}, Fecha de Entrega: {fechaEntrega}");
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                tareas.Add($"Error de SQL: {ex.Message}");
            }
            catch (Exception ex)
            {
                tareas.Add($"Error: {ex.Message}");
            }

            return tareas;
        }

        public string MostrarInformacion(string carnet)
        {
            string nombre = "No Existe";
            string query = "SELECT estudiante FROM Tb_alumnos WHERE carnet = @carnet";

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@carnet", carnet);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            nombre = reader["estudiante"].ToString();
                        }
                    }
                }
            }
            catch (SqlException ex)
            {
                nombre = $"Error de SQL: {ex.Message}";
            }
            catch (Exception ex)
            {
                nombre = $"Error: {ex.Message}";
            }

            return nombre;
        }
    }
}
