// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Use the dot-slash path into `contracts/@openzeppelin/...`:
import "contracts/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "contracts/contracts/access/Ownable.sol";

contract MyNFT is ERC721URIStorage, Ownable {
    uint256 private _tokenIds;

    constructor(
        address initialOwner
    ) ERC721("MyNFT", "NFT") Ownable(initialOwner) {}

    function mintNFT(
        address recipient,
        string memory tokenURI
    ) public onlyOwner returns (uint256) {
        _tokenIds++;

        uint256 newItemId = _tokenIds;
        _mint(recipient, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}
