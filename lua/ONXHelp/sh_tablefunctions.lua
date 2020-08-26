function ONX:IsTableNil(tab)
if istable(tab) then
	if !(table.Count(tab) > 0 ) then 
		return true
	else
		return false
end
else
	return true
end
end

function ONX:ListKeystoNumber(tab)
	if istable(tab) then
		local number = 1
		local newtab = {}
	for k,v in pairs(tab) do
		if istable(v) == false then
			oldval = v
			v = nil
			v = {}
			table.insert(v,oldval)
		end
	v.ONumber = number
	v.K = k
	number = number+1
	newtab[v.ONumber] = v
	end
	return newtab	
	end
end