using DistributeurATM.Interfaces;
using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class DepotPage : ContentPage
{
	public DepotPage()
	{
		InitializeComponent();

		StaticData.CheckCustomer();
	}
}