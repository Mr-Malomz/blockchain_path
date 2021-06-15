pragma solidity >=0.7.0 <0.9.0;

//events in solidity are used to push data from a smart contract to other applications like web and mobile.
//indexed in events are used as means of identification for an event. Maximum of 3 indexed can be used in an event

contract EventContract {
    event NewTrade(
        uint256 date,
        address indexed from,
        address indexed to,
        uint256 indexed amount
    );

    function trade(address to, uint256 amount) external {
        emit NewTrade(block.timestamp, msg.sender, to, amount);
    }
}
