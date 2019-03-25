pragma solidity 0.4.25;

import "./Company.sol";

contract TestCompany is Company {
    
    function testAddEmployee () public {
        address employee = 0x0063c5cab96cc1d8aeb6f31bcd8685783cb1b02127;
        if (isEmployee[employee]) {
            isEmployee[employee] = false;
        }
        addEmployee(employee);
        assert(isEmployee[employee]);
    }
    
    function testLogHour() public {
        address employee = 0x0063c5cab96cc1d8aeb6f31bcd8685783cb1b02127;
        uint totalHours = getHoursLogged(employee);
        logHour(2);
        assert(getHoursLogged(employee) == totalHours + 2);
    }
    
    function testGetHoursLogged () public {
        address employee = 0x0063c5cab96cc1d8aeb6f31bcd8685783cb1b02127;
        uint totalHours = getHoursLogged(employee);
        logHour(2);
        assert(getHoursLogged(employee) == totalHours + 2);
    }
}