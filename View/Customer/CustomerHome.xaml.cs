namespace DistributeurATM.View.Customer;

public partial class CustomerHome : ContentPage
{
	public CustomerHome()
	{
		InitializeComponent();
	}

    private async void Depot_Clicked(object sender, EventArgs e)
    {
		await Navigation.PushAsync(new DepotPage());
    }

    private async void MoneyTrans_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new moneytrans());
    }
}