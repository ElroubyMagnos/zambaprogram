using CommunityToolkit.Mvvm.ComponentModel;
using CommunityToolkit.Mvvm.Input;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.View;
using DistributeurATM.ViewModel;
using KeroFruits.Utilities.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DistributeurATM.ViewModel
{
    public partial class ConnecterViewModel : BaseViewModel
    {
        public ComptebancaireCollection toute = new ComptebancaireCollection();
        private sql sqlfile = new sql();
        private Connecter connect;
        public ConnecterViewModel(IAlertService alertService, Connecter connect) : base(alertService)
        {
            this.connect = connect;
            toute = sqlfile.GetAllComptebancaire();
        }

        [ObservableProperty]
        private string username;

        [ObservableProperty]
        private string password;

        [RelayCommand()]
        private void login()
        {
            foreach (var t in toute)
            {
                if (t.Username == Username && t.Password == Password)
                {
                    dépôtpage.CurrentUser = t;
                    App.Current.MainPage = new AppShell();
                    break;
                }
            }
        }
    }
}
