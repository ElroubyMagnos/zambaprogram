using DistributeurATM.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;
using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.View;

public partial class BossPage : ContentPage
{
	public BossPage()
	{
		InitializeComponent();

		CheckEmployee();

		BindingContext = new bossViewModel(new AlertServiceDisplay());
	}
}