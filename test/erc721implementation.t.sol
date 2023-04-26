// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;


import "forge-std/Test.sol";
import "src/ERC721implementation.sol";

contract ContractTest is Test {
    Lab10 erc721;
    address eh = address(0x1);
    address nh = address(0x2);

    function testMinttoken() public {
      erc721 = new Lab10();
      erc721.safeMint(eh,1,"https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2");
      assertEq(erc721.ownerOf(1), eh);
    }

    function testTransfertoken() public{
        erc721.safeTransferFrom(eh,nh,1);
        assertEq(erc721.ownerOf(1), nh);
    }

    function checkOwnership() public {
     
        assertEq(erc721.ownerOf(1), nh);
    }


}


