pragma solidity >=0.7.0 <0.9.0;

contract Bank {
    uint256 private value;

    function depositMoney(uint256 amount) public {
        value += amount;
    }

    function withdrawMoney(uint256 amount) public returns (uint256) {
        value -= amount;
    }
}

contract MyFirstContract is Bank {
    string private name;
    uint256 private age;

    function setName(string memory newName) public {
        name = newName;
    }

    function getName() public view returns (string memory) {
        return name;
    }

    function setAge(uint256 newAge) public {
        age = newAge;
    }

    function getAge() public view returns (uint256) {
        return age;
    }
}
