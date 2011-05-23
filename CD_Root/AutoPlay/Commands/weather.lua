CMD.AddCommand("temperature", "Gives you the temperature of a desired city", function(Arguments)
	-- Example: temperature London England
	if Table.Count(Arguments) ~= 1 and Table.Count(Arguments) ~= 0 then
		if Arguments[1] ~= "" and Arguments[1] ~= " " and Arguments[2] ~= "" and Arguments[2] ~= " " then 	
			if Table.Count(Arguments) == 3 then
				Arguments[1] = Arguments[1].."%%20"..Arguments[2];
				Arguments[2] = Arguments[3];
			elseif Table.Count(Arguments) == 4 then
				Arguments[1] = Arguments[1].."%%20"..Arguments[2];
				Arguments[2] = Arguments[3].."%%20"..Arguments[4];
			end
			
			
			local xml = http.request("http://www.google.com/ig/api?weather="..Arguments[1]..",%%20"..Arguments[2]);
			if xml ~= nil then
				XML.SetXML(xml);
				TextFile.WriteFromString(_DesktopFolder.."\\MyFile.txt", xml, false);
				local intCelsius = XML.GetAttribute("xml_api_reply/weather/current_conditions/temp_c", "data");
				if intCelsius ~= "" then
					Arguments[1] = String.Replace(Arguments[1], "%%20", " ", false);
					Arguments[2] = String.Replace(Arguments[2], "%%20", " ", false);
					CMD.Display("The temperature in "..Arguments[1].." is "..intCelsius.." celsius degrees.");
				else
					CMD.Display("Invalid City or Country.");
				end
			else
				CMD.Display("No internet connection detected.");
			end
		else
			CMD.Display("Syntax missing. Usage: temperature <city> <country>");
		end
	else
		CMD.Display("Syntax missing. Usage: temperature <city> <country>");
	end
end);

CMD.AddAlias("temperature", "temp");