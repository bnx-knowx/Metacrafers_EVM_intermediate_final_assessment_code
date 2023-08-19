// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol"; 
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        function Mint(address to, uint256 amount) public onlyOwner { 
            _mint (to, amount);
        }

        function Decimals() override public pure returns (uint8) { 
            return 0;
        }

        function GetBalance() external view returns (uint256) { 
            return this.balanceOf(msg.sender);
        }

        function TransferTokens(address receiver, uint256 _value) external { 
            require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens"); 
            approve(msg.sender, _value); transferFrom(msg.sender, receiver, _value);
        }
        function BurnSomeTokens (uint256 _value) public view{ 
            require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens");
        }
}

