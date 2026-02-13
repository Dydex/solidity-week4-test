// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StudentAttendance {
  
    struct Student {
        string name;
        uint256 age;
        bool present;
    }
        
    Student[] public students;
       
    event StudentAdded(uint256 indexed studentId, string name, uint256 age);
    event AttendanceUpdated(uint256 indexed studentId, bool present);
    
   
    function addStudent(string memory _name, uint256 _age) public {
        students.push(Student({
            name: _name,
            age: _age,
            present: false
        }));
        
        emit StudentAdded(students.length - 1, _name, _age);
    }
    
    
    function updateAttendance(uint256 _studentId, bool _present) public {
        require(_studentId < students.length, "Student does not exist");
        
        students[_studentId].present = _present;
        
        emit AttendanceUpdated(_studentId, _present);
    }
    
    
}
