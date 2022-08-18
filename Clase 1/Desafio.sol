// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;
 
contract IncluitCourse {
 
   address public owner;
   string public courseName;
   Student[] private studentsOfCourse;
 
   struct Student {
       string name;
       string lastName;
       uint note;
   }
 
   modifier onlyAdmin() {
       // Con este modificador nos aeguramos que 
       // solo el dueño del contrato podra agregar estudiantes
   }
 
   constructor(string memory _name) {
       // Se debera agregar el contenido necesario para crear deployar el contrato
   }
 
   function addStudent(string memory _name, string memory _lastName, uint _note) public onlyAdmin {
       // En esta funcion se podra agregar un nuevo estudiante al array de estudiantes del contrato
       // Solo el dueño del contrato podra agregarlos
   }
 
   function getStudent(uint _index) public view returns(string memory studentName) {
       // Con esta funcion el contrato nos devolvera el nombre del estudiante en la posicion 
       // que le pasemos por parametro
   }
 
   function getTotalOfStudents() public view returns(uint total) {
       // Con esta funcion podremos saber el total de estudiante que tenemos guardados en el array
   }
 
   function getBestStudent() public view onlyAdmin returns(string memory studentName, uint studentNote) {
       // Esta funcion debera devolvernos el nombre y la calificacion del estudiante que tenga mejor nota 
       // de todos los estudiantes cargados hasta el momento
   }
}
