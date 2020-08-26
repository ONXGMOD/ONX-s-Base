ONX = ONX or {}

function ONX:InitializeFiles(directory,systemname)
	local files, directories = file.Find( directory.."/*", "LUA" )
for k , v in pairs ( files ) do
		if ( CLIENT ) then
		include( directory.."/" .. v  )
	end
	if ( SERVER ) then
		if ( string.sub( v, 1, 3 ) == "cl_" ) then
			AddCSLuaFile( directory.."/" .. v )
		elseif ( string.sub( v, 1, 3 ) == "sv_" ) then
			include( directory.."/" .. v )
		elseif ( string.sub( v, 1, 3 ) == "sh_" ) then
			AddCSLuaFile( directory.."/" .. v )
			include( directory.."/" .. v )
		end
	end

end
			MsgC(Color(0,255,0),systemname.." Başarı ile yüklendi. ("..#files.." files.)\n") 
end
ONX:InitializeFiles("ONXHelp","ONX Helper Functions")
