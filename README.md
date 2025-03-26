Overview
The Revenue Sharing Pools Smart Contract is a Move-based contract developed for the Aptos blockchain. This contract facilitates the creation of decentralized revenue-sharing pools, allowing users to contribute funds and track total revenue and shares within each pool. It provides a basic framework that can later be expanded into more complex revenue-sharing and crowdfunding mechanisms.

Vision
The primary vision of the Revenue Sharing Pools is to create a transparent and decentralized platform for individuals and organizations to pool resources and share in the revenue generated from their combined efforts. By leveraging blockchain technology, this contract ensures:

Fair distribution of revenue.

Secure and auditable transactions.

Increased trust and collaboration among participants.

Through these features, the project aims to foster greater cooperation and transparent distribution of funds.

Future Scope
The Revenue Sharing Pools Smart Contract has potential for expansion and improvement. The following features are planned for future development:

Dynamic Share Distribution:

Rather than equal shares, contributors can receive shares based on the amount they contribute, allowing for a more equitable distribution.

Automated Revenue Distribution:

Once a pool reaches a predefined revenue threshold, funds can be automatically distributed among contributors according to their shares.

Governance Features:

Introduce mechanisms for governance, enabling pool members to vote on important decisions, such as how the funds should be used or if any parameters should be adjusted.

Integration with Other Contracts:

Extend the contract's functionality to interact with other decentralized applications (dApps) or smart contracts for use cases such as staking, profit-sharing, or investment funds.

User Interface:

Develop an intuitive frontend interface for users to easily create pools, contribute funds, and track their share of revenues.

Contract Details
The Revenue Sharing Pools Smart Contract consists of two main functions: create_pool and contribute_to_pool.

1. create_pool(owner: &signer)
This function allows the creator (or "owner") of the pool to initialize a new revenue-sharing pool. Upon calling this function, a pool is created with 0 shares and 0 revenue, which is stored on the blockchain.

Parameters:

owner: The signer who is the individual or entity creating the pool.

Returns:

This function does not return any value but stores the new pool in the blockchain.

2. contribute_to_pool(contributor: &signer, pool_owner: address, amount: u64)
This function enables contributors to add funds to an existing pool. The contributor sends a specified amount of Aptos coins to the pool, and the pool’s total revenue and share count are updated accordingly.

Parameters:

contributor: The user who is contributing revenue to the pool.

pool_owner: The address of the pool owner managing the pool.

amount: The amount of revenue (in Aptos coins) that the contributor wishes to contribute.

Returns:

The contract updates the pool's total_revenue and total_shares.

Key Structs
Pool Struct
This struct represents a revenue-sharing pool and contains the following properties:

total_shares: The number of shares in the pool. This value increases with each contribution.

total_revenue: The total amount of revenue accumulated in the pool, in Aptos coins.

Example Flow
Creating a Pool:

Alice, the pool owner, calls create_pool to initialize a new pool. Initially, the pool has 0 shares and 0 revenue.

Contributing to the Pool:

Bob, a contributor, decides to contribute 100 Aptos coins to Alice's pool. Bob calls contribute_to_pool, which updates the pool’s total_revenue to 100 Aptos and total_shares accordingly.

Future Improvements
Dynamic Share Distribution: Enhance the contract to support a system where contributors receive shares proportional to their contributions over time.

Automated Distribution: Implement a function to automatically distribute funds when a pool hits a revenue threshold.

Governance: Add voting mechanisms for pool participants to make decisions regarding fund usage or changes to pool rules.

This Revenue Sharing Pools Smart Contract lays the foundation for decentralized revenue-sharing systems. It ensures that contributions are tracked transparently, and rewards are distributed securely and fairly among participants.

## Contract Address
"0x2062eafbc5afd42d1fe85bff8617e1cc441d0f1bb8c89c6434c2f98821ab9b9e"
![Screenshot 2025-03-26 110340](https://github.com/user-attachments/assets/c0d25304-bed8-404e-a62a-32b45f69f858)
