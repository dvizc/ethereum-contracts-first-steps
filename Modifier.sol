// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Modifier { 

address         owner;     
constructor(){
    owner=msg.sender;
}          

modifier onlyOwner(){
    //va a jecutar la linea de codigo y con  ejecuta lo que sigue despue s
    require(msg.sender==owner, "not owner");
    _;
}
/*
function get( uint _x, uint _y) public  onlyOwner {
    _x*_y;
}


function trasfer()  public{
    require(msg.sender == owner, "Not owner");   
 }
*/
//VIRTUAL = Permitir que los usuarios hereden o deriven la funcion (se puede modificar  )
function hacerAlgo(uint a, uint b)external pure virtual returns(uint){
    return a+b;
}
    


    
}
//contrato heredado 
contract newContrato is Modifier{

     //Override = sobreescribir la funcion heredada
    function hacerAlgo(uint a, uint b)external pure override returns(uint){

        //puedo cambiar la logica dentor de la funcion 
        return a/b;
    }

} 

contract Droid {
    function speak() public virtual returns (string memory) {
        return "Common droid tongue";
    }
}

contract R2D2 is Droid {
    function speak() public virtual override returns (string memory) {
        return "Beep boop beep";
    }
}

contract Base {

// Create a virtual modifier named 'myModifier' in a base contract that

modifier myModifier {    
    require(msg.sender == address(0), 'Not authorized');    
     _;
    }
}
/*
contract Derived is Base {
// Override 'myModifier' in a derived contract to require the sender to
 override modifier  myModifier {    
    require(msg.sender != address(0), 'Not authorized');    
    _;
    }
}
 */



