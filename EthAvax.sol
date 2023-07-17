// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract EthAvax {
   
    // uint public num = 0;
    uint b=5;

    function testAssert(uint num) public pure{
        assert(num!=0);
    }

    function divide(uint _num1, uint _num2) public pure returns (uint){
        if(_num1<_num2){
           
            revert("please provide num1 greater than num2");
            
        }
        return _num1/_num2;
       

    }
    function mult(uint a) public view returns (uint){
        require(a>0,"Value of a is zero , we don't want the result to be zero");
        return a*b;

    }

}