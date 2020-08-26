local paneldata = {}
function ONX:CreateDividedPanels(scrpanel,width,height,dockx,docky)
if not paneldata[scrpanel] then
paneldata[scrpanel] ={}
paneldata[scrpanel].NowWidth = 0
paneldata[scrpanel].NowHeight = 0
end
local boslukx = 0
local bosluky = 0
if dockx and docky then
boslukx = dockx
 bosluky = docky
end
local olacakyeriyavx = paneldata[scrpanel].NowWidth
local olacakyeriyavy = paneldata[scrpanel].NowHeight
local sx,sy,sw,sh = scrpanel:GetBounds()
local xpanel = vgui.Create("DPanel", scrpanel)
xpanel:SetPos(((sw/width)*olacakyeriyavx)+(boslukx/2),((sh/height)*olacakyeriyavy)+(bosluky/2))
xpanel:SetSize((sw/width)-boslukx, (sh/height)-(bosluky))

if paneldata[scrpanel].NowWidth +1 > width-1 then
paneldata[scrpanel].NowWidth = 0
paneldata[scrpanel].NowHeight = paneldata[scrpanel].NowHeight+1
	else
paneldata[scrpanel].NowWidth = paneldata[scrpanel].NowWidth +1
end

return xpanel

end

function ONX:ClearDividedPanels(thepanel)
if paneldata[thepanel] then
paneldata[thepanel].NowWidth = 0
paneldata[thepanel].NowHeight = 0
end

end

function ONX:IsFontBig(w,h,text,font)
	surface.SetFont(font)
local textsizew,textsizeh =	surface.GetTextSize(text)

if textsizew>w then
	chosenonew = textsizew
else
	chosenonew = w
end
if textsizeh>h then
	chosenoneh = textsizeh
else
	chosenoneh = h
end
return chosenonew,chosenoneh
end

function ONX:Circle( x, y, radius, seg )
	local cir = {}

	table.insert( cir, { x = x, y = y, u = 0.5, v = 0.5 } )
	for i = 0, seg do
		local a = math.rad( ( i / seg ) * -360 )
		table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )
	end

	local a = math.rad( 0 ) -- This is needed for non absolute segment counts
	table.insert( cir, { x = x + math.sin( a ) * radius, y = y + math.cos( a ) * radius, u = math.sin( a ) / 2 + 0.5, v = math.cos( a ) / 2 + 0.5 } )

	surface.DrawPoly( cir )
end

