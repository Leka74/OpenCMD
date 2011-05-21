CMD.AddCommand("ip", "Shows your current public IP address", function()
	CMD.Display("Your current IP address is: "..CMD.HTTPSubmit("http://uvlabs.co.cc/vikisystem/getip.php"));
end);
