# Eth-Avax-module-3-
# Token System Smart Contract

## Overview
This Solidity smart contract implements a basic token system on the Ethereum blockchain. The contract allows the contract owner to mint tokens, users to transfer tokens, and users to burn tokens. It provides a simple example of how token functionality can be implemented using Solidity.

## Functionality

- Tokens: The contract owner can create and allocate new tokens to specific addresses.

- Transfer Tokens: Any user can transfer tokens from their own balance to another address.

- Burn Tokens: Any user can burn (destroy) a specified amount of their own tokens.
## Smart Contract Details
The smart contract is named TokenSystem and has the following functions and features:
### Constructor
The contract creator is set during deployment.
### createTokens Function (onlyCreator)
The contract owner (creator) can mint new tokens and allocate them to a specified address.
### transferTokens Function
Users can transfer tokens from their own balance to another address.
### burnTokens Function
Users can burn (destroy) a specified amount of their own tokens

### Events
TokensSent: Triggered when tokens are transferred from one address to another.

TokensDestroyed: Triggered when tokens are burned (destroyed).

TokensCreated: Triggered when new tokens are minted and allocated.

## Getting Started
* To interact with this smart contract, follow these steps:

* Open the Remix IDE by visiting https://remix.ethereum.org/.

* Create a new file named TokenSystem.sol.

* Copy and paste the smart contract code into the file.

* In the Remix IDE, go to the "Solidity Compiler" tab, set the compiler version to 0.8.0, and compile the smart contract.

* Go to the "Deploy & Run Transactions" tab, select the TokenSystem contract from the dropdown, and deploy it.

* You can interact with the deployed contract using the functions mentioned above. To mint, transfer, or burn tokens, specify the function and its parameters, then click "transact" to execute


## Authors

**Aryan Singh**

- GitHub:  https://github.com/aryansingh186
- Email: 22bcs80186@cuchd.in


## License

This project is licensed under the [MIT](https://github.com/aryansingh186/Eth-Avax-module-3-/blob/68468e380d32996ecf92312f77e427d6150933ad/LICENSE)

