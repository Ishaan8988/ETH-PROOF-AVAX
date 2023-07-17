## EeeorHandling Contract

This is a Solidity smart contract that demonstrates different error handling techniques using assert, revert, and require functions.


## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EthAvax {
   
    // uint public num = 0;
    uint b=5;

    function testAssert(uint num) public pure{
        assert(num!=0);
    }

    function divide(uint num1, uint num2) public pure returns (uint){
        if(num1<num2){
           
            revert("please provide num1 greater than num2");
            
        }
        return num1/num2;
       

    }
    function mult(uint a) public view returns (uint){
        require(a>0,"Value of a is zero , we don't want the result to be zero");
        return a*b;

    }

}


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile ErrorHandling.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it. After, that to check whether the contract is running successfully we can check by performing our task.

The testAssert(uint num) function demonstrates the usage of the assert function.It takes a num parameter and checks if it is not equal to zero using the assert statement.If the condition fails, it triggers an "Internal error" and aborts the execution.

The function divide(uint num1, uint num2) demonstrates the usage of the revert function.It takes _num1 and _num2 parameters and performs division.
If the _num1 is less than _num2, it reverts the transaction with a custom error message stating that the num1 should be greater than the num2.
If the condition is met, it returns the result of the division.

The function mult(uint a) demonstrates the usage of the require function.
It takes an a parameter and performs multiplication with a predefined constant b.It first checks if a is greater than zero using the require statement.If the condition fails, it reverts the transaction with a custom error message stating that the value of a should not be zero.
If the condition is met, it returns the result of the multiplication.
Usage.

Make sure you have Solidity ^0.8.17 installed.

Compile and deploy the ErrorHandling contract to a supported Ethereum network.

Interact with the deployed contract by calling the available functions and providing the required parameters.

So, atlast we can see all the things are performed well and as said.

## Authors

Metacrafter Ishaan
[@metacraftersio](https://twitter.com/metacraftersio)


## License

This project is licensed under the MIT License.