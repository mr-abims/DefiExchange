//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol"

contract Exchange is ERC20{
    address public cryptoDevTokenAddress;

    constructor(address _CryptoDevtoken) ERC20("CryptoDev LP Token", "CDLP"){
        require(_CryptoDevtoken != address(0), "Token address is a null address");
        cryptoDevTokenAddress = _CryptoDevtoken;
    }
    function getReserve() public view returns(uint) {
        return ERC20(cryptoDevTokenAddress).balanceOf(address(this));
    }
}