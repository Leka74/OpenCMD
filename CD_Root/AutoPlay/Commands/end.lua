CMD.AddCommand("end", "End a process.", function(Arguments)
	-- Example: end itunes.exe
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if (String.Replace(Args, " ", "", false) ~= "") then
		if System.EndProcess(Args) then
			CMD.Display(Args.." process has ended.");
		else
			CMD.Display("The process "..Args.." wasn't found.");
		end
	else
		CMD.Display("Syntax missing. Usage: end <process>");
	end
end);