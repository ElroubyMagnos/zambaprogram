using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.View.Employee;
using KeroFruits.Utilities.DataAccess;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.ViewModel
{
    public partial class CreateAccountViewModel : BaseViewModel
    {
        ObservableCollection<Customer> AllCustomers = new ObservableCollection<Customer>();
        

        [ObservableProperty]
        private string username;

        [ObservableProperty]
        private string password;
        public CreateAccountViewModel() : base(new AlertServiceDisplay())
        {
            var sql = new SqlMain();

            AllCustomers = sql.GetAllAClass<Customer>("Customers");
        }

        [RelayCommand()]
        private void Add()
        {
            if (Username.Length == 0 || Password.Length == 0)
            {
                return;
            }

            if (AllCustomers.FirstOrDefault(x => x.Name == Username) == null)
            {
                var sql = new SqlMain();

                sql.AddCustomer(Username, Password);
            }
            else alertService.ShowAlert("Error", "Account already exist");
        }
    }
}
