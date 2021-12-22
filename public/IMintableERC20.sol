//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import './IDetailedERC20.sol';

interface IMintableERC20 is IDetailedERC20{
  function mint(address _recipient, uint256 _amount) external;
  function burnFrom(address account, uint256 amount) external;
  function lowerHasMinted(uint256 amount)external;
}
