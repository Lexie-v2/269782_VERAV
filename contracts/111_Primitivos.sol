// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

import "hardhat/console.sol";

contract Primitivos {
    bool public pausado;
    bytes32 private saludo = hex"686F6C61";
    bytes32 private trabajo = hex"72777734d7f1f5d229e9db45f1a52389ecd4b2e4a9960a7b4903feb0905506d5";
    string private textoGuardado = "60041581";

    function pausar(bool _pausado) public {
        pausado = _pausado;
    }

    function operar() public view{
        require(pausado == false , "El contrato esta pausado");
        console.log("Aqui va toda la logica del function operar");
    }

    function devolverSaludo() public view returns(bytes32) {
        return saludo;
    }

    function validarTrabajo(string memory _trabajo) public view{
        bytes32 cadenaTemp = keccak256(abi.encodePacked(_trabajo));
        require (cadenaTemp == trabajo, "No es el mismo trabajo");
        console.log("Ejecucion de bloque por trabajo correcto");
    }

    function compararCadenas(bytes32 _textoHex) public view{
        require (_textoHex == keccak256(abi.encodePacked(textoGuardado)), "No es el mismo trabajo");
        console.log("Ejecucion de bloque por trabajo correcto");
    }
}