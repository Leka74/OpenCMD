CMD.AddCommand("say", "Makes the command shell say something.", function(Arguments)
	CMD.Display(Table.Concat(Arguments, " ", 1, -1));
end);

CMD.AddAlias("say", "echo");