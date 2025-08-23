// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Condicionales {

//IF
//ELSE IF
//ELSE

    function condicionales(uint256 _numero) public pure returns(bool){
        if (_numero == 100) {
            return true;
        } else if (_numero == 200) {
            return false;
        } else {
            return false;

   }
    }

    //ternarios
    function ternary(uint256 _numero) public pure returns (uint){

        return _numero == 10 ? 1:2;
    }



    
 } 