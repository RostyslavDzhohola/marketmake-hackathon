# 🏗 scaffold-eth: Lender

> a component for depositing & borrowing assets on Aave

---

## quickstart

```bash
git clone -b lender https://github.com/RostyslavDzhohola/marketmake-hackathon.git lender-scaffold

cd lender-scaffold
```

```bash

yarn install

```

```bash

yarn start

```

- In a second terminal window run:

```bash

yarn fork

```
This branch uses a local fork of mainnet, which is easy to do with Hardhat ([see here to learn more](https://hardhat.org/guides/mainnet-forking.html)). The template configuration uses my Alchemy API key. To get your free alchemy API key...
- Go to alchemyapi.io and get an API key for mainnet
- Replace the Infura URL with an Alchemy URL with your API key (i.e. https://eth-mainnet.alchemyapi.io/v2/<API_KEY_HERE>) into the `fork` script on line 28 of /packages/hardhat/package.json

📱 Open http://localhost:3000 to see the app

- Send your burner wallet some ETH using the faucet
- Swap some ETH for DAI
- Go to "Lend" and Deposit DAI into Aave
- Borrow whatever assets you want!

Notes:
- The on-chain requests are quite heavy for this branch, so it can sometimes take the mainnet fork a little while to get going - you may need to refresh several times before everything is cached.
