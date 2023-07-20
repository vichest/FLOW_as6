import CryptoPoops from 0x01
import NonFungibleToken from 0x02

transaction(recipient: Address, name: String, favouriteFood: String, luckyNumber: Int) {

    prepare(acct: AuthAccount) {
        let nftMinter = acct.borrow<&CryptoPoops.Minter>(from: /storage/Minter)
            ?? panic("Failed to borrow the Minter reference")

        let publicReference = getAccount(recipient)
            .getCapability(/public/Collection)
            .borrow<&{NonFungibleToken.CollectionPublic}>()
            ?? panic("This account does not have a Collection")
        let newNFT <- nftMinter.createNFT(name: name, favouriteFood: favouriteFood, luckyNumber: luckyNumber)
        publicReference.deposit(token: <-newNFT)
    }

    execute {
        log("Stored new NFTs in the collection")
    }
}
