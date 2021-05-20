pragma solidity >=0.7.0 <0.9.0;
//mappings are key-value pair

contract Mappings{
    //declaring Mappings
    mapping (address => uint) balances;
    
    function mapManipulate() external {
        //add to a mapping
        balances[msg.sender] = 100;
        
        //read a mapping
        balances[msg.sender];
        
        //update a mapping
        balances[msg.sender] = 200;
        
        //delete
        delete balances[msg.sender];
    }
}