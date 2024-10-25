using DistributeurATM.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class bossPage : ContentPage
{
	public bossPage()
	{
		InitializeComponent();
		StaticData.CheckEmployee();

		BindingContext = new bossViewModel(new AlertServiceDisplay());
	}
}