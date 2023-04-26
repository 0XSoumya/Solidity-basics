pragma solidity ^0.6.0;
contract MyContract {
    string public myString="HEllo, World";
    bytes32 public myBytes32="HEllo World";
    int public MyInt=5;
    uint public MyUint=7;//stores 256 bytes int
    uint256 public myUint256 = 23;//same as  int
    uint8 public myUint8 = 1;
    address public myAddress = 0x5A0b54D5dc17e0AadC383d2db43B0a0D3E029c4c;//stores a ethereum address
    struct People{
        string Name;
        uint contact;
    }
    People public someone = People("bob",1234);

    function getValue() public pure returns(uint){
        uint value=1;
        return value;
    }
}
