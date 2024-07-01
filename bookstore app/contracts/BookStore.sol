// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract BookStore {
    address payable public owner;
    uint256 public balance;

    struct Book {
        string title;
        string author;
        uint256 price;
        uint256 stock;
    }

    mapping(uint256 => Book) public books;
    uint256 public nextBookId;

    event BookAdded(uint256 bookId, string title, string author, uint256 price, uint256 stock);
    event BookPurchased(uint256 bookId, string title, uint256 price, uint256 stock);
    event Deposit(uint256 amount);
    event Withdraw(uint256 amount);

    constructor() {
        owner = payable(msg.sender);
        balance = 0;
        nextBookId = 1;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");
        _;
    }

    function deposit(uint256 _amount) public payable onlyOwner {
        uint _previousBalance = balance;

        // perform transaction
        balance += _amount;

        // assert transaction completed successfully
        assert(balance == _previousBalance + _amount);

        // emit the event
        emit Deposit(_amount);
    }

    function withdraw(uint256 _withdrawAmount) public onlyOwner {
        require(balance >= _withdrawAmount, "Insufficient balance");

        uint _previousBalance = balance;

        // withdraw the given amount
        balance -= _withdrawAmount;
        owner.transfer(_withdrawAmount);

        // assert the balance is correct
        assert(balance == (_previousBalance - _withdrawAmount));

        // emit the event
        emit Withdraw(_withdrawAmount);
    }

    function addBook(string memory _title, string memory _author, uint256 _price, uint256 _stock) public onlyOwner {
        books[nextBookId] = Book(_title, _author, _price, _stock);
        emit BookAdded(nextBookId, _title, _author, _price, _stock);
        nextBookId++;
    }

    function purchaseBook(uint256 _bookId) public payable {
        Book storage book = books[_bookId];
        require(book.stock > 0, "Book out of stock");
        require(msg.value >= book.price, "Insufficient funds to purchase the book");

        uint _previousBalance = balance;

        // perform transaction
        book.stock -= 1;
        balance += msg.value;

        // assert transaction completed successfully
        assert(balance == _previousBalance + msg.value);

        // emit the event
        emit BookPurchased(_bookId, book.title, book.price, book.stock);
    }

    function getBook(uint256 _bookId) public view returns (string memory title, string memory author, uint256 price, uint256 stock) {
        Book storage book = books[_bookId];
        return (book.title, book.author, book.price, book.stock);
    }

    function getBalance() public view returns (uint256) {
        return balance;
    }
}
