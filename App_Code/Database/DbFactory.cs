using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace IndustrialSparePartPortal.App_Code.Database
{
    /// <summary>
    /// ADO.NET Data Access Helper providing parameterized query execution and transaction support.
    /// </summary>
    public static class DbFactory
    {
        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["IndustrialSparePartDB"] != null
            ? ConfigurationManager.ConnectionStrings["IndustrialSparePartDB"].ConnectionString
            : "Data Source=(localdb)\\MSSQLLocalDB;Initial Catalog=IndustrialSparePartDB;Integrated Security=True;TrustServerCertificate=True;";

        public static SqlConnection GetConnection()
        {
            return new SqlConnection(ConnectionString);
        }

        public static DataTable ExecuteQuery(string sql, SqlParameter[] parameters = null, CommandType commandType = CommandType.Text)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            }
        }

        public static object ExecuteScalar(string sql, SqlParameter[] parameters = null, CommandType commandType = CommandType.Text)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }

                    conn.Open();
                    return cmd.ExecuteScalar();
                }
            }
        }

        public static int ExecuteNonQuery(string sql, SqlParameter[] parameters = null, CommandType commandType = CommandType.Text)
        {
            using (SqlConnection conn = GetConnection())
            {
                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.CommandType = commandType;
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }

                    conn.Open();
                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public static DataRow ExecuteSingleRow(string sql, SqlParameter[] parameters = null, CommandType commandType = CommandType.Text)
        {
            DataTable dt = ExecuteQuery(sql, parameters, commandType);
            if (dt.Rows.Count > 0)
            {
                return dt.Rows[0];
            }
            return null;
        }
    }
}
