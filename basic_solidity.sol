pragma solidity  ^0.8.0;

struct student
{
    uint rollno;
    string name;
}
constract studinfo
{
    student public stud;
    constructor (uint _rollno,string memory _name)
    {
        stud.rollno=_rollno;
        stud.name=_name;
    }

    function change(uint _rollno,string memory _name)public{
        student memory new_student =student({rollno:_rollno,name:_name});
        stud=new_student;
    }
    string[] public arr;
    function getarray()public view return(string[] memory)
    {
        return arr;
    }
    function pusharray(string memory newValue)public
    {
        arr.push(newValue);
    }

    event Log(string func,uint gas);
    fallback()external {
        emit Log("Fallback",gasleft());
    }
}