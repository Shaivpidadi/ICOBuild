const Ico = artifacts.require('Ico')
const Crowdsale = artifacts.require('MyCrowdsale')

module.exports = async function (deployer) {
  const initialSupply = 1000000
  const tokenName = 'Shaishav'
  const symbol = 'SHA'
  const decimal = 18
  const ownerAddress = '0x8a0DF0DA230cDac5F1455a00B983C5fab0f6C974'

  deployer.deploy(Ico, initialSupply, tokenName, symbol, decimal, ownerAddress).then(function () {
    return deployer.deploy(Crowdsale, 1, Ico.address, ownerAddress)
  })
}
