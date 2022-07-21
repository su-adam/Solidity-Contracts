// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract BudgetCal {
    uint food = 100;
    uint entertainment = 80;
    uint clothes = 100;

// Withdraw transcations 
    function withdrawFood(uint _food) view public returns(uint wFood) {
        wFood = food - _food;
        return wFood;
    } 

        function withdrawEntertainment(uint _entertainment) view public returns(uint wEntertainment) {
        wEntertainment = entertainment - _entertainment;
        return wEntertainment;
    } 

        function withdrawClothes(uint _clothes) view public returns(uint wClothes) {
        wClothes = clothes - _clothes;
        return wClothes;
    } 

// Add transcation 

        function addFood(uint _afood) view public returns(uint aFood) {
        aFood = food + _afood;
        return aFood;
    } 

        function addEntertainment(uint _aentertainment) view public returns(uint aEntertainment) {
        aEntertainment = entertainment + _aentertainment;
        return aEntertainment;
    } 

        function addClothes(uint _aclothes) view public returns(uint aClothes) {
        aClothes = clothes + _aclothes;
        return aClothes;
    } 
}