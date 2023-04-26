pragma solidity ^0.6.0
contract learnMapping{
    mapping(uint=>string) public names;
    constructor() public{
        names[1]="hello";
        names[2]="world";
        names[3]="ethereum";
    }
}
