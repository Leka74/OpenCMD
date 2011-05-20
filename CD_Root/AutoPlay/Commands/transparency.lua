CMD.AddCommand("transparency", "Change the window transparency.", function(Arguments)
--[[	if String.TrimLeft(strCommand, "transparency ") == "on" then
		-- Example: transparency on
		WinApi.SetWindowTrans(Application.GetWndHandle(), 200);
		CMD.Display("Transparency enabled.");
	elseif String.TrimLeft(strCommand, "transparency ") == "off" then
		-- Example: transparency off
		WinApi.SetWindowTrans(Application.GetWndHandle(), 255);
		CMD.Display("Transparency disabled.");
	elseif String.Left(strCommand, 13) == "transparency " and String.Left(strCommand, 17)  == "transparency set " then
		-- Example: transparency set 155
		if String.ToNumber(String.TrimLeft(strCommand, "transparency set ")) < 30 then
			local askTrans = Dialog.Message("Warning", "Are you sure you want to set the transparency to "..String.TrimLeft(strCommand, "transparency set ").."? This will make the application totally invinsible.", MB_YESNO, MB_ICONEXCLAMATION, MB_DEFBUTTON2);
			if askTrans == IDYES then
				WinApi.SetWindowTrans(Application.GetWndHandle(), String.ToNumber(String.TrimLeft(strCommand, "transparency set ")));
				CMD.Display("Transparency set to: "..String.TrimLeft(strCommand, "transparency set "));
			end
		else
			WinApi.SetWindowTrans(Application.GetWndHandle(), String.ToNumber(String.TrimLeft(strCommand, "transparency set ")));
			CMD.Display("Transparency set to: "..String.TrimLeft(strCommand, "transparency set "));
		end
	else
		CMD.Display("Transparency: Unknown state.");
	end
]]
end);