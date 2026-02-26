// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MEFAI Token
 * @dev BEP-20 token for King Forever game on BNB Smart Chain
 * @notice This token is used for all in-game transactions including:
 *         - Territory purchases
 *         - Clan creation fees
 *         - Prediction market bets
 *         - MVP rewards distribution
 *
 * Deployed on BNB Smart Chain: 0x45E57907058c707a068100De358BA4535b18E2F3
 */
contract MEFAI is ERC20, ERC20Burnable, Ownable {

    // Game treasury address on BSC
    address public treasuryWallet;

    // Ecosystem fee wallet on BSC
    address public ecosystemWallet;

    // Fee percentages (in basis points, 100 = 1%)
    uint256 public constant DEPOSIT_FEE = 100;  // 1%
    uint256 public constant WITHDRAW_FEE = 100; // 1%

    event TreasuryUpdated(address indexed newTreasury);
    event EcosystemWalletUpdated(address indexed newEcosystem);

    constructor(
        address _treasuryWallet,
        address _ecosystemWallet
    ) ERC20("Meta Financial AI", "MEFAI") Ownable(msg.sender) {
        treasuryWallet = _treasuryWallet;
        ecosystemWallet = _ecosystemWallet;

        // Initial supply minted to deployer
        _mint(msg.sender, 1_000_000_000 * 10**decimals());
    }

    /**
     * @dev Update treasury wallet address
     * @param _newTreasury New treasury wallet address
     */
    function setTreasuryWallet(address _newTreasury) external onlyOwner {
        require(_newTreasury != address(0), "Invalid address");
        treasuryWallet = _newTreasury;
        emit TreasuryUpdated(_newTreasury);
    }

    /**
     * @dev Update ecosystem wallet address
     * @param _newEcosystem New ecosystem wallet address
     */
    function setEcosystemWallet(address _newEcosystem) external onlyOwner {
        require(_newEcosystem != address(0), "Invalid address");
        ecosystemWallet = _newEcosystem;
        emit EcosystemWalletUpdated(_newEcosystem);
    }

    /**
     * @dev Returns the number of decimals (18 for BSC compatibility)
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
