using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.View;
using System.Collections.ObjectModel;
using static DistributeurATM.Interfaces.StaticData;
using DistributeurATM.Model.EmployeeGroup;
using DistributeurATM.View.Customer;
using DistributeurATM.View.Employee;

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
        private async void login()
        {
            foreach (var t in Customers)
            {
                if (t.Name == Username && t.Password == Password)
                {
                    CurrentCustomer = t;
                    App.Current.MainPage = new AppShell();

                    Routing.RegisterRoute(nameof(CustomerHome), typeof(CustomerHome));
                    await Shell.Current.GoToAsync(nameof(CustomerHome));
                    break;
                }
            }

            foreach (var t in Employees)
            {
                if (t.Name == Username && t.Password == Password)
                {
                    CurrentEmployee = t;
                    App.Current.MainPage = new AppShell();

                    Routing.RegisterRoute(nameof(EmployeeHome), typeof(EmployeeHome));
                    await Shell.Current.GoToAsync(nameof(EmployeeHome));
                    break;
                }
            }
        }
    }
}
