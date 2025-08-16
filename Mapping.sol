// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

contract Mapping{
    //llave --: valor
    //address#1 -- 10
    //address#2 -- 20
    //address#3 -- 30

    mapping(address => uint) public myMapping;

    //get
    function get(address _address) public view returns (uint){
        return myMapping[_address];
    }
    //set
    function set(address _address, uint _value) public{
        myMapping[_address]=_value;
    }
    //delete
    function remove(address _address) public {
        delete myMapping[_address];
    }
}