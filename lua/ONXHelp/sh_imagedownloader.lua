function ONX:DownloadImage(url)
	if (!file.Exists("ONX","DATA")) then
		file.CreateDir("ONX")
	end
	if (!file.Exists("ONX/downloadedimages","DATA")) then 
		file.CreateDir("ONX/downloadedimages")
	end
	local fhostip = game.GetIPAddress()
	local dhostip = table.concat(string.Explode(".", fhostip))
	local hostip = table.concat(string.Explode(":", dhostip))
		if (!file.Exists("ONX/downloadedimages/"..hostip,"DATA")) then 
		file.CreateDir("ONX/downloadedimages/"..hostip)
	end
	local filename = util.CRC(string.GetPathFromFilename(url)).."-"..string.GetFileFromFilename(url)
	local fullfile = "ONX/downloadedimages/"..hostip.."/"..filename
	local mat = "data/"
	if file.Exists(fullfile,"DATA") then mat =  mat..fullfile   return mat
	else
		http.Fetch(url,function(body,len,headers,code)
file.Write(fullfile,body)
mat = mat..fullfile
return mat
	end)
	 end
	end

function ONX:IsImageExists(url)
	local fhostip = game.GetIPAddress()
	local dhostip = table.concat(string.Explode(".", fhostip))
	local hostip = table.concat(string.Explode(":", dhostip))
	local filename = util.CRC(string.GetPathFromFilename(url)).."-"..string.GetFileFromFilename(url)
	local fullfile = "ONX/downloadedimages/"..hostip.."/"..filename
	local mat = "data/"
if file.Exists(fullfile,"DATA") then 
	mat =  mat..fullfile
	return true,mat
else
	return false
end
end