// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EjemploStrings {
                string public nombreAlmacenado;
                address public owner;

                constructor() {
                                owner = msg.sender;
                                }

                modifier soloOwner() {
                                require(msg.sender == owner, "No eres el owner");
                                _;
                }

                function guardarNombre(string memory _nuevoNombre) public soloOwner {
                                nombreAlmacenado = _nuevoNombre;
                }

                function compararNombres(string memory _nombreComparar) public view returns (bool) {
                                return keccak256(abi.encodePacked(nombreAlmacenado)) ==
                                                            keccak256(abi.encodePacked(_nombreComparar));
                }

                function estaVacio() public view returns (bool estaVacio_) {
                                estaVacio_ = bytes(nombreAlmacenado).length == 0;
                }

                function sample() public payable returns (uint) {
                                return msg.value;
                }
}