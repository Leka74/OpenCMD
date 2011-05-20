CMD.AddCommand("google", "Search in google for something.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	-- Example: google Cookies
	File.OpenURL("http://www.google.com/search?q="..Args, SW_SHOWNORMAL);
	CMD.Display("Searching in Google for: "..Args);
end);