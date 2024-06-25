# Zandacross Token
This Solidity program is an ERC20 token contract named "Zandacross tokne". It demonstrates the use of the OpenZeppelin library for creating a burnable ERC20 token with ownership capabilities. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how to implement basic ERC20 token functionalities.
## Demo Video
[Video Tutorial](https://www.loom.com/share/a97574e1a9ec48a292071586c8416669)
## Description
This program is a smart contract written in Solidity, a programming language utilized for creating smart contracts on the Ethereum blockchain. The contract, "ZandacrossToken" builds upon the capabilities of OpenZeppelin's ERC20 and Ownable contracts. It encompasses functions for minting new tokens, burning tokens, and transferring tokens. This program acts as an entry point to more intricate Solidity programming through the utilization of OpenZeppelin's libraries and can serve as a groundwork for progressively sophisticated token contracts moving forward.
## Getting Started
### Executing Program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, follow these steps:

1. #### Create a New File:
    - Click on the "+" icon in the left-hand sidebar.
    - Save the file with a `.sol` extension (e.g., `token.sol`).
2. #### Copy and Paste the Code:
    - Copy and paste the code present in the `token.sol` file into the new file you created on Remix.
3. #### Compile the Code:
    - Click on the "Solidity Compiler" tab in the left-hand sidebar.
    - Ensure the "Compiler" option is set to "0.8.20" (or another compatible version).
    - Click on the "Compile token.sol" button.
4. #### Deploy the Contract:
    - Click on the "Deploy & Run Transactions" tab in the left-hand sidebar.
    - Select the "Zandacrosstoken" contract from the dropdown menu.
    - Enter the mint_ZCXtoken (e.g., `1000000`) in the deployment input box.
    - Click on the "Deploy" button.
5. #### Interact with the Contract:
    - After deployment, you can interact with the contract using the provided functions.
    - To mint tokens, call the `mint_ZCXtoken` function with the recipient address and amount.
    - To burn tokens, call the `burn_ZCXtoken` function with the amount to burn.
    - To transfer tokens, call the `transferto` function with the recipient address which is included in the openzeppelin contract which we have imported and amount.
  
## Authors
Metacrafter MD Anas Khan

anaskhan9501499079@gmail.com

## License
This project is licensed under the MIT License - see the LICENSE.md file for details.
