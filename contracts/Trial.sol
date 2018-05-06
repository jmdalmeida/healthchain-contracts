pragma solidity ^0.4.23;

contract TrialRegistry {
    uint[] indexes;
    mapping (uint => address) trials;

    function add(address trialAddress) public returns(uint) {
        trials[indexes.length] = trialAddress;
        indexes.push(indexes.length);
        return indexes.length;
    }

    function getTrialsCount() public view returns(uint) {
        return indexes.length;
    }

    function getTrial(uint index) public view returns(Trial) {
        return Trial(trials[index]);
    }
}

contract Trial {
    string name;
    string description;
    bool ongoing;

    constructor(string _name, string _description) public {
        name = _name;
        description = _description;
        ongoing = false;
    }

    function getName() public view returns(string) {
        return name;
    }

    function getDescription() public view returns(string) {
        return description;
    }

    function isOngoing() public view returns(bool) {
        return ongoing;
    }

    function setOngoing(bool _ongoing) public {
        ongoing = _ongoing;
    }
}
