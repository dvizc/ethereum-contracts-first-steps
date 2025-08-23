// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
contract Struct {
    struct Student{
        string name;
        uint256 age;
        bool isMale;
    }

    //State state
    //inicializa
    //Student Forma 1
    Student student1=Student("Juan",20,true);
    Student student2=Student("Maria",25,false);
    Student student3=Student("Dome",20,false);
    Student student4=Student("Ana",28,true);

    function getStudent1() public view returns( Student memory){
        return student1;
    }
    function getStudent2() public view returns( Student memory){
        return student2;
    }
    function getStudent3() public view returns( Student memory){
        return student3;
    }
    function getStudent4() public view returns( Student memory){
        return student4;
    }
    function setStudent(Student memory _newstudent) public {
        student1=_newstudent;
    }
    //Student Forma 2
    Student[] public student;
    function getStudent(uint _index) public view returns( Student memory){
        return student[_index];
    }
    function setStudent() public {
        student.push(Student("Antony",25,true));
    }
}