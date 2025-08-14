// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract TiposdeDatos {

    //Enteros sin signo
    uint256 x = 100;
    uint8 z = 255; //0 >2 8 (0-255)
    //uint16 y= 300; // (0-65,xxxx)  
    uint32 u= 300; // (0-4,294,967,295)

    //Enteros con signo
    int y = -50;
    int8 f=-127; //(-127 a 127 )

    //Booleano
    bool boolean ; //por defecto siempre es falso
    bool boolean1 =true;

    //Adress (direcciones de las billeteras)
    address myAddress = 0xeb4856b891d7B4100E33b13451e8b0722F73A04D;

    //enum
    enum PlayerChoice {Rock, Paper,Scissor}

    //String
    string nombre ="Dome";
    string myString = "Hola mundo";

    //Array
    int[] dynamicArray; //Dynamic-size-array
    uint[6] fixedArray ; //Fixed size array

    //Struct
    struct Vehiculo{
        string matricula;
        string chasis;
        bool picoplaca;
    }

    //Mappings
    mapping(string => uint) public balances;


    //byte
    //un byte represnta dos caracteres
    //bytes1 a = 0xb5;
    //bytes10 d = 0x68656; hola mundo en hexadecimla
    uint16 a =10;
    uint16 b=30;

    bool igual=a==b;
    bool noIgual=a != b;
    bool mayor = a>b;
    bool menor = a<b;

    bool primero =true;
    bool segundo =false;
    //logicos
    bool and = primero && segundo;
    bool or = primero || segundo;
    bool not = !primero;


    //operadores de bits
    //desplazamiento de bits, ahce que los bits se desplacen
    uint8 a1 = 1; //00000001
    uint8 b1 = a1 << 3; //00001000 (8)
    uint8 c1 = b1 >> 1; //00000100 (4)

}
