
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Mach 10"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon and BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/cstrike/c_pist_glock18.mdl"
SWEP.WorldModel 				= "models/weapons/w_pist_glock18.mdl"
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
SWEP.HoldType = "revolver"

SWEP.Primary.Damage 			= 15
SWEP.Primary.DamageFalloff		= 0.02
SWEP.Primary.Sound				= Sound( "Weapon_Pistol.NPC_Single" )
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/1200
SWEP.Primary.Cone				= 0.005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.1
SWEP.RecoilPitchMul 			= 0.3
SWEP.RecoilYawAdd				= 0.5
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.0015
SWEP.SpreadRecoveryTime 		= 1
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.015
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.5

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
//EBT = EndBurstTime
SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {
	["tritium_glow+"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_Spine4", rel = "tritium+", pos = Vector(0, -0.101, 0), size = { x = 0.492, y = 0.492 }, color = Color(0, 255, 100, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["tritium++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "sight++", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip2", pos = Vector(-3.182, -0.7, 0), angle = Angle(0, 0, 90), size = Vector(0.029, 0.029, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["compensator"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stock_arm", pos = Vector(0.455, -10.455, 0), angle = Angle(-90, 0, 90), size = Vector(0.029, 0.016, 0.1), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["slideattachment"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.Glock_Slide", rel = "", pos = Vector(-1.364, 0.1, 0), angle = Angle(-11, 88, 90), size = Vector(0.33, 0.33, 0.33), color = Color(175, 175, 175, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["compensator+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0, 1.12, -0.456), angle = Angle(0, 0, 90), size = Vector(0.037, 0.05, 0.05), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["stock_addon"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "stock_base", pos = Vector(-0.7, 0, 2.109), angle = Angle(0, 90, 0), size = Vector(0.029, 0.035, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["barrelextension+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0, 0.455, -2.274), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.059), color = Color(100, 100, 100, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sightmount"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0, -1.101, 2.273), angle = Angle(45, -90, -90), size = Vector(0.059, 0.059, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sight"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0.079, -1.601, 1.365), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["tritium"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "sight", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator+", pos = Vector(0, -2.274, 2.273), angle = Angle(0, 90, -90), size = Vector(0.125, 0.094, 0.094), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["stock_arm"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "v_weapon.Glock_Parent", rel = "", pos = Vector(4, -1.364, 0.05), angle = Angle(12, 75, 4), size = Vector(0.009, 0.09, 0.025), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["tritium_glow"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_Spine4", rel = "tritium", pos = Vector(0, -0.101, 0), size = { x = 0.492, y = 0.492 }, color = Color(0, 255, 100, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["stock_base"] = { type = "Model", model = "models/props_combine/combine_barricade_med01a.mdl", bone = "v_weapon.Glock_Parent", rel = "stock_arm", pos = Vector(-2.151, 6, 0.15), angle = Angle(0, -90, -90), size = Vector(0.037, 0.014, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["tritium_glow++"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_Spine4", rel = "tritium++", pos = Vector(0, -0.101, 0), size = { x = 0.492, y = 0.492 }, color = Color(0, 255, 100, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["barrel"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip2", pos = Vector(3.181, -0.7, 0), angle = Angle(0, 0, 90), size = Vector(0.029, 0.029, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["sight++"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0.419, -1.601, 3.9), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["tritium+"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "sight+", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["sight+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(-0.25, -1.601, 3.9), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "grip", pos = Vector(5.65, 1.363, 0), angle = Angle(0, -170, 90), size = Vector(0.15, 0.027, 0.019), color = Color(150, 150, 150, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrelextension"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "compensator", pos = Vector(0, -0.456, -3.182), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.079), color = Color(125, 125, 125, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["tritium++"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight++", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["barrel+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip2", pos = Vector(-3.182, -0.7, 0), angle = Angle(0, 0, 90), size = Vector(0.029, 0.029, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["compensator"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(12.272, 2.273, -3.5), angle = Angle(-180, -95, 92), size = Vector(0.029, 0.016, 0.1), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["slideattachment"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(1.363, 1.363, -3.8), angle = Angle(-92, 0, 5), size = Vector(0.33, 0.33, 0.33), color = Color(175, 175, 175, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["compensator+"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0, 1.12, -0.456), angle = Angle(0, 0, 90), size = Vector(0.037, 0.05, 0.05), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["stock_addon"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stock_base", pos = Vector(-1.3, 0, 2.099), angle = Angle(0, 88, 0), size = Vector(0.029, 0.035, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_combine/metal_combinebridge001", skin = 0, bodygroup = {} },
	["barrelextension+"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0, 0.455, -2.274), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.059), color = Color(100, 100, 100, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sightmount"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0, -1.101, 2.273), angle = Angle(45, -90, -90), size = Vector(0.059, 0.059, 0.075), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["sight"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0.079, -1.601, 1.365), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["tritium"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["grip"] = { type = "Model", model = "models/mechanics/solid_steel/crossbeam_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator+", pos = Vector(0, -2.274, 2.273), angle = Angle(0, 90, -90), size = Vector(0.125, 0.094, 0.094), color = Color(150, 150, 150, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["stock_arm"] = { type = "Model", model = "models/hunter/blocks/cube075x2x075.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 1.2, -3), angle = Angle(85, 0, 87), size = Vector(0.009, 0.09, 0.025), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/gibs/metalgibs/metal_gibs", skin = 0, bodygroup = {} },
	["stock_base"] = { type = "Model", model = "models/props_combine/combine_barricade_med01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "stock_arm", pos = Vector(2, -5.909, 0.2), angle = Angle(0, 90, -90), size = Vector(0.037, 0.014, 0.037), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip2", pos = Vector(3.181, -0.7, 0), angle = Angle(0, 0, 90), size = Vector(0.029, 0.029, 0.029), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["sight++"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0.419, -1.601, 3.9), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["tritium+"] = { type = "Model", model = "models/hunter/misc/sphere025x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "sight+", pos = Vector(-0.091, 0.025, 0.1), angle = Angle(0, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(0, 255, 200, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["sight+"] = { type = "Model", model = "models/hunter/blocks/cube025x075x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(-0.25, -1.601, 3.9), angle = Angle(0, 0, 90), size = Vector(0.014, 0.014, 0.014), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["grip2"] = { type = "Model", model = "models/mechanics/solid_steel/sheetmetal_box_4.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "grip", pos = Vector(6, 1.799, 0), angle = Angle(0, -180, 90), size = Vector(0.15, 0.027, 0.019), color = Color(150, 150, 150, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrelextension"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "compensator", pos = Vector(0, -0.456, -3.182), angle = Angle(0, 0, 0), size = Vector(0.029, 0.029, 0.079), color = Color(125, 125, 125, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	
	if( (CurTime() < self.SIT + 5) || (self:IsSprinting() && !self:GetReloading() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) ) ) && (CurTime() > self:GetNextSecondaryFire()) then
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(0,0,-10), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(0,10,0), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(0,10,0), FrameTime()*3)
	else
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(0,0,0), FrameTime()*10)
	end
end

