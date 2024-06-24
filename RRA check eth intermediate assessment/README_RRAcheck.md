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
    pragma solidity ^0.8.0;

    contract Crowdfunding {
    address public organizer;
    string public projectTitle;
    uint public fundingGoal;
    uint public totalFundsRaised;
    uint public deadline;
    mapping(address => uint) public contributionsBy;

    modifier onlyOrganizer() {
        require(msg.sender == organizer, "Only the organizer can call this function");
        _;
    }

    constructor(string memory _projectTitle, uint _fundingGoal, uint _durationInDays) {
        organizer = msg.sender;
        projectTitle = _projectTitle;
        fundingGoal = _fundingGoal;
        deadline = block.timestamp + (_durationInDays * 1 days);
    }

    function contribute() public payable {
        require(msg.value > 0, "Contribution must be greater than zero");
        
        if (block.timestamp > deadline) {
            revert("The crowdfunding campaign has ended");
        }

        totalFundsRaised += msg.value;
        contributionsBy[msg.sender] += msg.value;
    }

    function cancelProject() public onlyOrganizer {
        require(block.timestamp <= deadline, "The campaign has already ended");
        require(totalFundsRaised == 0, "Cannot cancel project with funds raised");

        projectTitle = "";
        fundingGoal = 0;
        deadline = block.timestamp;
    }

    function withdrawFunds() public onlyOrganizer {
        require(block.timestamp > deadline, "Cannot withdraw funds before the deadline");
        require(totalFundsRaised >= fundingGoal, "Funding goal not met");

        uint amount = totalFundsRaised;
        totalFundsRaised = 0;
        assert(amount > 0);  // Ensures that there are funds to withdraw

        payable(organizer).transfer(amount);
    }}



To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile HelloWorld.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "HelloWorld" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the Require Revert and Assert function. Click on the "RRAcheck" contract in the left-hand sidebar, and then click on the "Require Revert and Assert" function. Finally, click on the "transact" button to execute the function and retrieve the  messages acoording to the conditions given by the program.


## Authors

Md Anas Khan

email - anaskhan9501499079@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
