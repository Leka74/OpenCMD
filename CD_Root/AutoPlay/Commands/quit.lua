CMD.AddCommand("quit", "Closes the command shell.", function()
	Application.Exit(0);
end);

CMD.AddAlias("quit", "exit");