using PolkadotAssetHub.NetApi.Generated;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniqueryPlus.Collections;
using UniqueryPlus;
using UniqueryPlus.Nfts;



namespace MonkeyFinder.Services
{
    public class UniqueryPlusService
    {
        private static Queue<ICollectionBase> collections = new Queue<ICollectionBase>();

        private static SubstrateClientExt client = new SubstrateClientExt(new Uri("wss://dot-rpc.stakeworld.io/assethub"), default);
        public static async Task<ICollectionBase> GetRandomCollectionAsync()
        {
            if (collections.Count() != 0)
            {
                return collections.Dequeue();
            }

            // Připojíme klienta, pokud není připojen
            if (!client.IsConnected)
                await client.ConnectAsync();

            // Načtení náhodných kolekcí na prodej
            var randomCollections = await CollectionModel.GetRandomCollectionsForSaleAsync(client, NftTypeEnum.PolkadotAssetHub_NftsPallet, 25);

            collections = new Queue<ICollectionBase>(randomCollections);

            return collections.Dequeue();
        }
    }

    }
