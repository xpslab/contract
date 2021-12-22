// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "./public/ERC20.sol";
import "./public/MinterAccess.sol";

contract XPS is ERC20("X-PARALLEL SPACE", "XPS"), MinterAccess {
    uint256 public MAX_SUPPLY = 200 * 1e22;
    function mint(address _to, uint256 _amount) external onlyMinter {
        super._mint(_to, _amount);
        require(totalSupply() <= MAX_SUPPLY);
    }

    function burn( uint256 _amount) external {
        super._burn(_msgSender(), _amount);
    }

}

