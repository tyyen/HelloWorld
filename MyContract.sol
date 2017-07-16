pragma solidity ^0.4.0;

import "mortal.sol";

/*contract mortal {
    address owner;

    modifier onlyowner() {
        if(owner == msg.sender) {
	    _;
	}
	else {
	    throw;
	}
    }

    fuction mortal() {
        owner = masg.sender;
    }

    function kill() onlyowner {
        suicide(owner);
    }
}*/

contract MyContract is mortal {  //extend all the functions from mortal to MyContract 
    
    uint myVariable;
    
    modifier onlyowner(){
        if(owner == msg.sender){
            _; //do whatever is in the function(setMyVariable)
        }
        else {
            throw;
        }
    }
    
    function MyContract() payable {
        myVariable = 5;
    }
    
    function setMyVariable(uint myNewVariable) onlyowner{  
        //if(msg.sender == owner){  
            myVariable = myNewVariable;
        //}
    }
    
    function getMyVariable() constant returns(uint) {
        return myVariable;
    }
    
    function getMyContractBalance() constant returns(uint) {
        return this.balance; 
    }
    
    function () payable {
        
    }
    
}
