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
	-- temporary character, used to skip whitespace
	Temp		:	Character;

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
		
	put(Assignments(1));
end Proj;
