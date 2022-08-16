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
       require(msg.sender == owner, "Get out of here!");
       _;
   }
 
   constructor(string memory _name) {
       owner = msg.sender;
       courseName = _name;
   }
 
   function addStudent(string memory _name, string memory _lastName, uint _note) public onlyAdmin {
       studentsOfCourse.push(Student({
           name: _name,
           lastName: _lastName,
           note: _note
       }));
   }
 
   function getStudent(uint _index) public view returns(string memory studentName) {
       return studentsOfCourse[_index].name;
   }
 
   function getTotalOfStudents() public view returns(uint total) {
       return studentsOfCourse.length;
   }
 
   function getBestStudent() public view onlyAdmin returns(string memory studentName, uint studentNote) {
       studentName = studentsOfCourse[0].name;
       studentNote = studentsOfCourse[0].note;
 
       for (uint i = 0; i < studentsOfCourse.length; i++) {
 
           uint actualStudentNote = studentsOfCourse[i].note;
           if(actualStudentNote > studentNote) {
               studentName = studentsOfCourse[i].name;
               studentNote = studentsOfCourse[i].note;
           }
       }
   }
}
