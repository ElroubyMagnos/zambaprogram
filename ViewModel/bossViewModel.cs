using CommunityToolkit.Mvvm.ComponentModel;
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
    public partial class bossViewModel : BaseViewModel
    {
        [ObservableProperty]
        private bool isAdmin;

        [ObservableProperty]
        private bool isNotAdmin;

        [ObservableProperty]
        private ComptebancaireCollection emails = new ComptebancaireCollection();
        public bossViewModel(IAlertService alertService) : base(alertService)
        {
            Emails = new sql().GetAllComptebancaire();

            IsAdmin = dépôtpage.CurrentUser.Admin;
            IsNotAdmin = !IsAdmin;
        }

        [ObservableProperty]
        private Comptebancaire selectedEmail;
    }
}
