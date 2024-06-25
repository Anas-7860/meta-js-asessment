# Zandacross Token Solidity Contract

[Project Tutorial]([https://www.loom.com/share/e3aa9d287b9f4ba88a49902c05a45d0b?sid=3edb8b87-66e3-426f-b25a-54330164e996](https://www.loom.com/share/f6562bcdeeab4bc8a4458004ff72b4dc))

This contract manages a custom token. It keeps track of balances for each user and the total supply. It allows creating new tokens (minting) for an address and destroying existing tokens (burning) from the sender's account.
## Description 
The `MyToken` contract implements basic functionalities to handle a custom token on the Ethereum blockchain. It includes:

1.Stores token details (name, symbol, total supply) publicly.

2.Tracks balances per address using a mapping.

3.Mints new tokens for an address with `mint`.

4.Burns tokens from an address (with balance check) with `burn`.


This contract serves as a simple introduction to creating and managing custom tokens using Solidity.

## Getting Started
### Executing Program
1. **Run on Remix IDE:** Use [Remix](https://remix.ethereum.org/) for online execution.
2. **Create a new Solidity file:** Click "+" in the left sidebar, save as `.sol` (e.g., `MyToken.sol`).
3. **Paste the code:** Copy and paste your Solidity code into the file.
```
// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public tokenName = "Zandacross";
    string public tokenabbvr = "ZDRX";
    uint public totalsupply = 0;

    // mapping variable here
   mapping(address => uint) public balance;
    // mint function
   function mint(address add, uint value)public{
    totalsupply +=value;
    balance[add] += value;
   }
    // burn function
  function burn(address add, uint value)public{
   
    if(balance[add]>=value){
    totalsupply -=value;
    balance[add] -= value;
   }
   }
}


```
4. **Gettin' it ready to run:** Head over to the "Solidity Compiler" tab on the left. Make sure the "Compiler" version is set to something that works with your code (like 0.8.25). Then, hit that "Compile MyToken.sol" button!

5. **Deployment time!:** Now switch to the "Deploy & Run Transactions" tab. Find `MyToken` in the dropdown menu and click "Deploy" to unleash your contract to the world (well, a virtual world at least).

6. **Let's play!:** Remix provides a cool interface to interact with your contract. Use it to call those `mint` and `burn` functions. Just fill in the info they need and hit the buttons to make it happen!

## Help
If you encounter any issues, ensure the following:
1. The Solidity compiler version is set correctly.
2. The address used in function calls is valid.
3. The balance of the address is sufficient for burning tokens.

For additional help, use the Remix documentation or community forums.   

## Authors
Md Anas Khan

anaskhan9501499079@gmail.com
## License
This project is licensed under the MIT License.
