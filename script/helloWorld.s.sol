// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import {HelloWorld} from "../src/helloworld.sol";

//make sure you refer the right contract in the cli command to deploy
contract ContractScript is Script {
    function setUp() public {}

    function run() public {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new HelloWorld("Foundry is fast!");
        vm.stopBroadcast();
    }
}
