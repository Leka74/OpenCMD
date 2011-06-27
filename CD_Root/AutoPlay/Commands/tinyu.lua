CMD.AddCommand("tinyu", "Shortens a link.", function(Arguments)
	-- Example: tinyu http://google.com
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if (String.Replace(Args, " ", "", false) ~= "") then
		local strShortLink = http.request("http://tinyurl.com/api-create.php?url="..Args);
		if (strShortLink ~= "") then
			CMD.Display(strShortLink);
		end
	else
		CMD.Display("Syntax missing. Usage: tinyu <link>");
	end
end);