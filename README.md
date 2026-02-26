# King Forever

A blockchain-based territory conquest game built on **BNB Smart Chain (BSC)** and **Solana**, where players buy countries on a world map and earn profits when territories change hands.

## Technology Stack

- **Blockchain**: BNB Smart Chain (Primary) + Solana
- **Smart Contracts**: MEFAI Token (BEP-20 on BSC, SPL on Solana)
- **Frontend**: React 18 + TypeScript + Vite + ethers.js + @solana/web3.js
- **Backend**: Node.js + Express + PostgreSQL + Redis
- **Rendering**: WebGL / Three.js for 3D world map
- **Development**: Hardhat, OpenZeppelin libraries

## Supported Networks

| Network | Chain ID | Status |
|---------|----------|--------|
| **BNB Smart Chain Mainnet** | 56 | ✅ Live |
| BNB Smart Chain Testnet | 97 | Testing |
| Solana Mainnet | mainnet-beta | ✅ Live |

## Contract Addresses

| Network | Token Contract (MEFAI) | Type |
|---------|----------------------|------|
| **BNB Smart Chain** | `0x45E57907058c707a068100De358BA4535b18E2F3` | BEP-20 |
| Solana | `7gcoey4EXJcZ8u3iGYhgTBrh3JuhLWzV4Gs1zNaPtu3U` | SPL Token |

## Features

1. **Territory Conquest on BNB Chain**: Buy and hold 173 countries with +20% price increase per purchase
2. **Instant Profit Distribution**: Previous owner receives 10% profit automatically via BSC transactions
3. **Gas-Efficient Design**: Optimized for low-cost transactions on BNB Smart Chain
4. **Multi-Chain Support**: Primary deployment on BSC with Solana bridge
5. **WebGL Browser Game**: No downloads, play directly from browser
6. **Daily Seasons**: 24-hour competitive seasons with MVP rewards
7. **Clan System**: Team-based gameplay with shared treasury
8. **Prediction Markets**: VAMM-based betting on game outcomes

## BNB Chain Configuration

```javascript
// hardhat.config.js
networks: {
  bsc: {
    url: "https://bsc-dataseed.binance.org/",
    chainId: 56,
    accounts: [process.env.DEPLOYER_PRIVATE_KEY]
  },
  bscTestnet: {
    url: "https://data-seed-prebsc-1-s1.binance.org:8545/",
    chainId: 97,
    accounts: [process.env.DEPLOYER_PRIVATE_KEY]
  }
}
```

```javascript
// Frontend wallet connection (BSC)
const BSC_CHAIN_CONFIG = {
  chainId: '0x38', // 56 in hex
  chainName: 'BNB Smart Chain',
  nativeCurrency: { name: 'BNB', symbol: 'BNB', decimals: 18 },
  rpcUrls: ['https://bsc-dataseed.binance.org/'],
  blockExplorerUrls: ['https://bscscan.com']
};
```

## Project Structure

```
king-forever/
├── contracts/           # Smart contracts (Solidity)
│   └── MEFAI.sol       # BEP-20 token contract
├── frontend/           # React + TypeScript frontend
│   ├── src/
│   │   ├── components/ # UI components
│   │   ├── hooks/      # Web3 hooks (useWallet, useContract)
│   │   └── utils/      # BSC/Solana utilities
│   └── vite.config.ts
├── backend/            # Node.js API server
│   └── src/
│       ├── routes/     # API endpoints
│       └── services/   # Blockchain interaction services
└── docs/               # Documentation
```

## Wallet Integration

### BNB Smart Chain
- MetaMask (EIP-1193)
- Trust Wallet (WalletConnect v2)
- Binance Wallet (EIP-1193)

### Solana
- Phantom
- Solflare

## Game Economics

| Parameter | Value |
|-----------|-------|
| Total Territories | 173 (151 normal + 22 castles) |
| Price Increase | +20% per purchase |
| Seller Profit | 10% |
| Treasury (Normal) | 5% |
| Treasury (Castle) | 7% |
| Season Duration | 24 hours |
| MVP Player Reward | 3% of season pool |
| MVP Clan Reward | 7% of season pool |

## Quick Start

```bash
# Clone repository
git clone https://github.com/AIMeizta/MEFAI.git

# Install dependencies
npm install

# Configure environment
cp .env.example .env
# Add BSC RPC and wallet keys

# Run development server
npm run dev
```

## Links

| Resource | URL |
|----------|-----|
| **Live Game** | [kingforever.io](https://kingforever.io) |
| **Documentation** | [kingforever.io/winnerguide](https://kingforever.io/winnerguide) |
| **BSCScan** | [Token Contract](https://bscscan.com/token/0x45E57907058c707a068100De358BA4535b18E2F3) |
| **Twitter/X** | [@MetaFinancialAI](https://x.com/MetaFinancialAI) |
| **Telegram** | [t.me/mefailegion](https://t.me/mefailegion) |

## Security

- Smart contracts follow OpenZeppelin standards
- All transactions require user wallet signature
- No private keys stored on servers
- Rate limiting and DDoS protection enabled

## License

MIT License - see [LICENSE](LICENSE) file for details.

---

**Deployed and optimized for BNB Smart Chain**
