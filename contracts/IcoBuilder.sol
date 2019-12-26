pragma solidity 0.5.5;
import "@openzeppelin/contracts/ownership/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Detailed.sol";
import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "@openzeppelin/contracts/crowdsale/emission/AllowanceCrowdsale.sol";

contract MyCrowdsale is Crowdsale, MintedCrowdsale {
    constructor(
        uint256 rate,
        address payable wallet,
        IERC20 token
    )
        MintedCrowdsale()
        Crowdsale(rate, wallet, token)
        public
    {

    }
}

contract Ico is ERC20Detailed, ERC20Mintable, Ownable{
constructor (uint256 initialSupply, string memory tokenName, string memory symbol, uint8 decimal, address payable ownerAddress) public 
    ERC20Detailed(tokenName, symbol, decimal){
         transferOwnership(ownerAddress);
          _mint(ownerAddress, initialSupply);
          //change minter role to owner
          addMinter(ownerAddress);
    }
}