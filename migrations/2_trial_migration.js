var TrialRegistry = artifacts.require("TrialRegistry");
var Trial = artifacts.require("Trial");

export default function (deployer) {
    var t1, t2, t3, t4, tr;
    deployer.then(() => {
        return [
            Trial.new("name 1", "desc 1"),
            Trial.new("name 2", "desc 2"),
            Trial.new("name 3", "desc 3"),
            Trial.new("name 4", "desc 4")
        ];
    }).then((instances) => {
        TrialRegistry.new();
        t1 = instances[0];
        t2 = instances[1];
        t3 = instances[2];
        t4 = instances[3];

        return TrialRegistry.deployed();
    }).then((instance) => {
        tr = instance;

        tr.add(t1.address);
        tr.add(t2.address);
        tr.add(t3.address);
        tr.add(t4.address);
    });
}
