pragma solidity ^0.4.0;
 
contract Incluit {
  
   string storedMessage;
 
   constructor() {
       storedMessage = "Hola Incluit";
   }
 
   function getMessage() view returns(string) {
       return storedMessage;
   }
 
   function setMessage(string _newText) {
       storedMessage = _newText;
   }
}
