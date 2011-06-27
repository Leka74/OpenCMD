CMD.AddCommand("time", "Shows the time.", function()
	CMD.Display("Current time: "..System.GetTime(TIME_FMT_MIL));
end);

CMD.AddCommand("date", "Shows the date.", function()
	CMD.Display("Current date: "..System.GetDate(DATE_FMT_EUROPE));
end);