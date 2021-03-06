pragma solidity 0.4.25;

import "./Company.sol";

contract TestCompany is Company {
    
    function testAddEmployee () public {
        address employee = 0x00ca35b7d915458ef540ade6068dfe2f44e8fa7331;
        if (isEmployee[employee]) {
            isEmployee[employee] = false;
        }
        addEmployee(employee);
        assert(isEmployee[employee]);
    }
    
    function testLogHour() public {
        address employee = 0x00ca35b7d915458ef540ade6068dfe2f44e8fa7331;
        if (isEmployee[employee]){
            uint totalHours = getHoursLogged(employee);
            logHour(employee, 2);
            assert(getHoursLogged(employee) == totalHours + 2);
        }
        else{
            addEmployee(employee);
            uint totalHourss = getHoursLogged(employee);
            logHour(employee, 2);
            assert(getHoursLogged(employee) == totalHourss + 2);
        }   
        
    }
    
    function testGetHoursLogged () public {
        address employee = 0x00ca35b7d915458ef540ade6068dfe2f44e8fa7331;
        if (isEmployee[employee]){
            uint totalHours = getHoursLogged(employee);
            logHour(employee, 2);
            assert(getHoursLogged(employee) == totalHours + 2);
        }
        else{
            addEmployee(employee);
            uint totalHourss = getHoursLogged(employee);
            logHour(employee, 2);
            assert(getHoursLogged(employee) == totalHourss + 2);
        }
    }
}
