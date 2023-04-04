# DONATION PLATFORM USING BLOCKCHAIN

![Ether.js](https://img.shields.io/badge/Ethereum-3C3C3D?style=for-the-badge) ![Solidity](https://img.shields.io/badge/Solidity-e6e6e6?style=for-the-badge) ![Yarn](https://img.shields.io/badge/Yarn-2C8EBB?style=for-the-badge) ![Javascript](https://img.shields.io/badge/JavaScript-323330?style=for-the-badge&logo=javascript&logoColor=F7DF1E)

> Donation Platform using Blockchain Technology. Deployed a smart contract and shown the proof of work for every funding person and their amount but not revealing their personal information instead showing their account address.

## Table of Contents

- [General Ide](#general-idea)
- [Technologies Used](#technologies-used)
- [Features](#features)
- [Setup](#setup)
- [Sepolia Testnet](#sepolia-testnet-tested)
- [License](#License)

## General Idea

- In today's world donation platforms charge huge amount of money for promoting their donor's account number with proper reasons, this can be overcome with certain donation platform which is free as well as secure.
- With increasing rate of cybercrime, people in need of money fear sharing their bank account number with strangers whom they have never met or talked to, to avoid this he/she can share their eth account address.
- Now if the account address is only shared then their's no proof of work for the donor who is going to donate for a good cause.
- So using smart contract and etherium blockchain we can setup a platform where donation can be made easy as well as secure for both donor as well as the receiver.

## Technologies Used

- ethers: ^5.5.3,
- hardhat: ^2.8.3,
- hardhat-deploy: ^0.9.29,
- dotenv: ^14.2.0,

## Features

Introduced Cryptocurrency and decentralised payment in Donation System:

- Creating a smart contract for the person in need
- Ability to fund to the person's eth account using address
- Ability to withdraw from the donated account address
- Proof of Work for the donor as well as the receiver where all the transactions are visible to all

## Setup

Deploying the project on Sepolia Testnet

```
yarn hardhat deploy
```

Testing the project on local testnet

```
yarn hardhat test
```

# Sepolia TestNet Tested

Deployed the smart contract on sepolia testnet and donated certain amount to the specific account address. Now the gas-report has been attached with the project and shown in the code above. See gas-reports.txt for in-details explanation

## License

This project is licensed under the MIT License - see the LICENSE.md file for details.
