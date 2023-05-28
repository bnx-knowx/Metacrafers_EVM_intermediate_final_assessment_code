### Interact with your SmartContract through Front-end Practice code

## Description
The files index.js, SmartContract_with_Front_end_interaction.sol and deploy,js contain codes to practice interaction with the SmartContract_with_Front_end_interaction.sol smartcontract through a website.

## Environment Setting for Execution the above files
Follow the Steps bellow :

1-> clone this `https://github.com/bnx-knowx/SCM-Starter.git` repository

2-> use command `git clone https://github.com/bnx-knowx/SCM-Starter.git` to clone the repository in your local pc.

3-> Above repository contains all necessary file to interact with our smartcontract called Assessment.sol. I just made some changes for practice. Here we are going to change the file contents in (Assessment.sol in contracts folder), (index.js in pages folder) and (deploy.js in scripts folder) 

4-> rename the Assessment.sol file in contracts with MySmartContract.sol name and copy MySmartContract.sol file contains to that file.

5-> copy index.js(from this repository) contents to the index.js file in the (pages) folder

6-> copy deploy.js(from this repository) contents to the deploy.js file in the (scripts) folder

7-> Inside the project directory named (SCM-Starter), in the 1st terminal type: `npm i`

8->Inside the project directory named (SCM-Starter), in the 2st terminal type: `npx hardhat node`

9->Inside the project directory named (SCM-Starter), in the 3st terminal type: `npx hardhat run --network localhost scripts/deploy.js`

10->Back in the first terminal, type npm run dev to launch the front-end. Now read the below account setting instructions before 

## Setting up the local host network and a dummy account in your Metamask Wallet
->Here we need to set a local dummy account in the Metamask wallet. Since, By default MetaMask wallet is set to your one of real account so don't wanna mess with it. Thats why setteing dummy account

->We need to set a local network witn the MetaMask wallet. otherwise Metamask will not be able to communicate with the local node. click on the MetaMask extension then click on the top middle button which is the network selection button

->click on (Add a Network)

->click on (Add a Network Manually)

->give the (Network name - whatever you want)

->set the (New RPC URL - http://127.0.0.1:8545/ )

->set the (Chain ID - 31337 )

->set the (Currency symbol - ETH )

->to set a account you have to import a account with the accounts private key which you can find in the 2nd terminal where we have exevuted this command `npx hardhat node` . after hiting the enter you can see there are many account number with private key is written in the terminal just take any accounts correcponding private key to import it your Metamask Wallet
 
-> Head to http://localhost:3000/ to interacting with the Metamask Wallet

## Error handeling while trying to interact with your Metamask wallet

-> if you get some error while depositing or withdrawing. This might be because of nounce data mismatch with solidity contracts data so just reset your accounts nounce data then you should be good to go.



