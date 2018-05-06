pragma solidity ^0.4.23;

contract Patient {
    string name;
    string bloodType;
    string country;
    string dateOfBirth;
    string gender;
    string medicalRecords;
    uint8 height;
    uint8 weight;

    constructor(string _name, string _bloodType, string _country, string _dateOfBirth, string _gender, string _medicalRecords, uint8 _height, uint8 _weight) {
        name = _name;
        bloodType = _bloodType;
        country = _country;
        dateOfBirth = _dateOfBirth;
        gender = _gender;
        medicalRecords = _medicalRecords;
        height = _height;
        weight = _weight;
    }

    function setHeight(uint8 _height) public {
        height = _height;
    }
    function setWeight(uint8 _weight) public {
        weight = _weight;
    }
    function setMedicalRecords(string _medicalRecords) public {
        medicalRecords = _medicalRecords;
    }


    function getName() public constant returns(string) {
        return name;
    }
    function getBloodType() public constant returns(string) {
        return bloodType;
    }
    function getCountry() public constant returns(string) {
        return country;
    }
    function getDateOfBirth() public constant returns(string) {
        return dateOfBirth;
    }
    function getGender() public constant returns(string) {
        return gender;
    }
    function getHeight() public constant returns(uint8) {
        return height;
    }
    function getWeight() public constant returns(uint8) {
        return weight;
    }
    //
    function getMedicalRecords() public constant returns (string) {
        return medicalRecords;
    }
}
