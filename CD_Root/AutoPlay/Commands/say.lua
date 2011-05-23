CMD.AddCommand("say", "Makes the command shell say something.", function(Arguments)
	local Args = Table.Concat(Arguments, " ", 1, -1);
	if Args ~= "" and Args ~= " " then
		CMD.Display(Table.Concat(Arguments, " ", 1, -1));
	else
		CMD.Display("Syntax missing. Usage: say <text>");
	end
end);

CMD.AddAlias("say", "echo");