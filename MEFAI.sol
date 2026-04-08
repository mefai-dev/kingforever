// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**
 * @title MEFAI Token
 * @dev BEP-20 token for King Forever game on BNB Smart Chain
 *
 * Deployed on BNB Smart Chain: 0x45E57907058c707a068100De358BA4535b18E2F3
 */
contract MEFAI is ERC20, ERC20Burnable, Ownable {

    constructor() ERC20("Meta Financial AI", "MEFAI") Ownable(msg.sender) {
        // Initial supply minted to deployer
        _mint(msg.sender, 1_000_000_000 * 10**decimals());
    }

    /**
     * @dev Returns the number of decimals (18 for BSC compatibility)
     */
    function decimals() public pure override returns (uint8) {
        return 18;
    }
}
