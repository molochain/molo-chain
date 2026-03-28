const { ethers } = require("hardhat");

async function main() {
  const [deployer] = await ethers.getSigners();
  console.log("Deploying with:", deployer.address);
  console.log("Balance:", ethers.formatEther(await ethers.provider.getBalance(deployer.address)), "BNB");

  const MoloChain = await ethers.getContractFactory("MoloChain");
  const token = await MoloChain.deploy();
  await token.waitForDeployment();

  const address = await token.getAddress();
  console.log("MoloChain deployed to:", address);
  console.log("Total supply:", ethers.formatEther(await token.totalSupply()), "MOLO");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });