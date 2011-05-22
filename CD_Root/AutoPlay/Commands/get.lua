CMD.AddCommand("get", "Downloads a command.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then
		local commandcode = http.request(Args);
		if commandcode ~= nil then	
			local tbFile = String.SplitPath(Args);
			if tbFile.Extension == ".lua" then
				CMD.Display("Downloading the command...");
				TextFile.WriteFromString("AutoPlay\\Commands\\"..tbFile.Filename..".lua", commandcode, false);
				CMD.Display("Command downloaded. Installing...");
				dofile("AutoPlay\\Commands\\"..tbFile.Filename..".lua");
				CMD.Display("Command installed.");
			else
				CMD.Display("Wrong file format.");
			end
		else
			CMD.Display("Wrong link or no internet connection.");
		end
	else
		CMD.Display("Syntax missing. Usage: get <link>");
	end
end);

CMD.AddAlias("get", "download");