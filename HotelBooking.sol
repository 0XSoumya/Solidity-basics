//hotel booking smartcontract
pragma solidity^0.6.0
contract HotelRoom{
    enum stasuses{Vacant, Occupied};
    stasuses CurrentStasus;

    address payable public owner;

    constructor() public{
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }
    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Currently occupied.");
        _;
    }
    modifier costs(uint _amount) {
    require(msg.value >= _amount, "Not enough Ether provided.");
    _;
    }

    function Book() external payable onlyWhileVacant costs (2 ether){
        currentStatus=stasuses.Occupied;
        owner.transfer(msg.value);   
    }
}
