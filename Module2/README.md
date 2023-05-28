### Interact with your SmartContract through Front-end Practice code

## Description
The files index.js, SmartContract_with_Front_end_interaction.sol and deploy,js contain codes to practice interaction with the SmartContract_with_Front_end_interaction.sol smartcontract through a website.

## Environment Setting for Execution the above files
Follow the Steps bellow :

1-> clone this `https://github.com/bnx-knowx/SCM-Starter.git` repository

2-> use this link `gitpod.io#https://github.com/bnx-knowx/SCM-Starter.git` to open a gitpod workspace with the above mentioned repo cloned and all the necessary dependecyes installed in one click

or 

use command `git clone https://github.com/bnx-knowx/SCM-Starter.git` to clone the repository in your local pc.

3-> Above repository contains all necessary file to interact with our smartcontract called Assessment.sol. I just made some changes for practice. Here we are going to change the file contents in (Assessment.sol in contracts folder), (index.js in pages folder) and (deploy.js in scripts folder) 

4-> rename the Assessment.sol file in contracts with MySmartContract.sol name and copy 

-> Inside the project directory named (SCM-Starter), in the 1st terminal type: `npm i`

->Inside the project directory named (SCM-Starter), in the 2st terminal type: `npx hardhat node`

->Inside the project directory named (SCM-Starter), in the 3st terminal type: `npx hardhat run --network localhost scripts/deploy.js`

