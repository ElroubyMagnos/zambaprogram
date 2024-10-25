using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Interfaces;
using DistributeurATM.Model;
using DistributeurATM.Model.Employee;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.View;
using DistributeurATM.ViewModel;
using KeroFruits.Utilities.DataAccess;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.ViewModel
{
    public partial class ConnecterViewModel : BaseViewModel
    {
        public ObservableCollection<Customer> Customers = new ObservableCollection<Customer>();
        public ObservableCollection<Employee> Employees = new ObservableCollection<Employee>();
        private Connecter connect;
        public ConnecterViewModel(IAlertService alertService, Connecter connect) : base(alertService)
        {
            this.connect = connect;
            Customers = SQL.GetAllAClass<Customer>("Customers");
            Employees = SQL.GetAllAClass<Employee>("Employees");
        }

        [ObservableProperty]
        private string username;

        [ObservableProperty]
        private string password;

        [RelayCommand()]
        private void login()
        {
            foreach (var t in Customers)
            {
                if (t.Name == Username && t.Password == Password)
                {
                    CurrentCustomer = t;
                    App.Current.MainPage = new AppShell();
                    break;
                }
            }

            foreach (var t in Employees)
            {
                if (t.Name == Username && t.Password == Password)
                {
                    CurrentEmployee = t;
                    App.Current.MainPage = new AppShell();
                    break;
                }
            }
        }
    }
}
