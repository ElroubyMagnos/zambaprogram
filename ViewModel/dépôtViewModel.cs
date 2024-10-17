using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.View;
using KeroFruits.Utilities.DataAccess;

namespace DistributeurATM.ViewModel
{
    public partial class dépôtViewModel : BaseViewModel
    {
        private sql Sql;
        [ObservableProperty]
        private decimal currentMoney;
        public dépôtViewModel(IAlertService alertService) : base(alertService)
        {
            CurrentCustomerView = dépôtpage.CurrentUser;
            CurrentMoney = dépôtpage.CurrentUser.Money;

            Sql = new sql();
        }

        [ObservableProperty]
        private Comptebancaire currentCustomerView;

        [ObservableProperty]
        private decimal currentEntry;

        [RelayCommand()]
        private void Deposit()
        {
            CurrentMoney += CurrentEntry;

            alertService.ShowAlert("", "J'ai ajouté de l'argent");

            RefreshDB();
        }
        void RefreshDB()
        {
            Sql.SetMoney(CurrentCustomerView.ID, CurrentMoney);
        }
        [RelayCommand()]
        private void Withdraw()
        {
            if (CurrentMoney < CurrentEntry)
            {
                alertService.ShowAlert("", "Erreur : Vous ne pouvez pas retirer plus que le montant disponible");
            }
            else
            {
                CurrentMoney -= CurrentEntry;
                RefreshDB();
                alertService.ShowAlert("", $"Le montant de {CurrentEntry} $ a été retiré du compte");
            }
        }
    }
}
