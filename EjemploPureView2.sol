// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EjemploPureView2 {

    uint public numeroAlmacenado;

    constructor() {
        numeroAlmacenado = 100;
    }

    /// @notice Función PURE: Solo opera con sus parámetros
    function sumar(uint a, uint b) public pure returns (uint) {
        return a + b;
    }

    /// @notice Función VIEW: Lee estado pero no lo modifica
    function multiplicar(uint a) public view returns (uint) {
        return numeroAlmacenado * a;
    }

    /// @notice Función normal (no es ni pure ni view)
    function actualizarNumero(uint nuevoNumero) public {
        numeroAlmacenado = nuevoNumero;
    }
}


interface IEjemploPureView {
    function sumar(uint a, uint b) external pure returns (uint);
    function multiplicar(uint a) external view returns (uint);
    function actualizarNumero(uint nuevoNumero) external;
    function numeroAlmacenado() external view returns (uint);
}