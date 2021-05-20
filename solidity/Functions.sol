pragma solidity >=0.7.0 <0.9.0;
//understanding functions, modifiers and visisbilty.

contract Functions {
    uint value;
    
    function getValue() external view returns(uint){
        return value;
    }
    
    function setValue(uint _value) external {
        value = _value;
    }
}