function CMD.Display(text)
	local Name = System.GetUserInfo();
	
	if (Input.GetText("iDisplay") == "") then
		Input.SetText("iDisplay", "["..Name.RegOwner.."] "..text);
	else
		Input.SetText("iDisplay", Input.GetText("iDisplay").."\r\n["..Name.RegOwner.."] "..text);
	end
	
	Input.ScrollToLine("iDisplay", -1);
end

function System.EndProcess(strProcess)
	local found = false;
	strProcess = String.Lower(strProcess);
	tblProcesses = System.EnumerateProcesses();
	for i, strPath in pairs(tblProcesses) do
		local strFile = String.SplitPath(strPath);
		if (String.Lower(strFile.Filename..strFile.Extension)) == strProcess then
	        	local found = true;
			System.TerminateProcess(i);
		else
			local found = false;
		end
	end
	
	if found then
		return true
	else
		return false
	end
end

function String.Explode(Seperator, InputString)
	if (Seperator == "") then
		return {InputString};
	end
	
	local DelimitedTable = {};
	local Position = 0;
	
	while (true) do
		CurrentPosition = string.find(InputString, Seperator, Position, true);
		
		if (CurrentPosition ~= nil) then
			table.insert(DelimitedTable, string.sub(InputString, Position, CurrentPosition - 1));
			Position = CurrentPosition + 1;
		else
			table.insert(DelimitedTable, string.sub(InputString, Position));
			break;
		end
	end
	
	return DelimitedTable;
end

function CMD.HTTPSubmit(link)
	local linkreturn = http.request(link);
	return linkreturn
end
