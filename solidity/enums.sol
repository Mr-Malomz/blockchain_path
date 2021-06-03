pragma solidity >=0.7.0 <0.9.0;
//enums are used to define options or constants

contract EnumContract {
    
    //declaring Enum
    enum STATE {
        INACTIVE, ACTIVE, PENDING, SUSPENDED
    }
    
    STATE public state;
    
    function setToActive() public {
        state = STATE.ACTIVE;
    }
    
    function checkForSuspend() public {
        if(state == STATE.SUSPENDED) {
            state = STATE.SUSPENDED;
        }
    }
}