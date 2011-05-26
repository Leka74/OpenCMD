CMD.AddCommand("ip", "Shows your current public IP address", function()
	local ip = CMD.HTTPSubmit("http://feeder.dualblue.co.uk/app.php");
	if ip then
		CMD.Display("Your current IP address is: "..ip);
	else
		CMD.Display("No internet connection detected.");
	end
end);

-- Thanks to Rexzooly for hosting the IP file.