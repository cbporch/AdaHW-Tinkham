-- Ada HW project
-- Christopher Porch
-- version 2015.10.12
--
-- A simple model of an employee schedule. For a
-- given schedule and list of employees, verify that the
-- schedule is viable based on given criteria
--------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Proj is
	type CharArr is array ( integer range <> ) of Character;
	-- Array of employee assignments
	Assignments	: 	CharArr(1..16);
	-- number of employees
	NumEmp		: 	Integer	:= 0;
	type EmpArr is array (integer range <>, integer range <>) of Character;
	-- temporary character, used to skip whitespace
	Temp		:	Character;

	-- a function to populate the employee array	
	function setEmployees (A: Integer) return EmpArr is
		E : EmpArr(1..4, 1..A);
	begin --setEmployees	
		for I in 1..A loop
			for J in 1..4 loop
				loop
					get(Temp);
					exit when Temp /= ' ';
				end loop;
				E(J,I) := Temp;
			end loop;
		end loop;
		return E;
	end setEmployees;
	
	-- A procedure to check the employee assignment schedule
	-- for any duplicates
	function checkAssignments(Arr: CharArr) return Boolean is
		C1, C2	:	Character;
		N	:	Integer;
	begin -- checkAssignments
		for I in 1..15 loop
			C1 := arr(I);
			N := I + 1;
			for J in N..16 loop
				C2 := arr(J);
				if C1 = C2 then
					return False;
				end if;
			end loop;
		end loop;
		return True;
	end checkAssignments;

	function checkEmployees(As : CharArr; Em : EmpArr) return Boolean is
	begin -- checkEmployees
		return False;
	end checkEmployees;

begin -- Proj

	put_line("Enter Assignments: ");
	-- Retrieve employee assignments, correct input
	-- is assumed
	for I in 1..16 loop
		loop
			get(Temp);
			exit when Temp /= ' ';
		end loop;
		Assignments(I) := Temp;
	end loop;

	-- get Number of available employees
	get(NumEmp);
	declare
		Employees : EmpArr(1..4, 1..NumEmp);
	begin
		Employees := setEmployees(NumEmp);
	end;
	for I in 1..16 loop
		put(Assignments(I));
		new_line;
	end loop;
	if checkAssignments(Assignments) then
		put("Acceptable");
	else
		put("Unacceptable");	
	end if;
end Proj;
