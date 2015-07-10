
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "DMR"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_aug.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_aug.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 57

SWEP.Weight 					= 5
SWEP.AutoSwitchFrom 			= false
SWEP.AutoSwitchTo 				= false

SWEP.BobScale 					= 0
SWEP.SwayScale 					= 0
SWEP.BounceWeaponIcon 			= true
SWEP.DrawWeaponInfoBox 			= true
SWEP.DrawAmmo 					= true
SWEP.DrawCrosshair 				= false
SWEP.Slot 						= 2
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 20
SWEP.Primary.DefaultClip 		= 100
SWEP.Primary.Ammo 				= "357"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 76
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_AUG.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/450
SWEP.Primary.Cone				= 0.001
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.4
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.1
SWEP.SpreadRecoveryTime 		= 0.75
SWEP.SpreadConeAddCrouch 		= 0.1
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.225
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.05
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.65

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 12

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {
	["Base"] = { type = "Model", model = "models/hunter/tubes/tube1x1x6.mdl", bone = "v_weapon.aug_Parent", rel = "", pos = Vector(0.699, -3.701, 4.091), angle = Angle(177, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x6.mdl", bone = "v_weapon.aug_Parent", rel = "Base", pos = Vector(-0.181, 0, 11.364), angle = Angle(0, 0, 0), size = Vector(0.023, 0.023, 0.094), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["brace+"] = { type = "Model", model = "models/hunter/blocks/cube1x1x05.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-0.601, 0, 14.5), angle = Angle(90, 90, 0), size = Vector(0.1, 0.05, 0.054), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["upper"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "v_weapon.aug_Parent", rel = "Base", pos = Vector(-0.45, -0.7, 3.181), angle = Angle(90, 0, -80), size = Vector(0.03, 0.03, 0.03), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_forest/cliff_detail", skin = 0, bodygroup = {} },
	["upper+"] = { type = "Model", model = "models/hunter/blocks/cube1x2x1.mdl", bone = "v_weapon.aug_Parent", rel = "Base", pos = Vector(-0.48, -0.89, 7.8), angle = Angle(0, 10, 90), size = Vector(0.03, 0.07, 0.03), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_forest/cliff_detail", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x6.mdl", bone = "v_weapon.aug_Parent", rel = "", pos = Vector(-0.101, -3.701, -6.818), angle = Angle(177, 0, 0), size = Vector(0.019, 0.019, 0.019), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ammocount"] = { type = "Quad", bone = "ValveBiped.Bip01_Spine4", rel = "brace+", pos = Vector(-1.364, 1.7, -3.201), angle = Angle(90, 0, 0), size = 0.025, draw_func = nil},
	["apparatus"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.aug_Parent", rel = "upper", pos = Vector(0, -0.401, 0.3), angle = Angle(0, 90, 90), size = Vector(0.2, 0.2, 0.776), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["guard"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Barrel+", pos = Vector(0, 0.455, -0.456), angle = Angle(0, -80, 0), size = Vector(0.379, 0.379, 1.797), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["brace"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1x2b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "guard", pos = Vector(-1, -0.7, 4.091), angle = Angle(90, 90, 0), size = Vector(0.151, 0.029, 0.037) /*Vector(0.037, 0.029, 0.151)*/, color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["Base"] = { type = "Model", model = "models/hunter/tubes/tube1x1x6.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 1.2, -3.182), angle = Angle(9.204, -88.5, -100), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x6.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Base", pos = Vector(-0.181, 0, 11.364), angle = Angle(0, 0, 0), size = Vector(0.023, 0.023, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["brace+"] = { type = "Model", model = "models/hunter/blocks/cube1x1x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Base", pos = Vector(-0.25, 0, 25), angle = Angle(90, 0, 10), size = Vector(0.1, 0.05, 0.054), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["upper"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Base", pos = Vector(-0.456, -0.7, 3.299), angle = Angle(90, 0, -80), size = Vector(0.03, 0.03, 0.03), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_forest/cliff_detail", skin = 0, bodygroup = {} },
	["upper+"] = { type = "Model", model = "models/hunter/blocks/cube1x2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Base", pos = Vector(-0.48, -0.89, 8.1), angle = Angle(0, 10, 90), size = Vector(0.03, 0.07, 0.03), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_forest/cliff_detail", skin = 0, bodygroup = {} },
	["ammocount"] = { type = "Quad", bone = "ValveBiped.Bip01_R_Hand", rel = "brace+", pos = Vector(-1.364, 1.7, -3.201), angle = Angle(90, 0, 0), size = 0.12, draw_func = nil},
	["apparatus"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "upper", pos = Vector(0, -0.401, 0.3), angle = Angle(0, 90, 90), size = Vector(0.2, 0.2, 0.776), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["guard"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Barrel+", pos = Vector(0, 0.455, -0.456), angle = Angle(0, -80, 0), size = Vector(0.379, 0.379, 1.797), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["brace"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "guard", pos = Vector(-1, -0.7, 4.091), angle = Angle(90, 90, 0), size = Vector(0.037, 0.029, 0.151), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:DrawScopeReticule(x, y)
	local gap = (self:CalculateCone() + self:SpreadMovementAdditive())*ScrW()

	surface.SetDrawColor( 0, 0, 0, 255 )
	
	surface.DrawLine( x + 1000, y, x+gap, y )
	surface.DrawLine( x - 1000, y, x-gap, y )
	surface.DrawLine( x, y - 1000, x, y-gap )
	surface.DrawLine( x, y + 1000, x, y+gap )
	
	//DIAMOND THING 1
	surface.SetDrawColor( 0, 255, 255, 255 )
	local rad = gap
	local pid2 = math.pi/2
	for i = 0, 3 do
		local ang = pid2*i
		for k = 0, 1 do
			local angsep = math.pi/6
			surface.DrawLine(x+math.cos(ang+angsep*(k-1))*rad, y+math.sin(ang+angsep*(k-1))*rad, x+math.cos(ang+angsep*k)*rad, y+math.sin(ang+angsep*k)*rad)
		end
	end
	//surface.DrawCircle(x, y, gap, Color(0,255,255,255))
	
	/*Diamond thing 2
	local rad = ScrW()/10	//radius of the entire thing
	local lrad = ScrW()/30	//local radius of a corner
	local pid2 = math.pi/2
	local pid4 = math.pi/4
	for i = 0, 3 do
		local ang = pid2*i
		local lang = ang-math.pi
		for k = 0, 1 do
			local x1,y1,x2,y2
			x1 = x+ math.cos(ang)*rad 
			y1 = y+ math.sin(ang)*rad
			x2 = x1 + math.cos(lang-pid4+pid2*k)*lrad
			y2 = y1 + math.sin(lang-pid4+pid2*k)*lrad
			surface.DrawLine(x1,y1,x2,y2)
		end
	end*/
	
end
