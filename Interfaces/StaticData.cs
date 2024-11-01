using DistributeurATM.Model;
using DistributeurATM.Model.EmployeeGroup;
using DistributeurATM.Model.Source;
using DistributeurATM.View;
using DistributeurATM.View.Customer;
using DistributeurATM.View.Employee;
using KeroFruits.Utilities.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.Interfaces
{
    public static class StaticData
    {
        public static SqlMain SQL = new SqlMain();
        public enum EmployeeType
        {
            admin = 1,
            supervisor = 2,
            employee = 3
        }
        public static async void CheckCustomer()
        {
            if (CurrentCustomer == null)
            {
                await Shell.Current.GoToAsync(nameof(EmployeeHome));
            }
        }
        public static async void CheckEmployee()
        {
            if (CurrentEmployee == null)
            {
                await Shell.Current.GoToAsync(nameof(CustomerHome));
            }
        }
        static Employee cc;
        public static Employee CurrentEmployee
        { 
            get => cc; 
            set
            {
                cc = value;
                if (cc != null)
                {
                    ce = null;
                }
            }
        }
        static Customer ce;
        public static Customer CurrentCustomer 
        { 
            get => ce; 
            set
            {
                ce = value;

                if (ce != null)
                {
                    cc = null;
                }
            }
        }
    }
}
