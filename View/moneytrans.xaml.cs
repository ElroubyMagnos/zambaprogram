using DistributeurATM.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class moneytrans : ContentPage
{
	public moneytrans()
	{
		InitializeComponent();
		StaticData.CheckCustomer();

		BindingContext = new moneytransViewModel(new AlertServiceDisplay());
	}
}