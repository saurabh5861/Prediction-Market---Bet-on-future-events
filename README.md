![Screenshot 2025-05-18 150156](https://github.com/user-attachments/assets/2e860e7e-38fd-4292-b578-0e9e14178e09)# Prediction Market

## Project Description

Prediction Market is a decentralized platform built on blockchain technology that allows users to create and participate in prediction markets. Users can create markets on future events, place bets on different outcomes, and earn rewards based on correct predictions. The platform operates in a trustless environment where market resolution and reward distribution are handled automatically by smart contracts.

The system enables anyone to become a market creator by posing questions about future events with multiple possible outcomes. Other users can then place bets using cryptocurrency, with the total pool being distributed among winners proportionally to their stakes. The platform takes a small fee to maintain operations and incentivize quality market creation.

## Project Vision

Our vision is to create a transparent, decentralized prediction market ecosystem that democratizes forecasting and provides a reliable mechanism for price discovery on future events. We aim to build a platform where collective intelligence can be harnessed to make better predictions about everything from sports outcomes to economic indicators, political events, and technological milestones.

By leveraging blockchain technology, we eliminate the need for centralized intermediaries, reduce counterparty risk, and ensure that all participants have equal access to market information. Our platform will serve as a foundation for informed decision-making and risk management across various industries and communities.

## Key Features

**Market Creation**: Users can create prediction markets on any future event with customizable options and timeframes. Market creators set the question, possible outcomes, and resolution deadline, making the platform versatile for various types of predictions.

**Decentralized Betting**: Participants can place bets on market outcomes using cryptocurrency, with all transactions recorded transparently on the blockchain. The system supports multiple betting options per market and allows users to adjust their positions before market closure.

**Automated Resolution**: Markets are resolved by designated resolvers (creators or administrators) after the event deadline. The smart contract automatically calculates and distributes winnings based on the outcome, ensuring fair and transparent reward distribution.

**Proportional Rewards**: Winners receive payouts proportional to their stake in the winning outcome pool. This mechanism ensures that larger bets receive correspondingly larger rewards while maintaining fairness for all participants.

**Platform Security**: Built with security best practices including reentrancy protection, access controls, and emergency pause functionality. The contract implements multiple safeguards to protect user funds and prevent malicious activities.

**Low Platform Fees**: The system charges a minimal platform fee (2.5% by default) that goes toward maintaining the platform and can be adjusted by governance. This ensures sustainable operations while keeping participation costs low.

## Future Scope

**Oracle Integration**: Integration with decentralized oracle networks like Chainlink to enable automatic market resolution for objective events such as price feeds, weather data, and sports scores. This will reduce reliance on manual resolution and increase market efficiency.

**Advanced Market Types**: Implementation of more sophisticated market structures including conditional markets, combinatorial markets, and long-term forecasting markets. These features will enable more complex prediction scenarios and attract institutional users.

**Governance Token**: Launch of a native governance token that allows community members to vote on platform parameters, fee structures, and feature development. Token holders will have a say in the platform's evolution and may receive rewards for participation.

**Mobile Application**: Development of user-friendly mobile applications for iOS and Android to make prediction market participation more accessible. The app will feature intuitive interfaces for market browsing, betting, and portfolio management.

**Social Features**: Addition of social elements including user profiles, reputation systems, leaderboards, and market discussion forums. These features will help build a community around prediction markets and improve market quality through collective intelligence.

**Cross-Chain Compatibility**: Expansion to multiple blockchain networks to reduce transaction costs and increase accessibility. This will involve implementing bridges and multi-chain infrastructure to serve users across different ecosystems.

**Institutional Tools**: Development of advanced analytics, API access, and bulk market creation tools designed for institutional users, researchers, and organizations who want to leverage prediction markets for decision-making and risk management.

**Regulatory Compliance**: Working with legal experts to ensure compliance with relevant regulations across different jurisdictions, enabling broader adoption while maintaining the decentralized nature of the platform.

## Installation and Setup

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- MetaMask or similar Web3 wallet

### Installation Steps

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd prediction-market
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Set up environment variables**
   ```bash
   cp .env.example .env
   # Edit .env with your private key and other configurations
   ```

4. **Compile contracts**
   ```bash
   npm run compile
   ```

5. **Deploy to Core Testnet 2**
   ```bash
   npm run deploy
   ```

## Usage

### Creating a Market
```javascript
// Example: Create a market about Bitcoin price
await contract.createMarket(
  "Will Bitcoin reach $100,000 by end of 2024?",
  ["Yes", "No"],
  2592000 // 30 days in seconds
);
```

### Placing a Bet
```javascript
// Bet 0.1 ETH on option 0 (Yes)
await contract.placeBet(marketId, 0, { value: ethers.parseEther("0.1") });
```

### Resolving a Market
```javascript
// Resolve market with winning option
await contract.resolveMarket(marketId, winningOptionIndex);
```

### Withdrawing Winnings
```javascript
// Claim winnings from resolved market
await contract.withdrawWinnings(marketId);
```

## Contract Architecture

The main contract (`Project.sol`) includes three core functions:

- **createMarket()**: Allows users to create new prediction markets
- **placeBet()**: Enables betting on market outcomes
- **resolveMarket()**: Resolves markets and determines winners

## Testing

Run the test suite with:
```bash
npx hardhat test
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For questions and support, please open an issue on the GitHub repository or contact the development team.

---

**Network Information:**
- Core Testnet 2 RPC: https://rpc.test2.btcs.network  
- Chain ID: 1115
- Block Explorer: https://scan.test.btcs.network

contract address :- 0x627a4849769dcdf7a26a0136416CEBeA252FD127

![Screenshot 2025-05-18 150156](https://github.com/user-attachments/assets/8a343913-66de-45c7-b3dd-eae98ce74b68)
