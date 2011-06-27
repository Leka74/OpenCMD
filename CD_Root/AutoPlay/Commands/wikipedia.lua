CMD.AddCommand("wikipedia", "Search in wikipedia for something.", function(Arguments)
	-- Example: wikipedia Google
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then 
		File.OpenURL("http://en.wikipedia.org/wiki/Special:Search/"..Args, SW_SHOWNORMAL);
		CMD.Display("Searching in Wikipedia for: "..Args);
	else
		CMD.Display("Syntax missing. Usage: wikipedia <text>");
	end
end);

CMD.AddAlias("wikipedia", "wiki");
CMD.AddAlias("wikipedia", "w");
