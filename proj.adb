-- Ada HW project
-- Christopher Porch
-- version 2015.10.2

with Ada.Text_IO, Ada.Integer_Text_IO;
use Ada.Text_IO, Ada.Integer_Text_IO;

procedure Proj is
	type CharArr is array ( integer range <> ) of Character;
	Assignments	: 	CharArr(1..16);
	NumEmp		: 	Integer	:= 0;
	Temp		:	Character;
begin
	put_line("Enter Assignments: ");
	for I in 1..16 loop
		loop
			get(Temp);
			exit when Temp /= ' ';
		end loop;
		Assignments(I) := Temp;
	end loop;
	get(NumEmp);
	put(Assignments(1));
end Proj;
