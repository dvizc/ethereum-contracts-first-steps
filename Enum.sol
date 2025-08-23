// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Enum {

    //posicion - valor 
    enum State{
        CREATED, //0
        PAID, //1
        SHIPPED, //2
        DELIVERED, //3
        CANCELED //4
    }
    State public state;

    //get
    function get() public view returns(State){
        return state;
    }
    function set(State _newState) public{
        state = _newState; //set
    }

    function cancel() public {
        state = State.CANCELED;
    }

    function reset() public {
        state = State.CREATED;
    }
}