# Hardhat Bookstore project connect with metamask

In this project we are connecting our project which is a decentralized Bookstore frontend with the metamask wallet and writing a smart contract according to it.

## Description

This project is a decentralized bookstore application built with React and Ethereum smart contracts. Users can connect their MetaMask wallet, view their account balance, add new books, and purchase available books. The app integrates with a smart contract to handle book transactions securely and transparently on the blockchain.

### Executing program

After cloning the github, you will want to do the following to get the code running on your computer.

Inside the project directory, in the terminal type: npm i
Open two additional terminals in your VS code
In the second terminal type: npx hardhat node
In the third terminal, type: npx hardhat run --network localhost scripts/deploy.js
Back in the first terminal, type npm run dev to launch the front-end.
After this, the project will be running on your localhost. Typically at http://localhost:3000/

when you will arrive on the site then you will be asked to connect your metamask wallet with the forntend and you will be able to add some books, check that which account is connected on the forntend and how much balance is there.

## Authors

Md Anas Khan
anaskhan9501499079@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
