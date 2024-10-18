using PolkadotAssetHub.NetApi.Generated;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using UniqueryPlus.Collections;
using UniqueryPlus;



namespace MonkeyFinder.Services
{    internal class UniqueryPlusService
    {
        private SubstrateClientExt client;
        public UniqueryPlusService(){
            
            client = new SubstrateClientExt(new Uri("wss://dot-rpc.stakeworld.io/assethub"), default);

                    }
        List<Monkey> nftList;
        public async Task<List<Monkey>> GetMonkeys()
        {
            // Pokud již máme seznam NFT, vrátíme ho
            if (nftList?.Count > 0)
                return nftList;

            // Připojíme klienta, pokud není připojen
            if (!client.IsConnected)
                await client.ConnectAsync();

            // Načtení náhodných kolekcí na prodej
            var randomCollections = await CollectionModel.GetRandomCollectionsForSaleAsync(client, NftTypeEnum.PolkadotAssetHub_NftsPallet, 25);

            // Převedení kolekcí na seznam Monkey
            nftList = randomCollections.Select(collection => new Monkey
            {
                Image = collection.Metadata.Image,
                Name = collection.Metadata.Name
            }).ToList(); // Opraveno na správnou syntaxi

            return nftList;
        }






    }
