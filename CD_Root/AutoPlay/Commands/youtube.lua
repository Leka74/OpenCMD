CMD.AddCommand("youtube", "Search in youtube for a video.", function(Arguments)
	-- Example: youtube 2012
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then
		File.OpenURL("http://www.youtube.com/results?search_query="..Args, SW_SHOWNORMAL);
		CMD.Display("Searching in Youtube for: "..Args);
	else
		CMD.Display("Syntax missing. Usage: youtube <text>");
	end
end);