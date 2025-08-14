// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Funciones{

    function publicFunction() public{
        //accesible desde cualquier parte
    }

    function privateFunction() private{
        //accesible desde el mismo contrato
    }

    function internalFunction() internal{
        //Solo accesible desde este contrato o contratos heredados
    }

    function externalFunction() external{
        //Solo accesible desde fuera del contrato
    }

    uint a=10;
    string message;

    //VIEW
    //Obtener/leer/retornar datos, optimizan el gas
    function verValor() public view returns (uint){
        return a;
    }

}
