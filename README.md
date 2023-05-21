# Metacrafers_EVM_intermediate_final_assessment_code
This repository contains Metacrafter EVM intermediate courser final assessment practice code files
## Description
This code is ment for practice on how to handel errors using require , assert and revert functions in solidity smartContracts
### Follow the steps to execute the code in gitpod.io
Step 1-> goto https://gitpod.io/ Login your your github account

Step 2-> 
1. Install [Node.js](https://nodejs.org)

   Download and install from the official site.

2. Install [Truffle](https://github.com/trufflesuite/truffle)

   ```bash
   npm install -g truffle
   ```
   Initialize Truffle in your project folder

1. Initialize Truffle in your project folder

   ```bash
   truffle init
   ```

   After initialization, you will find two folders called `contracts` and `migrations`. Contracts go in the `contracts` folder while contract deployment settings go in `migrations`.

2. The "Hello World!" contract

   This is an example of a "Hello World!" contract in Solidity. 
   "HelloWorld.sol" in `contracts` contains the following code:

   ```solidity
   // SPDX-License-Identifier: MIT
   // compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
   pragma solidity ^0.8.17;
   
   contract HelloWorld {
       string public greet = "Hello World!";
   }   
   ```
Now Copy and past the my code from ` Error_Handling_in_solidity_with_require_assert_revert_functions ` in HelloWorld.sol and rename it to error.sol

3. Prepare the migration

   "2_deploy_migration.js" in `migrations` contains the following code:

   ```javascript
   var HelloWorld = artifacts.require("error_handelling");
   module.exports = function(deployer) {
     deployer.deploy(error_handelling);
   }
   ```
   Replace the code with 
   ``` javascript
   var error = artifacts.require("error");
   module.exports = function(deployer) {
   deployer.deploy(error);}```

4. Start Truffle console in development mode

   ```bash
   truffle develop
   ```

   In the Truffle console, execute

   ```bash
   compile
   migrate
   ```
   If you want to remigrate existing contracts, run `migrate --reset` instead of simply `migrate`.

5. Test your contract

   In the interactive Truffle console, run the following commands:

   ```javascript
   let instance = await error.deployed()
    instance.addval1(6) // this will add 6 to the value variable
   
    instance.showval() // this will show the value of value variable

    instance.addval1(2) // this will give a error with the defined string in require furntion in the addval1 funcion

    instance.addval2(4) // this will give a error thrown from the assert functions in addval2 funcion

    instance.addval3(4) // this will give a error thrown from the revert functions in addval2 funcion undone the changes made to the value variable

    instance.showval() // this will show the value of value variable
     
   ```

   The intial value of Value variable is the 0 after and before the comma ```words: [ 0,```

   ```bash
   BN { negative: 0, words: [ 0, <1 empty item> ], length: 1, red: null }
   ```
