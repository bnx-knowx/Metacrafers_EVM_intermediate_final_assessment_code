// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    constructor(string memory name, string memory abre, uint256 quenty) ERC20(name, abre) {

        _mint(msg.sender, quenty);
    }

    function transferFrom(address from, address to , uint256 amount) public virtual override returns(bool) {
        
        _transfer(from, to, amount);
        return true;
    }

    function _burnsometoken(address account,uint256 quenty) public {
        _burn(account, quenty);
    }

}

// 0x70997970C51812dc3A010C7d01b50e0d17dc79C8

// 0x3C44CdDdB6a900fa2b585dd299e03d12FA4293BC
