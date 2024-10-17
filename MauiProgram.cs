using DistributeurATM.Utilities.Interfaces;
using DistributeurATM.Utilities.Services;
using DistributeurATM.View;
using DistributeurATM.ViewModel;
using Microsoft.Extensions.Logging;
using CommunityToolkit.Maui;


namespace DistributeurATM
{
    public static class MauiProgram
    {
        //private const string CONFIG_FILE = @"C:\Users\drach\Desktop\POO 1\DistributeurATM\DistributeurATM\Configuration\Datas\ConfigJson.txt";
        private const string CONFIG_FILE = @"C:\Users\drach\Desktop\POO 1\DistributeurATM\DistributeurATM\Configuration\Datas\ConfigSql.txt";

        public static MauiApp CreateMauiApp()
        {
            var builder = MauiApp.CreateBuilder();
            builder
                .UseMauiApp<App>()
                .UseMauiCommunityToolkit()
                .ConfigureFonts(fonts =>
                {
                    fonts.AddFont("OpenSans-Regular.ttf", "OpenSansRegular");
                    fonts.AddFont("OpenSans-Semibold.ttf", "OpenSansSemibold");
                });

            /*
            Services.AddSingleton() permet de faire de l'injection de dépendance dans le 
            constructeur des ViewModel par exemple
            sans devoir faire un new DataAccessJsonFile() dans celui-ci
            une instance est créée à ce stade et rendue disponible dans les constructeurs des 
            classes. L'instance est permanente pour la méthode AddSingleton
            tandis qu'elle est recréée à chaque fois qu'on en a besoin quand on fait du 
            .AddTransient()
            Les Services doivent être vu comme un conteneur de services disponibles ailleurs. Il 
            contient toutes les instances spécifiées dans les <> 
            */

            //Singleton for AlertServiceDisplay 
            builder.Services.AddSingleton<IAlertService>(new AlertServiceDisplay());
            AlertServiceDisplay alertService = new AlertServiceDisplay();
            //builder.Services.AddSingleton<IDataAccess>(new DataAccessJsonFile(dataFilesManager));
            //builder.Services.AddSingleton<IDataAccess>(new DataAccessJsonFile(dataFilesManager, alertService));

            builder.Logging.AddDebug();

            return builder.Build();
        }
    }
}
