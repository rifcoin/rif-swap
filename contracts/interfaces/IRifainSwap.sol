// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import './pool/IRifainSwapImmutables.sol';
import './pool/IRifainSwapState.sol';
import './pool/IRifainSwapDerivedState.sol';
import './pool/IRifainSwapActions.sol';
import './pool/IRifainSwapOwnerActions.sol';
import './pool/IRifainSwapEvents.sol';

/// @title The interface for a Uniswap V3 Pool
/// @notice A Uniswap pool facilitates swapping and automated market making between any two assets that strictly conform
/// to the ERC20 specification
/// @dev The pool interface is broken up into many smaller pieces
interface IRifainSwap is
    IRifainSwapImmutables,
    IRifainSwapState,
    IRifainSwapDerivedState,
    IRifainSwapActions,
    IRifainSwapOwnerActions,
    IRifainSwapEvents
{

}
