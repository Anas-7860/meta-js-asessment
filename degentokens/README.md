# Degen token verification using fuji network

The DegenTokens smart contract creates a custom ERC20 token on the Avalanche blockchain. It allows the owner to mint and reward tokens, track player rewards, facilitate player-to-player trading, and redeem tokens for in-game rewards. This enhances player engagement and loyalty within the Degen Gaming ecosystem.

## Description

In this we are verifying the smart contract using fuji network and snowtrace to tract the activity of the account of metamask


### procedure 
*open remix and write a smart contract of degen tokens

*now connect that smart contract to a metamask account selecting inject with metamask wallet

*copy the address and paste it on snowtrace 

*it will show the activity of the smart contract connected with wallet

*it will always ask for the cost and permission deploying and doing things 


### Executing program
     // SPDX-License-Identifier: MIT
     // Compatible with OpenZeppelin Contracts ^5.0.0
     pragma solidity ^0.8.20;

     import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
     import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
     import "@openzeppelin/contracts/access/Ownable.sol";

    contract DegenTokens is ERC20, ERC20Burnable, Ownable {
    // Mapping to keep track of rewards for each player
    mapping(address => uint256) private rewards;

    // Mapping to store available rewards and their token costs
    mapping(string => uint256) public redeemableRewards;

    // Array to store reward item names
    string[] public rewardItemNames;

    // Mapping to keep track of redeemed items for each player
    mapping(address => string[]) public redeemedItems;

    constructor(address initialOwner)
        ERC20("DegenTokens", "DGN")
        Ownable(initialOwner)
    {
        // Initialize some rewards for demonstration
        redeemableRewards["Sword"] = 100;
        redeemableRewards["Shield"] = 150;
        redeemableRewards["Health Potion"] = 50;

        rewardItemNames.push("Sword");
        rewardItemNames.push("Shield");
        rewardItemNames.push("Health Potion");
    }

    // Function to mint new tokens, only callable by the owner
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // Function to reward players, only callable by the owner
    function rewardPlayer(address player, uint256 amount) public onlyOwner {
        rewards[player] += amount;
    }

    // Function to get the reward balance of a player
    function getRewardBalance(address player) public view returns (uint256) {
        return rewards[player];
    }

    // Function to allow players to trade tokens
    function trade(address to, uint256 amount) public {
        _transfer(msg.sender, to, amount);
    }

    // Function to redeem rewards (for example, in the in-game store)
    function redeem(string memory itemName) public {
        uint256 cost = redeemableRewards[itemName];
        require(rewards[msg.sender] >= cost, "Insufficient reward balance to redeem");
        rewards[msg.sender] -= cost;
        redeemedItems[msg.sender].push(itemName);
    }

    // Function to display redeemable rewards and their costs
    function getRedeemableRewards() public view returns (string[] memory, uint256[] memory) {
        uint256 rewardCount = rewardItemNames.length;

        string[] memory rewardNames = new string[](rewardCount);
        uint256[] memory rewardCosts = new uint256[](rewardCount);

        for (uint256 i = 0; i < rewardCount; i++) {
            string memory itemName = rewardItemNames[i];
            rewardNames[i] = itemName;
            rewardCosts[i] = redeemableRewards[itemName];
        }

        return (rewardNames, rewardCosts);
    }

    // Function to get the list of redeemed items for a player
    function getRedeemedItems(address player) public view returns (string[] memory) {
        return redeemedItems[player];
    }
    }






## Authors

Md Anas Khan

anaskhan9501499079@gmail.com


## License

This project is licensed under the MIT License
