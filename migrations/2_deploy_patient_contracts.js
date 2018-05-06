const Patient = artifacts.require("./Patient.sol")
const PatientMedicalRecords = "{asd}"

module.exports = function(deployer) {
	console.log(PatientMedicalRecords)
	deployer.deploy(Patient, "Dalai Sarda", "Tibete", "31-07-1994", "Non-Binary", PatientMedicalRecords );
};
