//understanding functions, modifiers and visisbilty.
pragma solidity >=0.7.0 <0.9.0;

contract Functions {
    uint value;
    
    function getValue() external view returns(uint){
        return value;
    }
    
    function setValue(uint _value) external {
        value = _value;
    }
}