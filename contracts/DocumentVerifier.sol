pragma solidity >=0.4.21 <0.7.0;

struct Document{
    address owner;
    string student_id;
    string student_name;
    string imghash;
}

mapping (address=>Document) public Documents;
datacount = 0;

function addData(string memory student_id,string memory student_name,string memory imghash) public{
    datacount++;
    Document storage doc = Documents[msg.sender];
    doc.owner = msg.sender;
    doc.student_id = student_id;
    doc.student_name = student_name;
    doc.imghash = imghash;

}

function getData(address index) public view returns(string memory student_id,string memory student_name,string memory imghash){
    student_id = Documents[index].student_id;
    student_name = Documents[index].student_name;
    imghash = Documents[index].imghash;
}