// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol"; 
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol"; 
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable {

    constructor() ERC20("Degen", "DGN") {}

        function mint(address to, uint256 amount) public onlyOwner { 
            _mint (to, amount);
        }

        function decimals() override public pure returns (uint8) { 
            return 0;
        }

        function getBalance() external view returns (uint256) { 
            return this.balanceOf(msg.sender);
        }

        function transferTokens(address receiver, uint256 _value) external { 
            require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens"); 
            approve(msg.sender, _value); transferFrom(msg.sender, receiver, _value);
        }
        function burnTokens (uint256 _value) public view{ 
            require(balanceOf(msg.sender) >= _value, "You do not have enough Degen Tokens");
        }
}

