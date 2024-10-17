using CommunityToolkit.Mvvm.ComponentModel;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;



namespace DistributeurATM.ViewModel
{
    public class BaseViewModel : ObservableObject
    {
        public BaseViewModel(IAlertService alertService)
        {
            this.alertService = alertService;
        }

        protected IAlertService alertService;

        public string BanqueName { get; set; }
        public DateTime Today { get; } = DateTime.Now;
        public string TodayDate => Today.Date.ToString("d-M-yyyy");

    }

}
