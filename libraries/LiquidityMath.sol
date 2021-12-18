// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

/// @title Math library for disponible
library LiquidityMath {
    /// @notice Add a signed disponible delta to disponible and revert if it overflows or underflows
    /// @param x The disponible before change
    /// @param y The delta by which disponible should be changed
    /// @return z The disponible delta
    function addDelta(uint128 x, int128 y) internal pure returns (uint128 z) {
        if (y < 0) {
            require((z = x - uint128(-y)) < x, 'LS');
        } else {
            require((z = x + uint128(y)) >= x, 'LA');
        }
    }
}
