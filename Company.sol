pragma solidity 0.4.25;

contract Company {

    address owner;

    constructor() public {
        owner = msg.sender;
        isEmployee[msg.sender] = true;
    }

    mapping(address => bool) public isEmployee;
    mapping(address => uint) private employeeToHoursWorked;

    function addEmployee (address _employee) public {
        require(msg.sender == owner,"adding Denied");
        isEmployee[_employee] = true;
    }

    function getHoursLogged (address _employee) public view returns (uint) {
        require(msg.sender == owner || msg.sender == _employee, "Log Denied");
        return employeeToHoursWorked[_employee];
    }

    function logHour(uint _hour) public {
        require(isEmployee[msg.sender],"Log Failed, Not an Employee");
        employeeToHoursWorked[msg.sender] += _hour;
    }
    
}