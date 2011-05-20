CMD.AddCommand("ip", "Shows your current public IP address", function()
	CMD.Display("Your current IP address is: "..HTTP.Submit("http://uvlabs.co.cc/vikisystem/getip.php", {}, SUBMITWEB_GET, 20, 80, nil, nil));
end);