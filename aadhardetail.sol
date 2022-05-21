//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0<0.9.0;
 
contract IDENTITY{
    address user;
    constructor(){
        user = msg.sender;
    }
    mapping(address => details) private data;
    struct details{
        uint _adharnumber;
        string _adharname;
        string _DOB;
        uint _phonenumber;
        string _walletaddress;
    }
 
    function input(uint _adharnumber,string memory _adharname,string memory _DOB,uint _phonenumber,string memory _walletaddress)public{
     data[user] = details(_adharnumber,_adharname,_DOB,_phonenumber,_walletaddress);
    }
    function getdetails() public view returns(uint,string memory,string memory,uint,string memory){
        require(user == msg.sender);
        return (data[user]._adharnumber,data[user]._adharname,data[user]._DOB,data[user]._phonenumber,data[user]._walletaddress);
    }
}
