/**
 * @type import('hardhat/config').HardhatUserConfig
 */
 require("dotenv").config();
 require("@nomiclabs/hardhat-ethers");
 const { API_URL, PRIVATE_KEY } = process.env;
 

module.exports = {
  solidity : '0.8.17',
  networks : {
    goerli : {
      url : API_URL,
      accounts : [PRIVATE_KEY]
    } 
  }
}
//0x62cC68C5E359f27b8F907b2F0c319c33580f54AB