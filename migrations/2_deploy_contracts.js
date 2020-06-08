var DocumentVerifier = artifacts.require(“./contracts/DocumentVerifier.sol”);
module.exports = function(deployer) {
    deployer.deploy(DocumentVerifier);
};