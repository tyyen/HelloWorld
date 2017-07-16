pragma solidity ^0.4.0;

contract MyContract {
    
    uint myVariable;
    address owner;
    
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
        owner = msg.sender;
    }
    
    function setMyVariable(uint myNewVariable) onlyowner{  //only owner can set variable
        //if(msg.sender == owner){  //if adding "onlyowner", we don't need to write down this if statment
            myVariable = myNewVariable;
        //}
    }
    
    function getMyVariable() constant returns(uint) {
        return myVariable;
    }
    
    function getMyContractBalance() constant returns(uint) {
        return this.balance; 
    }
    
    function kill() onlyowner {
        //if(msg.sender == owner){
            suicide(owner);
        /*}
        else{
            throw;
        }*/
    }
    
    function () payable {
        
    }
    
}