module MyModule::RevenueSharing {

    use aptos_framework::signer;
    use aptos_framework::coin;
    use aptos_framework::aptos_coin::AptosCoin;

    /// Struct representing a revenue-sharing pool.
    struct Pool has store, key {
        total_revenue: u64,  // Total revenue in the pool
        share_percentage: u64,  // Share percentage for the contributor
    }

    /// Function to create a new revenue-sharing pool.
    public fun create_pool(owner: &signer, share_percentage: u64) {
        let pool = Pool {
            total_revenue: 0,
            share_percentage,
        };
        move_to(owner, pool);
    }

    /// Function for users to contribute funds to the pool.
    public fun contribute_to_pool(contributor: &signer, pool_owner: address, amount: u64) acquires Pool {
        let pool = borrow_global_mut<Pool>(pool_owner);

        // Withdraw the contribution from the contributor
        let contribution = coin::withdraw<AptosCoin>(contributor, amount);
        
        // Deposit the contribution into the pool owner's account
        coin::deposit<AptosCoin>(pool_owner, contribution);

        // Update the total revenue in the pool
        pool.total_revenue = pool.total_revenue + amount;
    }
}
