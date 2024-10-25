using DistributeurATM.Interfaces;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class dépôtpage : ContentPage
{
	public dépôtpage()
	{
		InitializeComponent();
		StaticData.CheckCustomer();

		BindingContext = new dépôtViewModel(new AlertServiceDisplay());
	}
}