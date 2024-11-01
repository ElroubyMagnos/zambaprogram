using static DistributeurATM.Interfaces.StaticData;

namespace DistributeurATM.View.Employee;

public partial class AddCustomers : ContentPage
{
	public AddCustomers()
	{
		InitializeComponent();

		CheckEmployee();
	}
}