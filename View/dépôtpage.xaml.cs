using DistributeurATM.Model;
using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class dépôtpage : ContentPage
{
	public static Comptebancaire CurrentUser { get; set; }
	public dépôtpage()
	{
		InitializeComponent();

		BindingContext = new dépôtViewModel(new AlertServiceDisplay());
	}
}