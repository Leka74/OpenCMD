CMD.AddCommand("ip", "Shows your current public IP address", function()
	local ip = CMD.HTTPSubmit("http://uvlabs.x10.mx/ip.php");
	if ip then
		CMD.Display("Your current IP address is: "..ip);
	else
		CMD.Display("No internet connection detected or host is down.");
	end
end);
