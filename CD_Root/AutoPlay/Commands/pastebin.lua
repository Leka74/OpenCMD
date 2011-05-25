CMD.AddCommand("pastebin", "Uploads a file into pastebin.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
		if (String.Replace(Args, " ", "", false) ~= "") then
			-- Read the code and store it in the variable pbCode
			local pbCode = TextFile.ReadToString(Args);
			if (Application.GetLastError() ~= 0) then
				return CMD.Display("Error: ".._tblErrorMessages[Application.GetLastError()]);
			end
			-- If file empty, return an error
			if pbCode == "" then
				return CMD.Display("Error: The file is empty");
			end
			-- Submit all the information to the Pastebin API
			local response = http.request("http://pastebin.com/api/api_post.php", "api_dev_key=70656fcb36093c2c81682903c5c968f1&api_paste_code="..pbCode.."&api_option=paste&api_paste_name="..String.SplitPath(Args).Filename.."");
			-- If no error occured, display the link
			if response ~= nil then
				CMD.Display(response);
			else
			-- If error occures, display the error
				CMD.Display("Pastebin failed");
			end
		else
			-- If the user doesn't type anything except the command return this
			CMD.Display("Syntax missing. Usage: pastebin <file path>");
		end
end);

-- Add an alias
CMD.AddAlias("pastebin", "pb");