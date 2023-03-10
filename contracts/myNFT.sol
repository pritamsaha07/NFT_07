
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract MyNFT is ERC721URIStorage, Ownable{
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;//initializing ids

    constructor() ERC721("Pritam007","PS007"){}

    function mintNFT(address recipient, string memory tokenURI) public onlyOwner returns(uint256){
        _tokenIds.increment();//increment toeknid

        uint256 newItemId= _tokenIds.current();//return cuurent value

        _mint(recipient, newItemId);//minting newitemid into recipient's id 
        _setTokenURI(newItemId, tokenURI);//Linking tokenURI into newitemID
        return newItemId;
        }

    
}