using CommunityToolkit.Mvvm.ComponentModel;
using DistributeurATM.Interfaces;
using DistributeurATM.Model;
using DistributeurATM.Model.EmployeeGroup;
using DistributeurATM.Model.Source;
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
    public partial class bossViewModel : BaseViewModel
    {
        [ObservableProperty]
        private ObservableCollection<Customer> customers;

        public bossViewModel(IAlertService alertService) : base(alertService)
        {
            CheckEmployee();

            Customers = SQL.GetAllAClass<Customer>("Customers");

            IsAdmin = CurrentEmployee.Type == EmployeeType.admin;
            IsNotAdmin = !IsAdmin;
        }

        [ObservableProperty]
        private bool isAdmin;

        [ObservableProperty]
        private bool isNotAdmin;

        [ObservableProperty]
        private Customer selectedCustomer;
    }
}
