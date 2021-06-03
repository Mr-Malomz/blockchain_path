pragma solidity >=0.7.0 <0.9.0;
//structs are like template for defining our data is going to look like.
//structs doesn't support methods

contract StructContract {
    
    //defining struct
    struct User {
        address addr;
        uint score;
        string name;
    }
    
    //array of structs
    User[] users;
    
    //mapping with structs
    mapping(address => User) userList1;
    
    function admin(string calldata _name) external{
        User memory user1 = User(msg.sender, 0, _name);
        User memory user2 = User({addr: msg.sender, score: 0, name: _name});
        
        user1.addr;
        
        
        users.push(user1);
    }
}