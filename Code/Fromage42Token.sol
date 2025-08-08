// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Fromage42Token is ERC20, AccessControl, Ownable 
{
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant BURNER_ROLE = keccak256("BURNER_ROLE");

    //constructeur avec droits et privileges ainsi qu'un mint d'init.
    constructor(uint256 initialSupply) ERC20("Fromage42Token", "F42") Ownable(msg.sender) 
    {
        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(MINTER_ROLE, msg.sender);
        _grantRole(BURNER_ROLE, msg.sender);
        _transferOwnership(msg.sender); 
        
        _mint(msg.sender, initialSupply * 10 ** decimals());
    }

    //mint de tk
    function mint(address to, uint256 amount) external onlyRole(MINTER_ROLE) 
    {
        _mint(to, amount * 10 ** decimals());
    }

    //destruction de tk
    function burn(address from, uint256 amount) external onlyRole(BURNER_ROLE) 
    {
        _burn(from, amount * 10 ** decimals());
    }

    //donner droit (Recuperation via getters, + adrs user)
    function grantRoleTo(address user, bytes32 role) external onlyOwner 
    {
        grantRole(role, user);
    }

    //retirer droit pareil
    function revokeRoleFrom(address user, bytes32 role) external onlyOwner 
    {
        revokeRole(role, user);
    }
}