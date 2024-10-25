using DistributeurATM.Model;
using DistributeurATM.Model.Employee;
using DistributeurATM.Model.Source;
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
        public static sql SQL = new sql();
        public enum EmployeeType
        {
            admin = 1,
            supervisor = 2,
            employee = 3
        }
        public static async void CheckCustomer()
        {
            if (CurrentCustomer != null)
            {
                await Shell.Current.Navigation.PopAsync();
            }
        }
        public static async void CheckEmployee()
        {
            if (CurrentEmployee != null)
            {
                await Shell.Current.Navigation.PopAsync();
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
