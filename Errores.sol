// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Errores { 
    //require -revert -assert 

    function testRequire(uint _x ) public pure{
        require(_x>10, "x debe ser mayor a  10"); // si la condicion se cumple pasa a la linea de abajo
        
    }

    //revert 
    function testRevert(uint _x) public pure {
        if(_x<=10){
            revert("x debe ser mayor a  10");
        }

    }

    //assert
    uint public myNumber =100;

    function testAssert() public view {
        assert(myNumber == 100);
    }

    uint public balanceContrato =100;
    //errores personalizados (propia fucniona para maenjar errores )
    //error SaldoInsuficiente( uint amount, address user, string detalle );
    error SaldoInsuficiente( uint amount, address user, uint detalle );
    error ErrorPersonalizado();

    function retirar(uint _montoRetirar) public view {
        if(_montoRetirar>balanceContrato){
            //revert SaldoInsuficiente({amount:_montoRetirar, user:msg.sender,detalle:"No existe ese saldo"});
            revert SaldoInsuficiente({amount:_montoRetirar, user:msg.sender,detalle:address(this).balance});
        }
    }    
 }





