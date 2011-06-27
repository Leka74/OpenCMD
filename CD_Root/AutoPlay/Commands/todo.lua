CMD.AddCommand("todo", "Todo plugin.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if (Args ~= "") and (Args ~= " ") then 
		if (Arguments[1] ~= "") and (Arguments[2] ~= "") then
			-- Get the last ID number
			intLastID = 0;
			tbEvents = INIFile.GetValueNames("AutoPlay\\todo.ini", "Events");
			if (tbEvents ~= nil) then 
				for i, e in pairs(tbEvents) do
					intLastID = String.ToNumber(tbEvents[i]);
				end
			end
			
			intLastID = intLastID+1;
			
			-- TODO ADD COMMANDS - Used to add another todo
			if (Arguments[1] == "add") then
				local strMessage = "";
				for i=2, Table.Count(Arguments) do
					strMessage = strMessage.." "..Arguments[i];
				end
				INIFile.SetValue("AutoPlay\\todo.ini", "Events", intLastID, strMessage);
				CMD.Display("TODO: Added");
			elseif (Arguments[1] == "remove") then
				INIFile.DeleteValue("AutoPlay\\todo.ini", "Events", Arguments[2]);
				CMD.Display("TODO: ID number "..Arguments[2].." has been removed");
			elseif (Arguments[1] == "help") then
				CMD.Display("TODO commands:\r\ntodo add <text> - Adds a new TODO.\r\ntodo remove <id> - Removes a TODO.");
			end
		end
	else
		tbEvents = INIFile.GetValueNames("AutoPlay\\todo.ini", "Events");
		if (tbEvents ~= nil) then
			for i, e in pairs(tbEvents) do
				CMD.Display(tbEvents[i]..". "..INIFile.GetValue("AutoPlay\\todo.ini", "Events", tbEvents[i]));
			end
			CMD.Display("Type todo help for more commands.");
		else
			CMD.Display("There are no TODOs.\r\nType todo help for more commands.");
		end
	end
end);