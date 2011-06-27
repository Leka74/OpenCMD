CMD.AddCommand("imdb", "Search in IMDB for something.", function(Arguments)
	-- Example: imdb Matrix
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then 	
		File.OpenURL("http://www.imdb.com/find?s=all&q="..Args, SW_SHOWNORMAL);
		CMD.Display("Searching in IMDB for: "..Args);
	else
		CMD.Display("Syntax missing. Usage: imdb <text>");
	end
end);

CMD.AddAlias("imdb", "m");