using MonkeyFinder.Services;
using System.Numerics;
using UniqueryPlus.Collections;
using UniqueryPlus.External;

namespace MonkeyFinder.ViewModel
{
    public partial class NftViewModel : BaseViewModel
    {
        [ObservableProperty]
        private ICollectionBase currentCollection;

        [ObservableProperty]
        [NotifyPropertyChangedFor(nameof(FloorPriceText))]
        private BigInteger floorPrice;

        public string FloorPriceText => String.Format("Floor price: {0:0.00} DOT", (double)FloorPrice / double.Pow(10, 10));

        // Constructor
        public NftViewModel()
        {
            Title = "NFT Finder";

            Task task = InitializeRandomCollectionAsync();
        }
        // Initialize the first collection
        private async Task InitializeRandomCollectionAsync()
        {
            try
            {
                await LoadNextCollectionAsync();
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Unable to load NFT: {ex.Message}");
            }
        }


        [ObservableProperty]
        bool isRefreshing;

        async Task LoadNextCollectionAsync()
        {
            if (IsBusy)
                return;

            try
            {
                IsBusy = true;

                CurrentCollection = await UniqueryPlusService.GetRandomCollectionAsync();

                var fullCollection = await CurrentCollection.GetFullAsync();

                FloorPrice = ((ICollectionStats)fullCollection).FloorPrice;


                Console.WriteLine(CurrentCollection.Metadata.Name);
                Console.WriteLine(CurrentCollection.Metadata.Image);


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
        async Task SelectYesAsync()
        {
            try
            {
                await Browser.Default.OpenAsync(new Uri(((IKodaLink)CurrentCollection).KodaLink), BrowserLaunchMode.SystemPreferred);
            }
            catch (Exception ex)
            {
                // An unexpected error occurred. No browser may be installed on the device.
            }
        }

        // Volba Ne - pouze zobrazí další NFT
        [RelayCommand]
        async Task SelectNoAsync()
        {
            await LoadNextCollectionAsync();
        }


        [RelayCommand]
        async Task GoToDetailsAsync()
        {
            await Task.Delay(1);
        }
    }

}
