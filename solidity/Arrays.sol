pragma solidity >=0.7.0 <0.9.0;
//using conditions in solidity

contract Arrays {
    /* 
    
    Types of Arrays in solidity
    1. Storage Array: they are stored inside the blockchain and stays inside the block after execution
    2. Memory Array: only exist when executing a function only.
    
    */
    
    
    //Storage Array
    uint[] myArray;
    
    function StorageArrayManipulation() external {
        //adding to array
        myArray.push(3);
        myArray.push(4);
        
        //reading from an array
        myArray[1];
        
        //updating array
        myArray[0] = 78;
        
        //deleting an array
        delete myArray[1];
        
        for(uint i = 0; i < myArray.length; i++){
            myArray[i];
        }
    }
    
    
    //memory array
    function MemoryArrayManipulation() external pure {
        uint[] memory newArray = new uint[](10);
        
        //adding
        newArray[0] = 10;
        newArray[1] = 20;
        
        //reading from an array
        newArray[1];
        
        //updating array
        newArray[0] = 78;
        
        //deleting an array
        delete newArray[1];
    }
    
}