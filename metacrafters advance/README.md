# AVAX_Advanced_Module_1
## Project Description
This project is designed to teach you how to create your own custom subnet using the Avalanche SubnetEVM. You will learn how to deploy this subnet to the local network and then deploy your own contracts to the custom subnet.
## Video Walkthrough
https://www.loom.com/share/dc7785d974884dd88b1e81772418b727?sid=9e142f8f-4a53-4121-b935-230f8419ef02

## Steps to Run the Project
### Using Remix IDE and Terminal (Easier Way)
#### 1. Install Avalanche CLI
  - Install `avalanche-cli` on your UNIX system. Follow the guide [here](https://docs.avax.network/tooling/cli-guides/install-avalanche-cli).
#### 2. Copy and Test Contracts
  - Copy `ERC20.sol` and `Vault.sol` from this repository.
  - Paste them into the Remix IDE at [remix.ethereum.org](https://remix.ethereum.org/) and test them locally if desired.
#### 3. Install MetaMask Extension
  - Install the MetaMask browser extension and create an account.
#### 4. Create Your Subnet
  - In a terminal, run:
    ```
    avalanche subnet create <your-subnet-name>
    ```
  - Follow the prompts, choosing default options if unsure. For the chain ID, provide a unique positive integer that isn't already used by major blockchains (e.g., 1 for Ethereum). Enter a token symbol when prompted.
#### 5. Deploy Your Subnet
  - Run the following command:
    ```
    avalanche subnet deploy <your-subnet-name>
    ```
  - Choose "local network" for deployment.
#### 6. Output Interpretation
  - The command output will include details such as:
    ```
    RPC URL:           http://127.0.0.1:9650/ext/bc/wPS2LEj9h6tLvbi3ZNLj6KfAi6yHc5sFKu3K6FPKc2qJvdFf1/rpc
    Funded address:    0x1122dE32476092fdd7E66b7FE89890E577ddD200 with 600 (10^18)
    Funded address:    0x8db97C7cEcE249c2b98bDC0226Cc4C2A57BF52FC with 1000000 (10^18) - private key: 56289e99c94b6912bfc12adc093c9b51124f0dc54ac7a766b2bc5ccf558d8027
    Network name:      customSubnet
    Chain ID:          12345
    Currency Symbol:   CT
    ```
#### 7. Add Custom Network in MetaMask
  - Use the details from the output of the last command to add a custom network in MetaMask.
    
#### 8. Add Funded Account in MetaMask
  - Add an account using the provided private key from the output.
    
#### 9. Deploy Contracts in Remix
  - In Remix IDE, select "Injected Web3" as the environment.
  - Deploy `ERC20.sol` first.
  - Then deploy `Vault.sol`, using the deployed address of `erc20.sol` as the constructor parameter.
  - 
#### 10. Mint and Deposit Tokens
  - Mint some tokens to your address using the `mint` function in `ERC20.sol`.
  - Deposit some tokens and receive shares in return using `Vault.sol`.
    
## Contributors
  - Metacrafter Lovish Garg (LinkedIn: [@LovishGarg](https://www.linkedin.com/in/lovish-garg-480b37249?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app))
## License
This project is licensed under the MIT License.
