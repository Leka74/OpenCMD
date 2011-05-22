CMD.AddCommand("temperature", "Gives you the temperature in a desired city", function(Arguments)
	-- Example: temperature London England
	if Table.Count(Arguments) ~= 1 then
		if Arguments[1] ~= "" and Arguments[1] ~= " " and Arguments[2] ~= "" and Arguments[2] ~= " " then 	
			local xml = http.request("http://www.google.com/ig/api?weather="..Arguments[1]..",%%20"..Arguments[2]);
			if xml ~= nil then
				XML.SetXML(xml);
				TextFile.WriteFromString(_DesktopFolder.."\\MyFile.txt", xml, false);
				local intCelsius = XML.GetAttribute("xml_api_reply/weather/current_conditions/temp_c", "data");
				CMD.Display("The temperature in "..Arguments[1].." is "..intCelsius.." celsius degrees.");
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