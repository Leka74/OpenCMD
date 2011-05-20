function CMD.AddCommand(Name, Description, Function)
	assert(type(Name) == "string", "Argument 1 must be of type string.");
	assert(type(Description) == "string", "Argument 2 must be of type string.");
	assert(type(Function) == "function", "Argument 3 must be of type function.");
	
	CMD.Stored[Name:lower()] = {Description = Description, Function = Function, Aliases = {}};
end

function CMD.RemoveCommand(Name)
	assert(type(Name) == "string", "Argument 1 must be of type string.");
	
	if (CMD.Stored[Name:lower()]) then
		CMD.Stored[Name:lower()] = nil;
	end
end

function CMD.AddAlias(Command, Alias)
	assert(type(Command) == "string", "Argument 1 must be of type string.");
	assert(type(Alias) == "string", "Argument 2 must be of type string.");
	assert(type(CMD.Stored[Command:lower()]) == "table", "Command not found.");
	
	table.insert(CMD.Stored[Command:lower()].Aliases, Alias);
end

-- TODO: CMD.RemoveAlias