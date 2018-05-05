const Patient = artifacts.require("./Patient.sol")

module.exports = function(deployer) {
	deployer.deploy(Patient, "namePlaceholder", 99, "Male");
};
