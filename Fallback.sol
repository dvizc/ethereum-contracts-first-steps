// SPDX-License-Identifier: MIT
pragma solidity  ^0.8.17;

//funciones especiales payable para enviar ether
//un evento es como un log
contract Fallback{

    //Recordatorio de eventos
    //Event - log - console log
    event LogString(string FuncName, address sender, uint amount, bytes data);
    //event NombreEvento(variables que quiero ver con tipo de dato)

    //diferencia entre fallback y receive
    fallback() external payable {
        //emitir el evento
        emit LogString('fallback', msg.sender, msg.value, msg.data);
     }
    
    receive() external payable {
        //emitir el evento
        emit LogString('receive', msg.sender, msg.value, '');
     }
}