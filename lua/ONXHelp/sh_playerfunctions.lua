function ONX:FindPlayer(name)
	local chosenply = nil
  for k,v in pairs(player.GetAll()) do
  	if string.find(v:Name():lower(),name) then
  		chosenply = v
  	end
  end
return chosenply
end	