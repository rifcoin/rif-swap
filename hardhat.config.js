require("@nomiclabs/hardhat-ethers");
 
module.exports = {
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {
       allowUnlimitedContractSize: true,
       gasPrice: "auto",
       gas:"auto",
       gasMultiplier:3
    },
    localhost: {
      url: "http://127.0.0.1:8545",
      gasPrice:"auto",
      gas:"auto",
      gasMultiplier:3
    },
    
  },
  solidity:{
    version: "0.8.6",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts"
  },
  mocha: {
    timeout: 20000
  }  

};

task("accounts", "print accounts" , async ( _ , hre) => {

  console.log( "List of accounts");
   const accounts = await hre.ethers.getSigners();
   accounts.forEach(element => {
    console.log( (element.address));
   });
});



task("balance", "balance of account" )
.addParam("account", "The account's address")
.setAction( async ( taskArgs, hre  ) => {

  console.log( "List of accounts");

    const balance = await hre.ethers.getDefaultProvider().getBalance(taskArgs.account) ;
    console.log(balance );
});

task("deploy", "Deploy contracts" , async () => {
  console.log( "Deploy contracts");
  const RifainSwapFactory = await hre.ethers.getContractFactory('RifainSwapFactory');
  const rswap = await RifainSwapFactory.deploy();
  console.log(rswap);

});
