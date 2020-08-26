ONX.NetMessages = {}

function ONX:NetSpamCheck(netmessage)
if not ONX.NetMessages[netmessage] == true then
	ONX.NetMessages[netmessage] = true
	timer.Simple(2,function() ONX.NetMessages[netmessage] = false end)
	return true
else
	return false
end
end	