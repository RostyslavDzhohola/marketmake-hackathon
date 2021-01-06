pragma solidity >=0.6.0 <0.7.0;

import "hardhat/console.sol";
//import "@openzeppelin/contracts/access/Ownable.sol"; //https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol

contract YourContract {

  event SetPurpose(address sender, string purpose);

  string public purpose = "🛠 Programming Unstoppable Money";
  address internal owner;

  constructor() public {
    // what should we do on deploy?
    owner = msg.sender;
  }

  modifier onlyOwner(){
    require (msg.sender == owner, "Not the deployer");
    _;
  }

  uint public counter = 1;


  function decrement() public onlyOwner {
    counter = counter - 1;
  }

  address public  god;

  function setPurpose(string memory newPurpose) public {
    purpose = newPurpose;
    console.log(msg.sender,"set purpose to",purpose);
    emit SetPurpose(msg.sender, purpose);
  }

}
