//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract MM{
    function mean(uint256[] memory arr) public pure returns(uint256)
    {
        uint result = 0;
        for (uint i=0; i<arr.length; i++)
        {
            result = result + arr[i];
        } 
        return result = result/arr.length;
    }
}