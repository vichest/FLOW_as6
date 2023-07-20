# FLOW_as6
**Project Name: CryptoPoops NFT Collection**

Welcome to the CryptoPoops NFT Collection! This repository contains a smart contract implementation for managing a collection of Non-Fungible Tokens (NFTs) on the Flow blockchain. The smart contract provides various functionalities to interact with the NFT collection, including depositing new NFTs and borrowing existing ones.

**Smart Contract Interface: MyCollectionPublic**

The `MyCollectionPublic` interface defines the public functions available for interacting with the NFT collection. These functions are as follows:

1. `deposit(token: @NonFungibleToken.NFT)`: Deposits a new NFT into the collection. The `token` parameter must be a reference to an NFT of the `NonFungibleToken.NFT` type.

2. `getIDs(): [UInt64]`: Retrieves an array of UInt64 IDs representing the unique identifiers of NFTs in the collection.

3. `borrowNFT(id: UInt64): &NonFungibleToken.NFT`: Borrows an existing NFT from the collection based on its `id`. The function returns a reference to the borrowed NFT of the `NonFungibleToken.NFT` type.

4. `borrowAuthNFT(id: UInt64): &NFT`: Borrows an authorized NFT from the collection based on its `id`. The function returns an authorized reference to the NFT of the `NFT` type.

**Read NFT Information - `main` Function**

The `main` function is a public function that allows anyone to read information about a specific NFT from the collection. It takes two parameters:

- `account`: The address of the account that owns the NFT collection.
- `id`: The unique identifier of the NFT to be read.

The function performs the following steps:

1. Borrow the `CollectionPublic` and `MyCollectionPublic` capabilities from the specified `account` using the `getCapability` function.
2. Call the `borrowAuthNFT` function on the `CollectionPublic` capability to borrow the authorized NFT with the specified `id`.
3. Extract the properties of the borrowed NFT, including `name`, `favouriteFood`, and `luckyNumber`.
4. Return the extracted information as an array of `AnyStruct`.

**Usage**

To use this smart contract, you need to deploy it on the Flow blockchain and interact with it using a compatible blockchain wallet or development environment. The contract can be used to create, manage, and trade NFTs within the CryptoPoops collection.

To read NFT information, call the `main` function with the desired `account` address and `id` of the NFT you want to retrieve information about.

For further details on deploying and using the CryptoPoops NFT Collection, refer to the documentation and code samples in this repository.

Thank you for choosing CryptoPoops NFT Collection! If you have any questions or need assistance, feel free to reach out to our community.

Happy NFT-ing! 🎉🌈
