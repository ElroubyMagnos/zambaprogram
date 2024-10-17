using DistributeurATM.View;

namespace DistributeurATM
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            MainPage = new Connecter();
        }
    }
}
