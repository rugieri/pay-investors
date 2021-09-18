//SPDX-License-Identifier: MIT
pragma solidity 0.8.7 ;

contract AddressWallets {
    
    address payable[] investorWallets; 
    
    mapping(address => uint) investors;
    
    function payInvestors(address payable wallet, uint amount) public {
        investorWallets.push(wallet);
        investors[wallet] = amount;
    }

function checkInvestors() public view returns (uint) {
    return investorWallets.length;
    }    
}
