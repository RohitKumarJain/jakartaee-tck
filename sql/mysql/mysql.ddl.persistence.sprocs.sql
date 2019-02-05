DROP PROCEDURE IF EXISTS GetEmpOneFirstNameFromOut !
CREATE PROCEDURE GetEmpOneFirstNameFromOut (out OUT_PARAM VARCHAR(255)) BEGIN SELECT FIRSTNAME into OUT_PARAM FROM EMPLOYEE WHERE ID=1; END !

DROP PROCEDURE IF EXISTS GetEmpFirstNameFromOut !
CREATE PROCEDURE GetEmpFirstNameFromOut (in IN_PARAM INTEGER, out OUT_PARAM VARCHAR(255)) BEGIN SELECT FIRSTNAME into OUT_PARAM FROM EMPLOYEE WHERE ID=IN_PARAM; END !


DROP PROCEDURE IF EXISTS GetEmpLastNameFromInOut !
CREATE PROCEDURE GetEmpLastNameFromInOut (inout INOUT_PARAM VARCHAR(255)) BEGIN SELECT LASTNAME into INOUT_PARAM FROM EMPLOYEE WHERE ID=INOUT_PARAM; END !

DROP PROCEDURE IF EXISTS GetEmpASCFromRS !
CREATE PROCEDURE GetEmpASCFromRS() BEGIN SELECT ID, FIRSTNAME, LASTNAME, HIREDATE, SALARY FROM EMPLOYEE ORDER BY ID ASC; END !

DROP PROCEDURE IF EXISTS GetEmpIdFNameLNameFromRS !
CREATE PROCEDURE GetEmpIdFNameLNameFromRS(in IN_PARAM INTEGER) BEGIN SELECT ID, FIRSTNAME, LASTNAME FROM EMPLOYEE WHERE ID=IN_PARAM; END !

DROP PROCEDURE IF EXISTS GetEmpIdUsingHireDateFromOut !
CREATE PROCEDURE GetEmpIdUsingHireDateFromOut (in IN_PARAM DATE, out OUT_PARAM INTEGER) BEGIN SELECT ID into OUT_PARAM FROM EMPLOYEE WHERE HIREDATE=IN_PARAM; END !

DROP PROCEDURE IF EXISTS UpdateEmpSalaryColumn !
CREATE PROCEDURE UpdateEmpSalaryColumn() BEGIN UPDATE EMPLOYEE set SALARY=0.00; END !

DROP PROCEDURE IF EXISTS DeleteAllEmp !
CREATE PROCEDURE DeleteAllEmp() BEGIN DELETE FROM EMPLOYEE; END !