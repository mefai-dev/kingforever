# Wallet Integration Guide

King Forever uses standard Web3 wallet integration patterns for both BNB Chain (BSC) and Solana networks.

## Supported Wallets

### BNB Chain (BSC)
| Wallet | Integration Method |
|--------|-------------------|
| MetaMask | EIP-1193 Provider |
| Trust Wallet | WalletConnect v2 |
| Binance Wallet | EIP-1193 Provider |
| WalletConnect | WalletConnect v2 Protocol |

### Solana
| Wallet | Integration Method |
|--------|-------------------|
| Phantom | Solana Wallet Adapter |
| Solflare | Solana Wallet Adapter |
| Backpack | Solana Wallet Adapter |

## Connection Flow

```
User Action                    System Response
─────────────────────────────────────────────────
1. Click "ENTER WAR"     →    Show chain selector
2. Select BSC/Solana     →    Initialize wallet adapter
3. Connect wallet        →    Request account access
4. Sign message          →    Verify wallet ownership
5. Enter game            →    Load user balance/data
```

## Token Contract Addresses

### MEFAI Token
- **BSC**: `0x45E57907058c707a068100De358BA4535b18E2F3`
- **Solana**: `7gcoey4EXJcZ8u3iGYhgTBrh3JuhLWzV4Gs1zNaPtu3U`

## Transaction Types

| Action | Description | Fee |
|--------|-------------|-----|
| Deposit | Transfer MEFAI to game | 1% |
| Withdraw | Transfer MEFAI to wallet | 1% + network fee |
| Territory Purchase | Buy a country | Included in price |

## Security Features

1. **No Private Key Storage**: All signing happens in user's wallet
2. **Message Signing**: Ownership verification without transactions
3. **Transaction Confirmation**: All actions require explicit user approval
4. **Secure RPC**: Encrypted communication with blockchain nodes

## Integration Libraries

### BSC (Web3)
- ethers.js v6
- @web3-react/core
- @walletconnect/web3-provider

### Solana
- @solana/web3.js
- @solana/wallet-adapter-react
- @solana/wallet-adapter-wallets

## Network Configuration

### BSC Mainnet
```
Chain ID: 56
RPC URL: https://bsc-dataseed.binance.org/
Explorer: https://bscscan.com
```

### Solana Mainnet
```
Cluster: mainnet-beta
RPC URL: https://api.mainnet-beta.solana.com
Explorer: https://solscan.io
```

## Error Handling

| Error Code | Description | Resolution |
|------------|-------------|------------|
| 4001 | User rejected request | Prompt user to approve |
| -32002 | Request pending | Wait for user action |
| -32603 | Internal error | Retry connection |

## Testing

For development/testing:
- BSC Testnet (Chain ID: 97)
- Solana Devnet

---

For support: [kingforever.io/support](https://kingforever.io/winnerguide/support)
