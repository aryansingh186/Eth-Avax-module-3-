// Functionality
// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// TokenSystem contract implements a basic token system with minting, transferring, and burning functionality.
contract TokenSystem {
    // The address of the contract creator.
    address private creator;
    uint256 public tokenCount;

    // Mapping to track balances of addresses.
    mapping(address => uint256) private balances;

    // Events for tracking token transfers, destruction, and creation.
    event TokensSent(address indexed from, address indexed to, uint256 amount);
    event TokensDestroyed(address indexed burner, uint256 amount);
    event TokensCreated(address indexed minter, uint256 amount);

    // Modifier to restrict certain actions to the contract creator.
    modifier onlyCreator() {
        require(msg.sender == creator);
        _;
    }

    // Constructor initializes the contract creator.
    constructor() {
        creator = msg.sender;
    }

    // Creates new tokens and assigns them to a specified address.
    function createTokens(address _receiver, uint256 _amount) public onlyCreator {
        require(_receiver != address(0), "Invalid address");

        balances[_receiver] += _amount;
        tokenCount += _amount;

        emit TokensCreated(_receiver, _amount);
    }

    // Transfers tokens from the sender's balance to a specified address.
    function transferTokens(address _to, uint256 _amount) public {
        require(_to != address(0), "Invalid address");
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;

        emit TokensSent(msg.sender, _to, _amount);
    }

    // Burns a specified amount of tokens from the sender's balance.
    function burnTokens(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");

        balances[msg.sender] -= _amount;
        tokenCount -= _amount;

        emit TokensDestroyed(msg.sender, _amount);
    }

    // Retrieves the token balance of a specified account.
    function getTokenBalance(address _account) public view returns (uint256) {
        return balances[_account];
    }
}

