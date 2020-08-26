local PANEL = {}

Derma_Hook( PANEL, "Paint", "Paint", "Panel" )
Derma_Hook( PANEL, "PerformLayout", "Layout", "Panel" )

function PANEL:Init()
local x,y,w,h = self:GetBounds()

self.dlabels = vgui.Create("DLabel",self)
self.dlabels:SetText("SELAM")
self.dlabels:SizeToContents()
self.dlabels:CenterVertical()
self.dlabels:CenterHorizontal()
end	

function PANEL:SetText(text)
self.dlabels:SetText(text)
self.dlabels:SizeToContents()
self.dlabels:CenterVertical()
self.dlabels:CenterHorizontal()
end

function PANEL:SetFont(fontid)
self.dlabels:SetFont(fontid)
self.dlabels:SizeToContents()
self.dlabels:CenterVertical()
self.dlabels:CenterHorizontal()
end

function PANEL:SetTextColor(color)
	self.dlabels:SetTextColor(color)
end


function PANEL:PerformLayout()
self.dlabels:SizeToContents()
self.dlabels:CenterVertical()
self.dlabels:CenterHorizontal()
end
derma.DefineControl( "OLabelwb", "", PANEL, "Panel" )