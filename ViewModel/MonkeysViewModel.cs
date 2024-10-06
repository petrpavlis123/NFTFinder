using MonkeyFinder.Services;
using System.Collections.ObjectModel;

namespace MonkeyFinder.ViewModel;

public partial class MonkeysViewModel : BaseViewModel
{
    public ObservableCollection<Monkey> Monkeys { get; } = new();
    public ObservableCollection<Monkey> FavoriteMonkeys { get; } = new();

    MonkeyService monkeyService;
    IConnectivity connectivity;
    IGeolocation geolocation;

    private int currentIndex = 0;

    [ObservableProperty]
    Monkey currentMonkey;

    public MonkeysViewModel(MonkeyService monkeyService, IConnectivity connectivity, IGeolocation geolocation)
    {
        Title = "Monkey Finder";
        this.monkeyService = monkeyService;
        this.connectivity = connectivity;
        this.geolocation = geolocation;

        // Načti opice při inicializaci
        LoadMonkeysCommand.Execute(null);
    }

    [ObservableProperty]
    bool isRefreshing;

    // Načítání opic
    [RelayCommand]
    async Task LoadMonkeysAsync()
    {
        if (IsBusy)
            return;

        try
        {
            if (connectivity.NetworkAccess != NetworkAccess.Internet)
            {
                await Shell.Current.DisplayAlert("No connectivity!", "Please check internet and try again.", "OK");
                return;
            }

            IsBusy = true;
            var monkeys = await monkeyService.GetMonkeys();

            if (Monkeys.Count != 0)
                Monkeys.Clear();

            foreach (var monkey in monkeys)
                Monkeys.Add(monkey);

            // Zobraz první opici
            if (Monkeys.Count > 0)
                CurrentMonkey = Monkeys[currentIndex];
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"Unable to get monkeys: {ex.Message}");
            await Shell.Current.DisplayAlert("Error!", ex.Message, "OK");
        }
        finally
        {
            IsBusy = false;
            IsRefreshing = false;
        }
    }

    // Přidání příkazu pro nalezení nejbližší opice
    [RelayCommand]
    async Task GetClosestMonkeyAsync()
    {
        // Implementuj logiku pro nalezení nejbližší opice
        if (Monkeys.Count == 0)
        {
            await Shell.Current.DisplayAlert("No monkeys!", "There are no monkeys to find.", "OK");
            return;
        }

        // Zde bys měl implementovat logiku pro nalezení nejbližší opice
        await Shell.Current.DisplayAlert("Find Closest", "Finding closest monkey...", "OK");
    }

    // Volba Ano - přidá opici do oblíbených a zobrazí další
    [RelayCommand]
    void SelectYes()
    {
        if (CurrentMonkey == null)
            return;

        FavoriteMonkeys.Add(CurrentMonkey);
        NextMonkey();
    }

    // Volba Ne - pouze zobrazí další opici
    [RelayCommand]
    void SelectNo()
    {
        NextMonkey();
    }

    // Přejde na další opici v seznamu
    void NextMonkey()
    {
        currentIndex++;

        if (currentIndex >= Monkeys.Count)
        {
            // Konec seznamu - můžeš zobrazit hlášení nebo načíst opice znovu
            currentIndex = 0;
        }

        CurrentMonkey = Monkeys[currentIndex];
    }

    [RelayCommand]
    async Task GoToDetails(Monkey monkey)
    {
        if (monkey == null)
            return;

        await Shell.Current.GoToAsync(nameof(DetailsPage), true, new Dictionary<string, object>
        {
            {"Monkey", monkey }
        });
    }
}
