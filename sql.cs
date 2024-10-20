using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using System.Data;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Services;

namespace KeroFruits.Utilities.DataAccess
{
    public class sql
    {
        public AlertServiceDisplay alertService = new AlertServiceDisplay();
        public SqlConnection Connnextor = new SqlConnection("Server=192.168.1.150;Initial Catalog=zamba;User ID=sa;Password=Magnos0182163958;TrustServerCertificate=True");
        public ComptebancaireCollection GetAllComptebancaire()
        {
            try
            {
                ComptebancaireCollection ComptebancaireCol = new ComptebancaireCollection();
                string sql = "SELECT * FROM Comptebancaire;";

                Connnextor.Open();

                SqlCommand cmd = new SqlCommand(sql, Connnextor);
                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    Comptebancaire sm = GetComptebancaire(dataReader);
                    if (sm != null)
                    {
                        ComptebancaireCol.Add(sm);
                    }
                }
                dataReader.Close();
                Connnextor.Close();
                return ComptebancaireCol;
            }
            catch
            {
                Connnextor.Close();
                return null;
            }
        }

        private Comptebancaire GetComptebancaire(SqlDataReader dr)
        {
            return new Comptebancaire(dr.GetInt32(0), dr.GetString(1), dr.GetString(2), dr.GetInt16(3) == 1, dr.GetDecimal(4), dr.GetInt16(5) == 1);
        }

        public void SetMoney(int id, decimal money)
        {
            try
            {
                ComptebancaireCollection ComptebancaireCol = new ComptebancaireCollection();
                string sql = $"UPDATE Comptebancaire SET Money = '{money}' WHERE ID = {id};";

                Connnextor.Open();

                SqlCommand cmd = new SqlCommand(sql, Connnextor);

                cmd.ExecuteNonQuery();

                Connnextor.Close();
            }
            catch 
            {
                Connnextor.Close();
            }
        }
    }
}
