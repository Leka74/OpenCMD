CMD.AddCommand("ip", "Shows your current public IP address", function()
	local ip = CMD.HTTPSubmit("http://uvlabs.co.cc/vikisystem/getip.php");
	if ip then
		CMD.Display("Your current IP address is: "..ip);
	else
		CMD.Display("No internet connection detected.");
	end
end);
