CMD.AddCommand("help", "Shows list of commands.", function()
	local Construct = "";
	
	for K, V in pairs(CMD.Stored) do
		Construct = Construct.."\r\n"..K.." - "..V.Description;
	end
	
	CMD.Display(Construct:sub(1, -1));
end);