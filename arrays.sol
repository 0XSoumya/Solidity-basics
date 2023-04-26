pragma solidity ^0.6.0;
contract learnArrays{
    uint[] public firstArray=[2,4,6,8,10];
    string[] public stringArray=['hello','world','apple'];
    uint[][] public array2D = [ [1,2,3], [4,5,6] ];
    string[] public values;
    function addVAlue(string memory val) public{
        values.push(val);
    }
    function tellSize() public view returns(uint){
        return values.length;
    }
}
