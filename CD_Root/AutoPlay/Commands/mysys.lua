CMD.AddCommand("mysys", "Shows your system information.", function()
	mySys = {};
	-- Grab the Operating System
	mySys.OS = System.GetOSName();
	-- Get RAM Memory
	mySys.RAM = System.GetMemoryInfo().TotalRAM;
	-- Get Harddrive size
	
	-- Get the processor name and speed
	sProcessorName = Registry.GetValue(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", "ProcessorNameString", false);
	if sProcessorName == "" then
		sProcessorName = Registry.GetValue(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", "VendorIdentifier", false);
		if sProcessorName == "" then
			sProcessorName = Registry.GetValue(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", "Identifier", false);
		end
	end
	sProcessorSpeed = Registry.GetValue(HKEY_LOCAL_MACHINE, "HARDWARE\\DESCRIPTION\\System\\CentralProcessor\\0", "~MHz", false);
	nProcessorSpeed = String.ToNumber(sProcessorSpeed);
	if nProcessorSpeed >= 1000 then
		nProcessorSpeedGHz3 = nProcessorSpeed / 1000;
		nProcessorSpeedGHz = Math.Round(nProcessorSpeedGHz3, 2);
		sProcessorSpeedPretty = nProcessorSpeedGHz.. "GHz";
	elseif nProcessorSpeed < 1000 then
		sProcessorSpeedPretty = nProcessorSpeed.. "MHz";
	end
	sProcessorNameTrimmed = String.TrimLeft(sProcessorName, " ");
	-- Show the system information
	CMD.Display("OS: "..mySys.OS.." - RAM Memory: "..mySys.RAM.." MB - CPU: "..sProcessorNameTrimmed.." "..sProcessorSpeedPretty);
end);