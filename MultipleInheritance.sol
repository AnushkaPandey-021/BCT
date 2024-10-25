//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract employee{
    string n;
    uint mid;
    uint sal;
    function setE(string memory a, uint b, uint c) public{
        n=a;
        mid=b;
        sal=c;
    }
}

contract department{
    string dep;
    function setD(string memory a) public{
        dep=a;
    }
}

contract salary is employee, department{
    uint HRA;
    function calHRA() public returns (uint){
        if(sal>=25000){
            HRA=10000;
        }
        else if(sal>=15000){
            HRA=5000;
        }
        else{
            HRA=2000;
        }
        return HRA;
    }

    function getVal() public view returns(string memory, uint,uint,string memory,uint){
        return (n,mid,sal,dep,HRA);
    }
}

contract test{
    salary s= new salary();
    function tInherit() public returns(string memory, uint,uint,string memory,uint)
    {
        s.setE("Anushka",121,17580);
        s.setD("CS");
        s.calHRA();
        return s.getVal();
    }
}
