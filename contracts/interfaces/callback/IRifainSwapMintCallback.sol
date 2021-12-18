// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

/// @title Callback for IUniswapV3PoolActions#mint
/// @notice Any contract that calls IUniswapV3PoolActions#mint must implement this interface
interface IRifainSwapMintCallback {
    /// @notice Called to `msg.sender` after minting disponible to a position from IRifainSwap#mint.
    /// @dev In the implementation you must pay the pool tokens owed for the minted disponible.
    /// The caller of this method must be checked to be a UniswapV3Pool deployed by the canonical UniswapV3Factory.
    /// @param amount0Owed The amount of token0 due to the pool for the minted disponible
    /// @param amount1Owed The amount of token1 due to the pool for the minted disponible
    /// @param data Any data passed through by the caller via the IUniswapV3PoolActions#mint call
    function mintCallback(
        uint256 amount0Owed,
        uint256 amount1Owed,
        bytes calldata data
    ) external;
}
