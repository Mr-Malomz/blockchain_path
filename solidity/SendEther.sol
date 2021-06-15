pragma solidity >=0.7.0 <0.9.0;
//to send Ether to a smart contract, a function with a PAYABLE keyword must be used

contract MyContract {
    mapping(address => uint) balances;
    function invest() external payable {
        if(msg.value < 1 ether){
            revert();
        }
        balances[msg.sender] += msg.value;
        
    }
    
    function balanceOf() external view returns(uint) {
        return address(this).balance;
    }
}


//sending ether to regular address
contract EtherToAddress {
    //1. transfer
    //2. address vs address payable
    //3. address payable casting (address and uint160)
    //4. msg.sender
    //5 send vs transfer
}