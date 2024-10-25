//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Animal{
    uint legs;
    string colour;
    function setA(uint a, string memory b) public{
        legs=a;
        colour=b;
    }
}

contract dog is Animal{
    string name;
    string species;
    function setVal(string memory a, string memory b) public{
        name=a;
        species=b;
    }

    function getVal() public view returns(uint, string memory, string memory, string memory){
        return (legs, colour, name, species);
    }
}

contract cat is Animal{
    string name;
    string species;
    function setVal(string memory a, string memory b) public{
        name=a;
        species=b;
    }

    function getVal() public view returns(uint, string memory, string memory, string memory){
        return (legs, colour, name, species);
    }
}

contract test{
    dog d = new dog();
    cat c = new cat();

    function dInherit() public returns (uint, string memory,string memory, string memory){
        d.setA(4,"Black");
        d.setVal("Max","Dacshund");
        return d.getVal();
    }

    
    function cInherit() public returns (uint, string memory,string memory, string memory){
        c.setA(4,"Gray");
        c.setVal("Smokey","Persian");
        return c.getVal();
    }

}