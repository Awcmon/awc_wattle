
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "M1 Garand"
SWEP.Category 					= "Wattle"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModelFOV = 57
SWEP.ViewModelFlip = false
SWEP.UseHands = true
SWEP.ViewModel = "models/weapons/c_crossbow.mdl"
SWEP.WorldModel = "models/weapons/w_annabelle.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = false


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

SWEP.Primary.ClipSize			= 8
SWEP.Primary.DefaultClip 		= 80
SWEP.Primary.Ammo 				= "357"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 105
SWEP.Primary.DamageFalloff		= 0.0001
SWEP.Primary.Sound				= Sound("Weapon_p228.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/400
SWEP.Primary.Cone				= 0.00001
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 4
SWEP.RecoilPitchMul 			= 1
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 2
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 1.25
SWEP.SpreadConeAddCrouch 		= 0.01
SWEP.SpreadRecoveryTimeCrouch 	= 1

SWEP.SpreadModVel 				= 0.08
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.04
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1

SWEP.VMPosOffset 				= Vector(0,0,1)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-1.111, -1.118, -12.12) - Vector(-3.3, 2, 3.5), Vector(-1.111, 0.118, -3.12) - Vector(-3.3, 2, 3.5), Vector(-1.111, -1.118, -12.12) - Vector(-3.3, 2, 3.5) }
SWEP.SprintAng					= { Angle(10.435, 38.009, -20.748), Angle(13.435, 42.009, -26.748), Angle(10.435, 52.009, -20.748) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(10.229, -12.091, -1.801) + Vector(-3.3, 2, 3.5), Vector(0.36, -8.553, -11.716) + Vector(-3.3, 2, 3.5) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 26.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos = Vector(-7.961, -7, 4.138)
SWEP.IronSightsAng = Angle(0.068, 0, 0)

SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 20

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Base"] = { scale = Vector(0.224, 0.224, 0.224), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Crossbow_base"] = { scale = Vector(0.768, 0.768, 0.768), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bolt"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowr1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(7.083, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowr2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(13.687, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowl1"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(-5.139, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.bowl2"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(-15.973, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["RearSightL"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSight_BASE", pos = Vector(0, -1.045, 0), angle = Angle(90, 0, 90), size = Vector(0.014, 0.014, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight_BASE"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Rear", pos = Vector(0, 0, 0.246), angle = Angle(90, 0, 0), size = Vector(0.032, 0.032, 0.032), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSightL+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSight_BASE", pos = Vector(0, 0.586, 0), angle = Angle(90, 0, 90), size = Vector(0.014, 0.014, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Upper"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(0, 0, -0.773), angle = Angle(0, 90, -90), size = Vector(0.025, 0.014, 0.416), color = Color(105, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BASE"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Crossbow_base", rel = "", pos = Vector(0, 0, 9.312), angle = Angle(-90, 0, 90), size = Vector(0.15, 0.048, 0.037), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BULLET"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0, -0.7, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["BASE_ext+"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(15.086, 0, 0.611), angle = Angle(-70, 0, 0), size = Vector(0.039, 0.05, 0.085), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["Clip"] = { type = "Model", model = "models/props_phx/construct/metal_tube.mdl", bone = "ValveBiped.bolt", rel = "", pos = Vector(0, 1.085, -2.77), angle = Angle(0, 0, 0), size = Vector(0.032, 0.045, 0.025), color = Color(75, 75, 75, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["Stock"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE_ext+", pos = Vector(0.617, 0, 7.177), angle = Angle(0, 90, -52.688), size = Vector(0.048, 0.109, 0.09), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["FrontSight_Side+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "FrontSight_Center", pos = Vector(0, 0.485, 0.8), angle = Angle(90, 0, 180), size = Vector(0.009, 0.032, 0.059), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BULLET+++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0, 0.405, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["RearSightGhostRing"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSight_BASE", pos = Vector(1.026, -0.01, -0.343), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Internal+"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(3.092, 0, -1.088), angle = Angle(0, 90, 0), size = Vector(0.043, 0.059, 0.043), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["FrontSight_Side"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025d.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "FrontSight_Center", pos = Vector(0, 0.485, -0.801), angle = Angle(-90, 0, 180), size = Vector(0.009, 0.032, 0.059), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stock+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE_ext+", pos = Vector(0, 0, 2.061), angle = Angle(70, 0, 0), size = Vector(0.096, 0.048, 0.037), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BULLET++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0, 0.052, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["Internal"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1x2b.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(1.411, 0, -1.188), angle = Angle(0, 0, 0), size = Vector(0.064, 0.045, 0.046), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BULLET+"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0, -0.368, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["RearSight_Knob+"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small_base.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSightL+", pos = Vector(0, 0.486, 0.4), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(75, 75, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BULLET++++++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0.402, -0.204, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["FrontSight_Center"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Barrel", pos = Vector(0, -0.69, 26.599), angle = Angle(90, 0, 0), size = Vector(0.009, 0.029, 0.019), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BULLET++++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0.402, 0.677, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["RearSightGhostRing_MOUNT"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSightGhostRing", pos = Vector(-0.294, 0, 0.414), angle = Angle(-90, 0, 0), size = Vector(0.035, 0.035, 0.035), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Upper", pos = Vector(0, 0.519, -0.684), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.145), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Rear"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(9.31, 0, -1.17), angle = Angle(0, -180, 180), size = Vector(0.07, 0.046, 0.009), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Upper", pos = Vector(0, -0.246, -0.45), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.15), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight_Knob"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small_base.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "RearSightL", pos = Vector(0, 0.486, 0.1), angle = Angle(180, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(75, 75, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BULLET+++++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0.402, 0.201, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["BULLET+++++++"] = { type = "Model", model = "models/items/ar2_grenade.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Clip", pos = Vector(0.402, -0.575, 2), angle = Angle(90, 0, 0), size = Vector(0.5, 0.209, 0.209), color = Color(175, 150, 0, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["BASE_ext"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "BASE", pos = Vector(10, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.039, 0.05, 0.15), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["RearSightL"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSight_BASE", pos = Vector(0, -1.045, 0), angle = Angle(90, 0, 90), size = Vector(0.014, 0.014, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight_BASE"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Rear", pos = Vector(0, 0, 0.246), angle = Angle(90, 0, 0), size = Vector(0.032, 0.032, 0.032), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSightL+"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSight_BASE", pos = Vector(0, 0.586, 0), angle = Angle(90, 0, 90), size = Vector(0.014, 0.014, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Upper"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(0, 0, -0.773), angle = Angle(0, 90, -90), size = Vector(0.025, 0.014, 0.416), color = Color(105, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["BASE"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16.794, 1.761, -4.364), angle = Angle(6, 180, 0), size = Vector(0.15, 0.048, 0.037), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["Barrel+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Upper", pos = Vector(0, 0.519, -0.684), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.145), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Trigger"] = { type = "Model", model = "models/hunter/tubes/tube4x4x05d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE_ext+", pos = Vector(-1.757, 0, -4.005), angle = Angle(-73.637, 180, -90), size = Vector(0.009, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BASE_ext+"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(15.086, 0, 0.611), angle = Angle(-70, 0, 0), size = Vector(0.039, 0.05, 0.085), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["FrontSight_Side"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "FrontSight_Center", pos = Vector(0, 0.485, -0.801), angle = Angle(-90, 0, 180), size = Vector(0.009, 0.032, 0.059), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["BASE_ext"] = { type = "Model", model = "models/hunter/blocks/cube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(10, 0, 0), angle = Angle(90, 0, 0), size = Vector(0.039, 0.05, 0.15), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["FrontSight_Side+"] = { type = "Model", model = "models/hunter/tubes/tube2x2x025d.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "FrontSight_Center", pos = Vector(0, 0.485, 0.8), angle = Angle(90, 0, 180), size = Vector(0.009, 0.032, 0.059), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSightGhostRing"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSight_BASE", pos = Vector(1.026, -0.01, -0.343), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Internal+"] = { type = "Model", model = "models/props_phx/construct/metal_plate1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(3.092, 0, -1.088), angle = Angle(0, 90, 0), size = Vector(0.043, 0.059, 0.043), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stock+"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE_ext+", pos = Vector(0, 0, 2.061), angle = Angle(70, 0, 0), size = Vector(0.096, 0.048, 0.037), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["FrontSight_Center"] = { type = "Model", model = "models/hunter/plates/plate1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Barrel", pos = Vector(0, -0.69, 26.599), angle = Angle(90, 0, 0), size = Vector(0.009, 0.029, 0.039), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight_Knob+"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small_base.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSightL+", pos = Vector(0, 0.486, 0.4), angle = Angle(0, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(75, 75, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Stock"] = { type = "Model", model = "models/hunter/triangles/2x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE_ext+", pos = Vector(0.617, 0, 7.177), angle = Angle(0, 90, -52.688), size = Vector(0.048, 0.109, 0.09), color = Color(90, 125, 255, 255), surpresslightning = false, material = "metal3", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Upper", pos = Vector(0, -0.246, -0.45), angle = Angle(0, 0, 0), size = Vector(0.019, 0.019, 0.15), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSight_Knob"] = { type = "Model", model = "models/props_phx/wheels/magnetic_small_base.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSightL", pos = Vector(0, 0.486, 0.1), angle = Angle(180, 0, 0), size = Vector(0.093, 0.093, 0.093), color = Color(75, 75, 75, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Rear"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(9.31, 0, -1.17), angle = Angle(0, -180, 180), size = Vector(0.07, 0.046, 0.009), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["RearSightGhostRing_MOUNT"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "RearSightGhostRing", pos = Vector(-0.294, 0, 0.414), angle = Angle(-90, 0, 0), size = Vector(0.035, 0.035, 0.035), color = Color(150, 150, 150, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Internal"] = { type = "Model", model = "models/props_phx/construct/metal_wire1x1x2b.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "BASE", pos = Vector(1.411, 0, -1.188), angle = Angle(0, 0, 0), size = Vector(0.064, 0.045, 0.046), color = Color(100, 100, 100, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

function SWEP:OnPrimaryAttack()
	if( self:Clip1() <= 1 ) then 
		self:EjectClip()
	end
end

local clipModel = "models/hunter/plates/plate.mdl"
function SWEP:EjectClip()

		if (SERVER) then
		--local clip = ents.Create("ent_garand_clip_effect")
		local clip = ents.Create("prop_physics")
			clip:SetModel(clipModel)
			clip:SetColor(Color(0,0,0))
		--self.Owner:EmitSound("weapons/crowbar/crowbar_impact2.wav", 300, 115)
		self:GetOwner():EmitSound("physics/metal/metal_solid_impact_bullet2.wav", 100, 110)


		local angleofeject = self.Owner:EyeAngles():Up()


		clip:SetAngles(angleofeject:Angle())


			local pos = self.Owner:GetShootPos()
				pos = pos + self.Owner:GetForward() * 20
				pos = pos + self.Owner:GetRight() * 15
				pos = pos + self.Owner:GetUp() * -1
				
				if(self:IsAiming()) then
					pos = pos + self.Owner:GetRight() * self.VMPosOffset.x + self.Owner:GetForward() * self.VMPosOffset.y + self.Owner:GetUp() * self.VMPosOffset.z
				end
			clip:SetPos(pos)


		clip:SetOwner(self.Owner)
		clip:SetPhysicsAttacker(self.Owner)
		clip:Spawn()
		clip:Activate()
		clip:SetCollisionGroup(COLLISION_GROUP_WEAPON)
		self.Owner:SetAnimation(PLAYER_ATTACK1)

		local phys = clip:GetPhysicsObject()

		phys:SetVelocity(self.Owner:EyeAngles():Up() * 70 + self.Owner:GetVelocity())
		phys:AddAngleVelocity(Vector(0, 500, 0))
		SafeRemoveEntityDelayed(clip, 20)
	end
end

function SWEP:Reload()
	if(self:Clip1() > 0) then return end
	self:WatReload(ACT_VM_RELOAD)
	self.ReloadSoundQueued = true
	timer.Simple(1, function() if IsValid(self) and self.ReloadSoundQueued then self:EmitSound("weapons/scout/scout_clipin.wav"); self.ReloadSoundQueued = false end end)
end

function SWEP:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )

	if(!self.CVFireAnimIroned) then return self.cvfaiviewmodel end

	if ((self.CVFAIOldLST != self:GetLST()) && self:IsAiming()) then
		self.ViewModelBoneMods["ValveBiped.bolt"].pos.z = -2.8
		self.cvfaiviewmodel.origin.y = math.Approach(self.cvfaiviewmodel.origin.y, -5, 5)
		self.CVFAIOldLST = self:GetLST()
	end
	
	self.ViewModelBoneMods["ValveBiped.bolt"].pos.z = math.Approach(self.ViewModelBoneMods["ValveBiped.bolt"].pos.z, 0, FrameTime()*15)
	self.cvfaiviewmodel.origin.y = SmoothApproach(self.cvfaiviewmodel.origin.y, 0, FrameTime()*10)
	
	return self.cvfaiviewmodel
end

