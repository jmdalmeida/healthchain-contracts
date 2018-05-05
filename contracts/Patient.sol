pragma solidity ^0.4.17;

contract Patient {
    string name;
    uint8 age;
    string gender;
    uint medicalRecords;

    constructor(string _name, uint8 _age, string _gender) {
        name = _name;
        age = _age;
        gender = _gender;
    }

    function setMedicalRecords(uint _medicalRecords) public {
            medicalRecords = _medicalRecords;
    }

    function getName() public constant returns(string) {
        return name;
    }
    function getAge() public constant returns(uint8) {
        return age;
    }
    function getGender() public constant returns(string) {
        return gender;
    }
    function getMedicalRecords() public constant returns(uint) {
        return medicalRecords;
    }
}
