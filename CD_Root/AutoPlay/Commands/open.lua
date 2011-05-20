CMD.AddCommand("open", "Open a program.", function(Arguments)
--[[
	-- Example1: open C:\Program Files\Mozilla\firefox.exe
	-- Example2: open http://google.com
	File.Open(String.TrimLeft(strCommand, "open "), "", SW_SHOWNORMAL);
	
	if (Application.GetLastError() ~= 0) then
		CMD.Display(_tblErrorMessages[Application.GetLastError()]);
		Application.ExitScript();
	end

	local openPath = String.SplitPath(String.TrimLeft(strCommand, "open "));
	if String.Find(String.TrimLeft(strCommand, "open "), "http", 1, false) ~= -1 then
		CMD.Display(String.TrimLeft(strCommand, "open ").." is now opened.");
	else
		CMD.Display(openPath.Filename..openPath.Extension.." is now opened.");
	end
]]
end);