using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class bossPage : ContentPage
{
	public bossPage()
	{
		InitializeComponent();

		BindingContext = new bossViewModel(new AlertServiceDisplay());
	}
}