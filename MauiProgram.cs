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

            builder.Logging.AddDebug();

            return builder.Build();
        }
    }
}
