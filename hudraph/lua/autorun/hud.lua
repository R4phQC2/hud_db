hook.Add( "HUDPaint", "HUD", function()
	
	local health = LocalPlayer():Health()
	local armor = LocalPlayer():Armor()
	local money =  LocalPlayer():getDarkRPVar("money")
	local namerp =  LocalPlayer():getDarkRPVar("rpname")
	local jobrp = LocalPlayer():getDarkRPVar("job")
	
	
		draw.RoundedBox(60, 20, 530, 80, 80,Color(255, 0, 0))
		draw.DrawText(health.."%", "CloseCaption_Bold", 30, 553, Color(47, 48, 51))
	
		draw.RoundedBox(60, 20, 650, 80, 80,Color(0, 0, 255))
		draw.DrawText(armor.."%", "CloseCaption_Bold", 30, 673, Color(47, 48, 51))
	
		
		draw.DrawText("Nom:", "CloseCaption_Bold", 20, 30, Color(47, 48, 51))
		draw.DrawText(namerp.. "", "CloseCaption_Bold", 80, 30, Color(47, 48, 51))
		
		draw.DrawText("Argent:", "CloseCaption_Bold", 20, 60, Color(47, 48, 51))
		draw.DrawText(money.. "$", "CloseCaption_Bold", 100, 60, Color(255, 255, 255)) 
		
		draw.DrawText("Emplois:", "CloseCaption_Bold", 20, 90, Color(47, 48, 51))
		draw.DrawText(jobrp.. "", "CloseCaption_Bold", 110, 90, Color(255, 255, 255))
		
end)

local whide = {
    ["DarkRP_LocalPlayerHUD"] = true,
    ["DarkRP_Hungermod"] = true,
    ["CHudHealth"] = true,
    ["CHudBattery"] = true,
}
 
hook.Add("HUDShouldDraw", "HideHUD", function(name)
    if (whide[name]) then return false end
end)

surface.CreateFont( "TheDefaultSettings", {
	font = "CloseCaption_Bold", -- Use the font-name which is shown to you by your operating system Font Viewer, not the file name
	extended = false,
	size = 13,
	weight = 500,
	blursize = 0,
	scanlines = 0,
	antialias = true,
	underline = false,
	italic = false,
	strikeout = false,
	symbol = false,
	rotary = false,
	shadow = false,
	additive = false,
	outline = false,
} )