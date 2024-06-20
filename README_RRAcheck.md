# Using require revert and assert for error handling 

The `RRAcheck` contract in Solidity demonstrates the use of `require`, `revert`, and `assert` statements for error handling. This code helps understand the use of error handling by require revert and assert statement.

## Description
The `RRAcheck` Solidity contract includes three functions to demonstrate error handling mechanisms. The `testRequire` function uses the `require` statement to ensure the input `_i` is greater than 10, otherwise, it throws an error. The `testRevert` function achieves the same input check using the `revert` statement within an `if` condition. The `testAssert` function uses the `assert` statement to check if the state variable `num` is 0, which will fail since `num` is set to 1, demonstrating the use of `assert` for conditions that should never occur in normal execution.

### Installing
You can see my program on github at - https://github.com/Anas-7860/meta-js-asessment/blob/main/revert%20assert%20require%20check


### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.
Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:

    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.13;
    contract RRAcheck {
    
     function testRequire(uint _i) public pure returns(uint){

      require(_i > 10, "Input must be greater than 10");

        return _i+1;
    }

    function testRevert(uint _i) public pure returns(uint) {
      
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
        else{
             return _i+1;
        }
    }

    uint public num = 1;

    function testAssert() public view returns(uint){
        assert(num == 0);
         return 1+2;
    }
}


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Require Revert and Assert function. Click on the "RRAcheck" contract in the left-hand sidebar, and then click on the "Require Revert and Assert" function. Finally, click on the "transact" button to execute the function and retrieve the  messages acoording to the conditions given by the program.


## Authors

Md Anas Khan
email - anaskhan9501499079@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
