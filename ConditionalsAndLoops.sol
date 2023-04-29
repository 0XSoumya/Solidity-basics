pragma solidity ^0.6.0;
contract mycontract{
    uint[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    function IsOddOrEven(uint _number) public view returns(bool){
        if(_number % 2 == 0){
            return true;
        }
        else{
            return false;
        }
    }
    function CountEvenNumbers() public view returns(uint){
        uint count=0;
        for(uint i=0;i<numbers.length;i++){
            if(IsOddOrEven(numbers[i])){
                count++;
            }
        }
        return count;
    }
}
