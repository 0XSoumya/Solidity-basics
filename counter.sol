pragma solidity ^0.6.0;
contract counter{
    uint count;
    function getcount() public view returns (uint){
        return count;
    }
    function increment() public {
        count=count+1;
    }
    constructor() public{
        count=0;
    }
}
