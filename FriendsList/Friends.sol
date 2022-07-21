// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Friends {
    uint public friendCount = 0;

    struct Friend{
        string name;
        uint age;
        string city;
        uint birthday;
    }

    Friend [] friends;

    mapping(address => uint) friendToContacts;

    function addFriend(string memory _name, uint _age, string memory _city, uint _birthday) public {
        friendCount ++;
        address owner = msg.sender;
        friends.push(Friend(_name, _age, _city, _birthday));
        uint id = friends.length - 1;
        friendToContacts[owner] = id; 
    }

    function getFriendName() view public returns(string memory _name) {
        address owner = msg.sender;
        uint id = friendToContacts[owner];
        return friends[id].name;
    }

        function getFriendAge() view public returns(uint _age) {
        address owner = msg.sender;
        uint id = friendToContacts[owner];
        return friends[id].age;
    }

        function getFriendCity() view public returns(string memory _city) {
        address owner = msg.sender;
        uint id = friendToContacts[owner];
        return friends[id].city;
    }

        function getFriendBirthday() view public returns(uint _birthday) {
        address owner = msg.sender;
        uint id = friendToContacts[owner];
        return friends[id].birthday;
    }


}