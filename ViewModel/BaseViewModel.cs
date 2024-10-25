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
    }
}
