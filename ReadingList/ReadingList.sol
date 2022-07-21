// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract ReadingList {
    uint public bookCount = 0;

    struct Book{
        uint id;
        string title;
        bool completed;
    }

    mapping(uint => Book) public books;

    event BookAdded(
        uint id,
        string title,
        bool completed
    );

    event BookCompleted(
        uint id,
        bool completed
    );

    constructor()  {
        addBook("Add book to reading list");
    }

    function addBook(string memory _title) public {
        bookCount ++;
        books[bookCount] = Book(bookCount, _title, false);
        emit BookAdded(bookCount, _title, false);
    }

    function bookCompleted(uint _id) public {
        Book memory _book = books[_id];
        _book.completed = !_book.completed;
        books[_id] = _book;
        emit BookCompleted(_id, _book.completed);
    }
}