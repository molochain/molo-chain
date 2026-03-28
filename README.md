# MOLO CHAIN ($MOLO)

[![BNB Smart Chain](https://img.shields.io/badge/Network-BNB_Smart_Chain-F0B90B?style=flat&logo=binance)](https://bscscan.com/token/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.20-363636?logo=solidity)](https://soliditylang.org/)
[![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-5.x-4E5EE4?logo=openzeppelin)](https://openzeppelin.com/)
[![GoPlus Security](https://img.shields.io/badge/GoPlus_Security-PASS-00C853)](https://gopluslabs.io/)
[![Holders](https://img.shields.io/badge/Holders-2000+-blue)](https://bscscan.com/token/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF#balances)
[![Blockspot Verified](https://img.shields.io/badge/Blockspot-Verified-orange)](https://blockspot.io/coin/molo-chain/)

**Decentralized Logistics Ecosystem on BNB Smart Chain**

MOLO CHAIN is the native utility token powering the Molochain logistics ecosystem — a platform unifying freight management, AI-powered route optimization, and real-time shipment tracking on BNB Smart Chain. Targeting the **$9.1 trillion global logistics industry**.

---

## Contract Details

| Property | Value |
|----------|-------|
| **Contract** | [`0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF`](https://bscscan.com/token/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF) |
| **Network** | BNB Smart Chain (BSC) |
| **Standard** | BEP-20 |
| **Decimals** | 18 |
| **Total Supply** | 100,000,000,000,000 MOLO |
| **Compiler** | Solidity v0.8.20 |
| **License** | MIT |

## Security

| Check | Status |
|-------|--------|
| Owner Renounced | ✅ |
| Source Code Verified | ✅ |
| Not Proxy | ✅ |
| Not Mintable | ✅ |
| Buy/Sell Tax | 0% |
| Not Honeypot | ✅ |
| No Hidden Owner | ✅ |
| No Self-destruct | ✅ |
| LP Locked | ✅ |
| Sourcify Full Match | ✅ |

> Verified by [GoPlus Security](https://gopluslabs.io/) and [Sourcify](https://repo.sourcify.dev/contracts/full_match/56/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF/)

## Ecosystem

MOLO CHAIN is part of the larger Molochain ecosystem:

- **MoloLink** — Freight management platform connecting shippers, carriers, and logistics providers
- **OTMS** — Order & Transport Management System with real-time tracking
- **RayaNava** — AI-powered route optimization engine for last-mile delivery
- **MoloShipment** — On-chain shipment tracking smart contract (coming soon)
- **MoloMarketplace** — Decentralized logistics marketplace (coming soon)

## Architecture

```
┌──────────────────────────────────────────────┐
│              MOLO CHAIN Token                │
│         BEP-20 on BNB Smart Chain            │
├──────────────────────────────────────────────┤
│                                              │
│  ┌─────────────┐  ┌─────────────┐            │
│  │  MoloLink   │  │    OTMS     │            │
│  │  (Freight)  │  │  (Tracking) │            │
│  └──────┬──────┘  └──────┬──────┘            │
│         │                │                    │
│  ┌──────┴────────────────┴──────┐            │
│  │        RayaNava AI           │            │
│  │   (Route Optimization)       │            │
│  └──────────────────────────────┘            │
│                                              │
│  ┌─────────────┐  ┌─────────────┐            │
│  │MoloShipment │  │    Molo     │            │
│  │  (On-Chain) │  │ Marketplace │            │
│  └─────────────┘  └─────────────┘            │
│                                              │
└──────────────────────────────────────────────┘
```

## Quick Start

### Prerequisites

- Node.js >= 18
- npm or yarn

### Installation

```bash
git clone https://github.com/molochain/molo-chain.git
cd molo-chain
npm install
```

### Compile Contracts

```bash
npx hardhat compile
```

### Run Tests

```bash
npx hardhat test
```

### Deploy (BSC Mainnet)

```bash
npx hardhat run scripts/deploy.js --network bscMainnet
```

## Token Distribution

| Allocation | Percentage | Tokens | Lock |
|-----------|-----------|---------|------|
| Liquidity Pool | 40% | 40T MOLO | LP Locked |
| Team & Development | 20% | 20T MOLO | 12-month vesting |
| Ecosystem & Rewards | 20% | 20T MOLO | Released over time |
| Marketing & Partnerships | 10% | 10T MOLO | — |
| Community Airdrops | 10% | 10T MOLO | — |

## Deployed Contracts

| Contract | Address | Purpose |
|----------|---------|---------|
| MoloChain (Token) | [`0x5c3A99...334FcF`](https://bscscan.com/address/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF) | BEP-20 Token |
| TeamVesting | [`0x3EEC23...83215`](https://bscscan.com/address/0x3EEC23A2B1f9E8a3c96735eef1BF966F16983215) | Team Token Lock |
| LP TimeLock | [`0xb6F715...e803`](https://bscscan.com/address/0xb6F71529C8A72575A063e0A6E869060d1426e803) | Liquidity Lock |

## Trading

- **PancakeSwap V2**: [MOLO/WBNB](https://pancakeswap.finance/swap?outputCurrency=0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF)
- **DEXScreener**: [Live Chart](https://dexscreener.com/bsc/0x5c3A99A8531BF021423CAD9d0a07Df76aF334FcF)
- **GeckoTerminal**: [Analytics](https://www.geckoterminal.com/bsc/pools/0x5f38CAd1465aF9808Bd1187a6EC628AD88296F37)

## Links

| Platform | Link |
|----------|------|
| Website | [molochain.com](https://molochain.com) |
| Token Page | [molo.molochain.com](https://molo.molochain.com) |
| Telegram | [t.me/MOLOCHAIN](https://t.me/MOLOCHAIN) |
| Discord | [discord.com/invite/prgJ7THWQn](https://discord.com/invite/prgJ7THWQn) |
| Instagram | [@moloecosystem](https://instagram.com/moloecosystem) |
| Blockspot | [Verified](https://blockspot.io/coin/molo-chain/) |
| CoinPaprika | [Listed](https://coinpaprika.com/coin/molo-molo-chain/) |

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

## License

This project is licensed under the MIT License — see [LICENSE](LICENSE) file.

---

**Built with trust. Built for logistics. Built on BNB Chain.**
