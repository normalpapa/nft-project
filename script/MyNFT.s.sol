// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {Script} from "forge-std/Script.sol";
import {MyNFT} from "../contracts/MyNFT.sol";

contract DeployMyNFT is Script {
    function run() external {
        vm.startBroadcast();

        MyNFT nft = new MyNFT(0x89368CE6f86225a81bC6817710D056B190997314);

        vm.stopBroadcast();
    }
}
