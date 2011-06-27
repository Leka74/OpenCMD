CMD.AddCommand("google", "Search in google for something.", function(Arguments)
	-- Example: google Cookies
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then 	
		File.OpenURL("http://www.google.com/search?q="..Args, SW_SHOWNORMAL);
		CMD.Display("Searching in Google for: "..Args);
	else
		CMD.Display("Syntax missing. Usage: google <text>");
	end
end);

CMD.AddAlias("google", "g");