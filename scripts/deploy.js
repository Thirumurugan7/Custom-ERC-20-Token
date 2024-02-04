const hre = require("hardhat");

async function deploy() {
    // Deploy the contract
    const MyToken = await hre.ethers.getContractFactory("GigToken");
    const myToken = await MyToken.deploy();

    // Log the deployed contract address
    console.log("ERC20 Permit contract deployed at:", myToken.target);
}

deploy()
    .then(() => console.log("Deployment complete"))
    .catch((error) => console.error("Error deploying contract:", error));