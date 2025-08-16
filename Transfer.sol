// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;
contract Transfer{

    //10 ETH
    address payable owner;

    constructor(){
        owner=payable(msg.sender);
    }
    function transferir () public {
        //comdicional
        require(msg.sender==owner,"Not owner");
        //call
        (bool success, )= owner.call{value: address(this).balance}('');
        // si es exitoso o no me da un booleano (bool success, ) success true or false
        //condicional - transaccion fue exitosa
        //('') esto significa que s epuede poner una funcion adicional
        require(success, "No se pudo transferir");

        /*
        .this -- referencia a este contrato
        address(.this) -- dame o haz referencia a la direccion de este contrato
        .balance -- cantidad de ether que tiene el contrato

        */
    }

    //transfer
    //si se cumple manda el codigo sino se revierte
    //transfer es mejor
    function transfer() public{
        //condicional
        require(msg.sender==owner, "not owner");
        //transferencia al owner
        owner.transfer(address(this).balance);
    }
    //Simple y directo
}