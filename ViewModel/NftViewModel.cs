public partial class NftViewModel : BaseViewModel
{
    public ObservableCollection<NFT> NFTs { get; } = new();
    public ObservableCollection<NFT> FavoriteNFTs { get; } = new();

    NftService nftService;
    IConnectivity connectivity;

    private int currentIndex = 0;

    [ObservableProperty]
    NFT currentNFT;

    public NftViewModel(NftService nftService, IConnectivity connectivity)
    {
        Title = "NFT Finder";
        this.nftService = nftService;
        this.connectivity = connectivity;

        // Načti NFT při inicializaci
        LoadNFTsCommand.Execute(null);
    }

    [ObservableProperty]
    bool isRefreshing;

    // Načítání NFT
    [RelayCommand]
    async Task LoadNFTsAsync()
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
            var nfts = await nftService.GetNFTs();

            if (NFTs.Count != 0)
                NFTs.Clear();

            foreach (var nft in nfts)
                NFTs.Add(nft);

            // Zobraz první NFT
            if (NFTs.Count > 0)
                CurrentNFT = NFTs[currentIndex];
        }
        catch (Exception ex)
        {
            Debug.WriteLine($"Unable to get NFTs: {ex.Message}");
            await Shell.Current.DisplayAlert("Error!", ex.Message, "OK");
        }
        finally
        {
            IsBusy = false;
            IsRefreshing = false;
        }
    }

    // Volba Ano - přidá NFT do oblíbených a zobrazí další
    [RelayCommand]
    void SelectYes()
    {
        if (CurrentNFT == null)
            return;

        FavoriteNFTs.Add(CurrentNFT);
        NextNFT();
    }

    // Volba Ne - pouze zobrazí další NFT
    [RelayCommand]
    void SelectNo()
    {
        NextNFT();
    }

    // Přejde na další NFT v seznamu
    void NextNFT()
    {
        currentIndex++;

        if (currentIndex >= NFTs.Count)
        {
            // Konec seznamu
            currentIndex = 0;
        }

        CurrentNFT = NFTs[currentIndex];
    }

    [RelayCommand]
    async Task GoToDetails(NFT nft)
    {
        if (nft == null)
            return;

        await Shell.Current.GoToAsync(nameof(DetailsPage), true, new Dictionary<string, object>
        {
            {"NFT", nft }
        });
    }
}

