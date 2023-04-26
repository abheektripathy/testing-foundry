// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/Counters.sol";


 interface erc721implementation {
    function safeTransferFrom(address _from, address _to, uint256 _tokenId) external virtual;
}

contract MarketPlace {
    address[] public contracts;
    uint256[] public prices;

    function addNftContract(address _contractAddress, uint256 _price) public {
        contracts.push(_contractAddress);
        prices.push(_price);
    }

    function buyNFT(uint256 _contractIndex) public payable {
        require(msg.value >= prices[_contractIndex], "send more money");
        erc721implementation(contracts[_contractIndex]).safeTransferFrom(address(this), msg.sender, 1);
    }
}
