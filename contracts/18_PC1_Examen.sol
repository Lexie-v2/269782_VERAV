// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Universidad_269782{

    struct Estudiante {
        uint256 id;
        string nombre;
        uint256 edad;
        string carrera;
    }

    Estudiante[] public estudiantes;

    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarEstudiantes(uint256 _id, string memory _nombre, uint256 _edad, string memory _carrera) public {
        estudiantes.push(Estudiante(_id, _nombre, _edad, _carrera));
    }

    function totalEstudiantes() public view returns (uint256) {
        return estudiantes.length;
    }

    function obtenerEstudiantes() public view returns (Estudiante[] memory) {
        return estudiantes;
    }

}