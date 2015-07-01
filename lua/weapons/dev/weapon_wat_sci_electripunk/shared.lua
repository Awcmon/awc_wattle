
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Electripunk"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/c_smg1.mdl"
SWEP.WorldModel 				= "models/weapons/w_smg1.mdl"
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

SWEP.Primary.ClipSize			= 100
SWEP.Primary.DefaultClip 		= 220
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "revolver"

SWEP.Primary.Damage 			= 25
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= Sound( "npc/sniper/echo1.wav" )
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/600
SWEP.Primary.Cone				= 0.005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "effect_wat_tracer_rip"
SWEP.Primary.MuzzleEffects		= { }

SWEP.RecoilPitchAdd 			= 0.1
SWEP.RecoilPitchMul 			= 0.25
SWEP.RecoilYawAdd				= 0.5
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.001
SWEP.SpreadRecoveryTime 		= 1
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.015
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.5, -19.5, -16), Vector(3, -17.5, -15), Vector(3.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 12

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {"Heat"}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {
	["dial"] = { type = "Model", model = "models/props_c17/TrapPropeller_Lever.mdl", bone = "ValveBiped.base", rel = "dialstart", pos = Vector(0, 0.305, 0), angle = Angle(0, 0, 0), size = Vector(0.092, 0.072, 0.092), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["dialstart"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -1.933, -7.206), angle = Angle(0, 0, -180), size = Vector(0.021, 0.021, 0.021), color = Color(255, 0, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["sodacan"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -2.401, -3.931), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 1.003), color = Color(50, 50, 41, 255), surpresslightning = false, material = "", skin = 2, bodygroup = {} },
	["glow"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.base", rel = "battery", pos = Vector(1.049, 0.305, 5.136), size = { x = 4.444, y = 4.444 }, color = Color(0, 255, 255, 0), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = true},
	["chamber"] = { type = "Model", model = "models/Items/combine_rifle_ammo01.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, -2.313, 4.4), angle = Angle(0, 0, -180), size = Vector(0.402, 0.402, 0.402), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ammocount"] = { type = "Quad", bone = "ValveBiped.clip", rel = "", pos = Vector(0, -7.513, -5.625), angle = Angle(0, -180, -180), size = 0.05, draw_func = nil},
	["glow+"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.base", rel = "battery", pos = Vector(-2.231, 0.305, 5.136), size = { x = 4.444, y = 4.444 }, color = Color(0, 255, 255, 0), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.base", rel = "", pos = Vector(0, 0, 3.967), angle = Angle(0, 0, 0), size = Vector(0.5, 0.5, 0.5), color = Color(30, 30, 30, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["glow++"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.base", rel = "chamber", pos = Vector(0, 0.105, 3.918), size = { x = 4.306, y = 4.306 }, color = Color(255, 119, 0, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}
SWEP.WElements = {
	["sodacan"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(3.924, 1.536, -7.35), angle = Angle(-100, 0, 0), size = Vector(0.5, 0.5, 1.003), color = Color(50, 50, 50, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["glow"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "battery", pos = Vector(1.049, 0.305, 5.136), size = { x = 4.444, y = 4.444 }, color = Color(0, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["battery"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(8.93, 1.593, -6.161), angle = Angle(0, -90, -98.062), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["ammocount"] = { type = "Quad", bone = "ValveBiped.Bip01_R_Hand", rel = "chamber", pos = Vector(-9.62, 1.463, 3.144), angle = Angle(-180, 90, -90), size = 0.05, draw_func = nil},
	["glow+"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "battery", pos = Vector(-2.231, 0.305, 4.566), size = { x = 4.444, y = 4.444 }, color = Color(0, 255, 255, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["chamber"] = { type = "Model", model = "models/Items/combine_rifle_ammo01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10, 0, -10), angle = Angle(0, 0, 0), size = Vector(0.305, 0.305, 0.542), color = Color(255, 255, 255, 0), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["glow++"] = { type = "Sprite", sprite = "Sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "chamber", pos = Vector(0, 0.105, 3.918), size = { x = 4.306, y = 4.306 }, color = Color(255, 119, 0, 0), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false}
}

function SWEP:WatCalcViewThink()
	self.VElements["chamber"].angle.y = self.VElements["chamber"].angle.y + FrameTime()*10
end
