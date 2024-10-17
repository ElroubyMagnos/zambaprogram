using DistributeurATM.Utilities.Services;
using DistributeurATM.ViewModel;

namespace DistributeurATM.View;

public partial class Connecter : ContentPage
{
	public Connecter()
	{
		InitializeComponent();

		BindingContext = new ConnecterViewModel(new AlertServiceDisplay(), this);
	}
}