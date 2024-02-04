// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
// import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

contract GigToken is ERC20, Ownable {
    constructor()
        ERC20("GigToken", "GT")
        Ownable(msg.sender)
  
    {
        _mint(msg.sender, 10000000 * 10 ** decimals());
        _mint(address(this), 10000000 * 10 ** decimals());
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}