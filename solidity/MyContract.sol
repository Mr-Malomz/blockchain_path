//Variable types in Solidity
pragma solidity >=0.7.0 <0.9.0;

contract MyContract {
    //Fixed-size types Variable
    bool isReady;
    uint age;
    address recipient;
    bytes32 data;
    
    //variable-size types
    string name;
    bytes _data;
    uint[] amounts;
    mapping(uint => string) users;
    
    //user-defined data
    struct User {
        uint id;
        string name;
        uint[] friendsIds;
    }
    
    enum Color {
        RED,
        GREEN,
        BLUE
    }
}