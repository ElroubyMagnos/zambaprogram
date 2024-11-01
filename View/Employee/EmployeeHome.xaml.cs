namespace DistributeurATM.View.Employee;

public partial class EmployeeHome : ContentPage
{
	public EmployeeHome()
	{
		InitializeComponent();
	}

    private async void AddCustomers_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new AddCustomers());
    }

    private async void BossPage_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new BossPage());
    }

    private async void CreateAccount_Clicked(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new CreateAccounts());
    }
}