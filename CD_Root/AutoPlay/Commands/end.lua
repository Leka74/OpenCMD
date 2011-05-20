CMD.AddCommand("end", "End a process.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	-- Example: end itunes.exe
	System.EndProcess(Args);
	CMD.Display(Args.." process has ended.");
end);