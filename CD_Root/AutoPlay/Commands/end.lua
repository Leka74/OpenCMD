CMD.AddCommand("end", "End a process.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	-- Example: end itunes.exe
	if System.EndProcess(Args) then
		CMD.Display(Args.." process has ended.");
	else
		CMD.Display("The process "..Args.." wasn't found.");
	end
end);