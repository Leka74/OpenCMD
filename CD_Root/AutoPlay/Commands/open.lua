CMD.AddCommand("open", "Open a program.", function(Arguments)
	-- Example1: open C:\Program Files\Mozilla\firefox.exe
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" then
		File.Open(Args, "", SW_SHOWNORMAL);
	else
		CMD.Display("The specified file could not be found.");
		Application.ExitScript();
	end
	
	if (Application.GetLastError() ~= 0) then
		CMD.Display(_tblErrorMessages[Application.GetLastError()]);
		Application.ExitScript();
	end

	local openPath = String.SplitPath(Table.Concat(Arguments, " ", 1, -1));
	CMD.Display(openPath.Filename..openPath.Extension.." is now opened.");
end);

CMD.AddAlias("open", "start");