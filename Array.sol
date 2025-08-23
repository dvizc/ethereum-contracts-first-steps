
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Arrays {

 uint []public arr;
 
 uint[] public arr1 = [1,2,3,4,5];

 uint[10] public arr2; // dynamic array 

 //añadir elementos al final
  
 function agregar(uint _number) public {
    arr.push(_number); 
 } 
 //get
 function getArray() public view returns (uint[] memory){
    return arr;
 }
 //añadir elementos al final - push
  function push(uint _number) public{
    arr.push(_number);
 }
 //borrar el ulitmo elelmento 
    function eliminar() public{
        arr.pop();
    }
 // len --- .lenght
 function tam() public view returns(uint){
    return arr.length;
 }
 //borrar de acuerdo al indica

function eliminarEsp(uint _i) public{
    delete arr[_i];
}


}

