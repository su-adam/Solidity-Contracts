// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract GradeCalculator {

        string letterGrade;
        string  a = 'A';
        string  b = 'B';
        string  c = 'C';
        string  d = 'D';
        string  e = 'E';
        string  f = 'F';
        string error = "Please submit another number";

    function calculateGrade(uint grade) external view returns(string memory _letterGrade ) {
        
        if (grade >= 90 && grade <= 100 ) {
            return a; 
        } else if (grade >= 80 && grade < 90) {
            return b;
        } else if (grade >= 70 && grade < 80) {
            return c;
        } else if (grade >= 60 && grade < 70) {
            return d;
        } else if (grade >= 50 && grade < 60) {
            return e;
        } else if (grade <= 40) {
            return f;
        } else if (grade > 100) {
            return error;
        }
    }

}