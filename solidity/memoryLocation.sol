pragma solidity >=0.7.0 <0.9.0;
//Memory location explains how solidity handles Memory

contract MemoryLocation {
    //1. Storage: involves storing a varaible inside a blockchain and it is persistent and can be accessed in the future. They are ususally storeed outside a function
    uint a;
    
    //nested storage variable
    struct User{
        string name;
    }
    
    User[] users;
    
    function foo() public{
        int b; //stack Memory
        User storage user = users[0];
        
        user.name = 'malomzz';
        bar(user);
    }
    
    //2. Memory: are short time varaibles that are not storeed inside the blockchain. They are declared inside a function
    function bar(User memory _user) internal{
        _user;
    }
    
    // 4. Calldata: are only available for functions that their visisbilty is marked as external
    function mem(int[] calldata _userIds) external{
        uint d;
    }
}