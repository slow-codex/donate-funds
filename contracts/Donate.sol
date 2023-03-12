/// @title  Contract of the main funding of the project
/// @author slow-codex
/// @notice Get and Withdraw Funds and Setting minimum funding
/// @dev    CRUD and Importing Aggregator interface to check real time pricing

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Aggregator function to check off-chain realtime data
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract FundMe {
    uint256 public minimumINR = 1;

    function fund() public payable {
        // Send ETH
        require(msg.value > 1e18, "Didn't Send Enough");
    }

    function getPrice() public view returns (uint256) {
        // ABI
        // Address - 0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
        (, int256 price, , , ) = priceFeed.latestRoundData();
        return uint256(price * 1e10);
    }

    function getVersion() public view returns (uint256) {
        AggregatorV3Interface priceFeed = AggregatorV3Interface(
            0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419
        );
        return priceFeed.version();
    }

    function getConversionRate(
        uint256 ethAmount
    ) public view returns (uint256) {
        uint256 ethPrice = getPrice();
        uint256 ethAmountInUSD = (ethPrice * ethAmount) / 1e18;
        return ethAmountInUSD;
    }

    // function withdraw() {

    // }
}
