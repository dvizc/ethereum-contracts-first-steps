// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Variables{


    //VARIABLES DE ESTADO
    //address public owner ;
    //uint public creationTime;

    //creacion de un token
    //hipotetico:creacion de token
    string public name;
    uint public totalSupply;
    address public owner;


    //lo rpimero que se iniciliza
    constructor (string memory  _name, uint _initialSupply){
        name =_name;
        totalSupply= _initialSupply;
        owner= msg.sender;
        block.timestamp;
    }

    /*funciton getAlgo() public {
        uint a=10;
    }*/

}
