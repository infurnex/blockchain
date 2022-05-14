//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract IDENTITY{
    uint public counter = 0;
    mapping(uint => details) public data;
    struct details{
        uint _adharnumber;
        string _adharname;
        string _DOB;
        uint _phonenumber;
        string _walletaddress;
    }

    function input(uint _adharnumber,string memory _adharname,string memory _DOB,uint _phonenumber,string memory _walletaddress)public{
        counter += 1;
        data[counter] = details(_adharnumber,_adharname,_DOB,_phonenumber,_walletaddress);
    }
}
