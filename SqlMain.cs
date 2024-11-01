using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;
using System.Data;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Services;
using DistributeurATM.Model.Source;
using DistributeurATM.Model.EmployeeGroup;
using static DistributeurATM.Interfaces.StaticData;
using System.Collections.ObjectModel;

namespace KeroFruits.Utilities.DataAccess
{
    public class SqlMain
    {
        public void AddCustomer(string username, string pass)
        {
            Connector.Open();

            new SqlCommand($@"INSERT INTO [dbo].[Customers]
           ([Username]
           ,[Password]
           ,[Money])
     VALUES
           ('{username}'
           ,'{pass}'
           ,'0')",Connector).ExecuteNonQuery();

            Connector.Close();
        }
        public AlertServiceDisplay alertService = new AlertServiceDisplay();
        public SqlConnection Connector = new SqlConnection("Server=localhost;Initial Catalog=zamba;User ID=sa;Password=123;TrustServerCertificate=True");
        public ObservableCollection<T> GetAllAClass<T>(string Table) where T: class
        {
            try
            {
                ObservableCollection<T> Group = new ObservableCollection<T>();
                string sql = $"SELECT * FROM {Table};";

                Connector.Open();

                SqlCommand cmd = new SqlCommand(sql, Connector);
                SqlDataReader dataReader = cmd.ExecuteReader();

                while (dataReader.Read())
                {
                    T sm = GetOne<T>(dataReader);
                    if (sm != null)
                    {
                        Group.Add(sm);
                    }
                }
                dataReader.Close();
                Connector.Close();
                return Group;
            }
            catch (Exception ex)
            {
                Connector.Close();
                return null;
            }
        }

        private T GetOne<T>(SqlDataReader dr) where T : class
        {
            if (typeof(T) == typeof(Customer))
            {
                return new Customer(dr.GetInt32(0), dr.GetString(1), dr.GetString(2), dr.GetDecimal(3)) as T;
            }
            else if (typeof(T) == typeof(Employee))
            {
                return new Employee(dr.GetInt32(0), dr.GetString(1), dr.GetString(2), (EmployeeType)dr.GetInt16(3)) as T;
            }

            return null;
        }

        public void SetMoney(int id, decimal money)
        {
            try
            {
                string sql = $"UPDATE Customers SET Money = '{money}' WHERE ID = {id};";

                if (Connector.State != ConnectionState.Open)
                    Connector.Open();

                SqlCommand cmd = new SqlCommand(sql, Connector);

                cmd.ExecuteNonQuery();
            }
            catch { }
        }

        public void SetTypeOfEmployee(EmployeeType Type, int id)
        {
            try
            {
                string sql = $"UPDATE Employees SET Type = '{(int)Type}' WHERE ID = {id};";

                if (Connector.State != ConnectionState.Open)
                    Connector.Open();

                SqlCommand cmd = new SqlCommand(sql, Connector);

                cmd.ExecuteNonQuery();
            }
            catch { }
        }

        public void AddHistory(decimal Money, Customer User, int Type)
        {
            try
            {
                string sql = $@"INSERT INTO [dbo].[OperationsHistory]
                               ([Type]
                               ,[Money]
                               ,[Owner])
                         VALUES
                               ('{Type}'
                               ,'{Money}'
                               ,'{User.ID}')";

                if (Connector.State != ConnectionState.Open)
                    Connector.Open();

                SqlCommand cmd = new SqlCommand(sql, Connector);

                cmd.ExecuteNonQuery();
            }
            catch { }
        }
    }
}
