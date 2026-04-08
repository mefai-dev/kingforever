# King Forever

A blockchain-based territory conquest game token deployed on **BNB Smart Chain (BSC)**.

## Contract

**MEFAI Token** (BEP-20) - the in-game currency for the King Forever territory conquest game.

| Network | Contract Address | Type |
|---------|-----------------|------|
| **BNB Smart Chain** | `0x45E57907058c707a068100De358BA4535b18E2F3` | BEP-20 |

### Contract Details

- **Name**: Meta Financial AI (MEFAI)
- **Decimals**: 18
- **Initial Supply**: 1,000,000,000 MEFAI (minted to deployer)
- **Standard**: ERC20 + ERC20Burnable + Ownable (OpenZeppelin)
- **Compiler**: Solidity ^0.8.20
- **Framework**: Hardhat + OpenZeppelin

## Project Structure

```
kingforever/
├── MEFAI.sol            # BEP-20 token contract
├── hardhat.config.js    # BSC mainnet + testnet config
├── package.json         # Dependencies
├── bnbconfig.json       # BSC chain configuration
└── LICENSE              # MIT License
```

## Quick Start

```bash
# Clone repository
git clone https://github.com/mefai-dev/kingforever.git

# Install dependencies
npm install

# Configure environment
cp .env.example .env
# Add BSC RPC and deployer private key
```

## Links

| Resource | URL |
|----------|-----|
| **Live Game** | [kingforever.io](https://kingforever.io) |
| **Documentation** | [kingforever.io/winnerguide](https://kingforever.io/winnerguide) |
| **BSCScan** | [Token Contract](https://bscscan.com/token/0x45E57907058c707a068100De358BA4535b18E2F3) |
| **Twitter/X** | [@MetaFinancialAI](https://x.com/MetaFinancialAI) |
| **Telegram** | [t.me/mefailegion](https://t.me/mefailegion) |

## License

MIT License - see [LICENSE](LICENSE) file for details.
