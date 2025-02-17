// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {
    address owner;

    constructor(string memory name, string memory symbol) ERC20(name, symbol){
        owner = msg.sender;
    }

    function mint(address account, uint256 amount) public {
        require(msg.sender == owner, "Only the owner can mint new tokens.");
        _mint(account, amount);
    }
    function burn(uint256 amount) public  {
        _burn(msg.sender, amount);
    }

    function transfer(address from, address to, uint256 value) public {
        _transfer(from, to, value);
    }
}
