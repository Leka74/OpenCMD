CMD.AddCommand("youtube", "Search in youtube for a video.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	-- Example: youtube 2012
	File.OpenURL("http://www.youtube.com/results?search_query="..Args, SW_SHOWNORMAL);
	CMD.Display("Searching in Youtube for: "..Args);
end);