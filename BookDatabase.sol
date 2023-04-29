pragma solidity ^0.6.0;
contract Books{
    struct Book{
        string title;
        string author;
    }
    mapping(uint => Book) public books;
    function AddBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title, _author);
    }
    mapping(address => mapping(uint => Book)) public MyBooks;
    function AddMyBook(uint _id, string memory _title, string memory _author) public{
        MyBooks[msg.sender][_id] = Book(_title, _author);
    }
    
}        
