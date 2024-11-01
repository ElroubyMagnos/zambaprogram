using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Interfaces;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.View;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.ViewModel
{
    public partial class moneytransViewModel : BaseViewModel
    {
        [ObservableProperty]
        private Customer customerAccount;

        [ObservableProperty]
        private decimal money;

        [ObservableProperty]
        private string username;

        public moneytransViewModel(IAlertService alertService) : base(alertService)
        {
            CustomerAccount = CurrentCustomer;
        }

        [RelayCommand()]
        private async void TransferMoney()
        {
            if (Money > 0 && CustomerAccount != null)
            {
                if (CustomerAccount.Money > Money)
                {
                    var user = CheckValidUsername();
                    if (user != null)
                    {
                        await SendMoney(CustomerAccount, user);
                    }
                    else await Shell.Current.DisplayAlert("Error", "User not found", "Cancel");
                }
                else await Shell.Current.DisplayAlert("Error", "Tu n'as pas assez d'argent", "nope");
            }
            else await Shell.Current.DisplayAlert("Error", "Quelque chose ne va pas", "Cancel");
        }

        async Task SendMoney(Customer from, Customer to)
        {
            from.Money -= Money;
            to.Money += Money;

            SQL.SetMoney(from.ID, from.Money);
            SQL.SetMoney(to.ID, to.Money);

            SQL.AddHistory(Money, from, 2);
        }

        Customer CheckValidUsername()
        {
            var All = SQL.GetAllAClass<Customer>("Customers");

            foreach (var sqlal in All)
            {
                if (sqlal.Name == Username)
                {
                    return sqlal;
                }
            }

            return null;
        }
    }
}
