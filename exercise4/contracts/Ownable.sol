pragma solidity ^0.4.21;

contract Ownable {
    address owner;

    function Owmable() public {
        owner = msg.sender;
    }

    function kill() public {
        require(msg.sender == owner);

        selfdestruct(msg.sender);
    }
}
