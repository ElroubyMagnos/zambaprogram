using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.ViewModel
{
    public partial class dépôtViewModel : BaseViewModel
    {
        public dépôtViewModel() : base(new AlertServiceDisplay())
        {
            CurrentCustomerView = CurrentCustomer;
        }

        [ObservableProperty]
        private Customer currentCustomerView;

        [ObservableProperty]
        private decimal currentEntry;

        [RelayCommand()]
        private void Deposit()
        {
            CurrentCustomerView.Money = CurrentCustomerView.Money + CurrentEntry;

            alertService.ShowAlert("", "J'ai ajouté de l'argent");

            SQL.AddHistory(CurrentEntry, CurrentCustomerView, 0);
        }
        [RelayCommand()]
        private void Withdraw()
        {
            if (CurrentCustomerView.Money < CurrentEntry)
            {
                alertService.ShowAlert("", "Erreur : Vous ne pouvez pas retirer plus que le montant disponible");
            }
            else
            {
                CurrentCustomerView.Money = CurrentCustomerView.Money - CurrentEntry;
                SQL.AddHistory(CurrentEntry, CurrentCustomerView, 1);
                alertService.ShowAlert("", $"Le montant de {CurrentEntry} $ a été retiré du compte");
            }
        }
    }
}
