CMD.AddCommand("transparency", "Change the window transparency.", function(Arguments)
	if Table.Concat(Arguments, " ", 1, -1) == "on" then
		-- Example: transparency on
		WinApi.SetWindowTrans(Application.GetWndHandle(), 200);
		INIFile.SetValue("AutoPlay\\config.ini", "Configuration", "Transparency", "200");
		CMD.Display("Transparency enabled.");
	elseif Table.Concat(Arguments, " ", 1, -1) == "off" then
		-- Example: transparency off
		WinApi.SetWindowTrans(Application.GetWndHandle(), 255);
		INIFile.SetValue("AutoPlay\\config.ini", "Configuration", "Transparency", "255");
		CMD.Display("Transparency disabled.");
	else
		CMD.Display("Transparency: Unknown state.");
	end

end);