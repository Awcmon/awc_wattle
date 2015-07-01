
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Marksman Carbine"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel 				= "models/weapons/w_rif_m4a1.mdl"
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

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "smg1"
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
SWEP.Primary.Sound				= Sound("Weapon_M4A1.Single")
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
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.1
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.225
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.05
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.8

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
	["rail+"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.m4_Parent", rel = "base", pos = Vector(-9.9, -0.25, -1.28), angle = Angle(0, 0, 0), size = Vector(0.029, 0.009, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["aimpoint_laser"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint_center", pos = Vector(-0.456, 0.55, -0.7), angle = Angle(180, 0, 0), size = Vector(0.119, 0.039, 0.039), color = Color(175, 175, 175, 0), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["aimpoint_laser+"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint_center", pos = Vector(0.344, 0.5, 0.639), angle = Angle(180, 0, 0), size = Vector(0.184, 0.039, 0.039), color = Color(175, 175, 175, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["rail++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.m4_Parent", rel = "base", pos = Vector(-9.9, -1.701, 0.05), angle = Angle(1, 0, 90), size = Vector(0.05, 0.009, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["lens_cover_hinge"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint", pos = Vector(-0.201, 0.6, 1.7), angle = Angle(-70, 90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.m4_Parent", rel = "base", pos = Vector(-9.9, 1.1, 0), angle = Angle(1, 0, -90), size = Vector(0.05, 0.009, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["lens_cover"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "lens_cover_hinge", pos = Vector(0, 0.5, 0.2), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["aimpoint_mount"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.m4_Parent", rel = "base", pos = Vector(-2.685, 2.328, 0.34), angle = Angle(0, -90, -89), size = Vector(0.151, 0.151, 0.264), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["base"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "v_weapon.m4_Parent", rel = "", pos = Vector(0.5, -5, -1.364), angle = Angle(90, 84.5, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["lens_cover_hinge+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint", pos = Vector(-0.201, 0.6, -1.5), angle = Angle(-110, 90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["lens"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint", pos = Vector(0, 0, 1.373), angle = Angle(0, 0, 0), size = Vector(0.07, 0.07, 0.07), color = Color(125, 50, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["aimpoint_center"] = { type = "Model", model = "models/XQM/cylinderx1medium.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint", pos = Vector(0, 0, 0.15), angle = Angle(90, 0, 0), size = Vector(0.109, 0.054, 0.054), color = Color(75, 75, 75, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["aimpoint"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "v_weapon.m4_Parent", rel = "aimpoint_mount", pos = Vector(0.8, 0, 1.363), angle = Angle(0, 90, 0), size = Vector(0.012, 0.012, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["aimpoint_adjuster"] = { type = "Model", model = "models/XQM/cylinderx1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "aimpoint_center", pos = Vector(-0.456, 0.55, 0), angle = Angle(0, 90, 0), size = Vector(0.054, 0.054, 0.054), color = Color(100, 100, 100, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["lens_cover+"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "lens_cover_hinge+", pos = Vector(0, 0.5, 0.2), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} }
}
SWEP.WElements = {
	["rail+"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-9.9, -0.25, -1.28), angle = Angle(0, 0, 0), size = Vector(0.009, 0.029, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["aimpoint"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "aimpoint_mount", pos = Vector(0.8, 0, 1.363), angle = Angle(0, 90, 0), size = Vector(0.012, 0.012, 0.07), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["aimpoint_mount"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(0.455, 2.5, 0.34), angle = Angle(0, -90, -89), size = Vector(0.151, 0.151, 0.264), color = Color(50, 50, 50, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-9.9, 1.1, 0), angle = Angle(1, 0, -90), size = Vector(0.009, 0.05, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["lens_cover"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "lens_cover_hinge", pos = Vector(0, 0.5, 0.2), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["rail+++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-9.9, -0.25, 1.5), angle = Angle(0, 0, 180), size = Vector(0.009, 0.029, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["lens+"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "aimpoint", pos = Vector(0, 0, -1.364), angle = Angle(180, 0, 0), size = Vector(0.07, 0.07, 0.07), color = Color(125, 50, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["lens_cover_hinge+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "aimpoint", pos = Vector(-0.201, 0.6, -1.5), angle = Angle(-110, 90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["lens"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "aimpoint", pos = Vector(0, 0, 1.5), angle = Angle(0, 0, 0), size = Vector(0.07, 0.07, 0.07), color = Color(125, 50, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["base"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(7, 0.899, -5), angle = Angle(9, 180, 95.113), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["lens_cover_hinge"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "aimpoint", pos = Vector(-0.201, 0.6, 1.7), angle = Angle(-70, 90, 90), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["rail++"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "base", pos = Vector(-9.9, -2, 0.05), angle = Angle(1, 0, 90), size = Vector(0.009, 0.05, 0.019), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} },
	["lens_cover+"] = { type = "Model", model = "models/hunter/tubes/circle2x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "lens_cover_hinge+", pos = Vector(0, 0.5, 0.2), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(100, 100, 100, 255), surpresslightning = false, material = "phoenix_storms/construct/concrete_barrier00", skin = 0, bodygroup = {} }
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
