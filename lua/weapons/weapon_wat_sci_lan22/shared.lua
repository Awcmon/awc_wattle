
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "LAN22"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon and BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/cstrike/c_smg_p90.mdl"
SWEP.WorldModel 				= "models/weapons/w_smg_p90.mdl"
SWEP.ViewModelFlip 				= false
SWEP.ViewModelFOV 				= 55

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

SWEP.Primary.ClipSize			= 177
SWEP.Primary.DefaultClip 		= 420
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "smg"

SWEP.Primary.Damage 			= 3
SWEP.Primary.DamageFalloff		= 0
SWEP.Primary.Sound				= Sound( "Weapon_P90.Single" )
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/1200
SWEP.Primary.Cone				= 0.005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.1
SWEP.RecoilPitchMul 			= 0.01
SWEP.RecoilPitchMulAddMax		= 2
SWEP.RecoilYawAdd				= 0.2
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.001
SWEP.SpreadRecoveryTime 		= 1
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.015
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.3

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(10, -5, -6), Vector(16, 2, -5), Vector(10, -4, -7) }
SWEP.SprintAng					= { Angle(0, 35, -8), Angle(0, 40, -15), Angle(0, 30, -10) }
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

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.WaT_LAN22 = true
SWEP.BonusDamage = 12

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.p90_Clip"] = { scale = Vector(0.5, 0.5, 0.5), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.VElements = {
	["BarrelSkirt"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Barrel", pos = Vector(0, -0.16, -1.601), angle = Angle(0, -90, 0), size = Vector(0.024, 0.024, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["Scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Top2", pos = Vector(3.196, 0, -0.051), angle = Angle(90, 0, 0), size = Vector(0.045, 0.045, 0.136), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["Top"] = { type = "Model", model = "models/hunter/blocks/cube1x150x1.mdl", bone = "v_weapon.p90_Parent", rel = "", pos = Vector(0, -5.338, -4.032), angle = Angle(0, 0, 90), size = Vector(0.037, 0.085, 0.054), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["SpinBase"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "v_weapon.p90_Parent", rel = "MagBase", pos = Vector(-0.301, 0, 3.595), angle = Angle(-90, 0, 0), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["BarrelSkirt+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Barrel", pos = Vector(0, 0.159, -1.601), angle = Angle(0, 90, 0), size = Vector(0.024, 0.024, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["ScopeLens"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Scope", pos = Vector(0, 0, 0.07), angle = Angle(180, 0, 0), size = Vector(0.064, 0.064, 0.064), color = Color(0, 175, 20, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "v_weapon.p90_Parent", rel = "", pos = Vector(0, -3.951, -9.995), angle = Angle(0, 0, 0), size = Vector(0.021, 0.021, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["MagBase"] = { type = "Model", model = "models/Items/battery.mdl", bone = "v_weapon.p90_Clip", rel = "", pos = Vector(0, -0.225, -4.391), angle = Angle(0, 90, 0), size = Vector(0.314, 0.472, 0.513), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["TurnMag"] = { type = "Model", model = "models/props_phx/wheels/trucktire.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "SpinBase", pos = Vector(0, 0, -0.318), angle = Angle(0, -180, 0), size = Vector(0.075, 0.075, 0.1), color = Color(175, 175, 175, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
	["Top2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_Spine4", rel = "Top", pos = Vector(0, -0.028, -1.946), angle = Angle(0, 90, 180), size = Vector(0.064, 0.037, 0.027), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["BarrelSkirt"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Barrel", pos = Vector(0, -0.16, -1.601), angle = Angle(0, -90, 0), size = Vector(0.024, 0.024, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["Scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Top2", pos = Vector(3.525, 0, 0.112), angle = Angle(90, 0, 0), size = Vector(0.057, 0.057, 0.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["BarrelSkirt+"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Barrel", pos = Vector(0, 0.159, -1.601), angle = Angle(0, 90, 0), size = Vector(0.024, 0.024, 0.068), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2a", skin = 0, bodygroup = {} },
	["SpinBase"] = { type = "Model", model = "models/props_junk/PopCan01a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "MagBase", pos = Vector(0.354, 0, 4.64), angle = Angle(-90, 0, 0), size = Vector(0.05, 0.05, 0.05), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["MagBase"] = { type = "Model", model = "models/Items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(6.454, 1.151, -5.623), angle = Angle(-82, 180, 0), size = Vector(0.314, 0.472, 0.513), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["TurnMag"] = { type = "Model", model = "models/props_phx/wheels/trucktire.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "SpinBase", pos = Vector(0, 0, -0.318), angle = Angle(0, -180, 0), size = Vector(0.119, 0.119, 0.119), color = Color(175, 175, 175, 255), surpresslightning = false, material = "phoenix_storms/metalfloor_2-3", skin = 0, bodygroup = {} },
	["ScopeLens"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Scope", pos = Vector(0, 0, 0.07), angle = Angle(180, 0, 0), size = Vector(0.064, 0.064, 0.064), color = Color(0, 175, 20, 255), surpresslightning = true, material = "models/shiny", skin = 0, bodygroup = {} },
	["Barrel"] = { type = "Model", model = "models/hunter/tubes/tube1x1x2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(19.57, 1.605, -6.41), angle = Angle(0, -95, 80), size = Vector(0.009, 0.009, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["ScopeLens+"] = { type = "Model", model = "models/props_c17/clock01.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Scope", pos = Vector(0, 0, 8.946), angle = Angle(0, 0, 0), size = Vector(0.064, 0.064, 0.064), color = Color(0, 175, 20, 255), surpresslightning = false, material = "models/shiny", skin = 0, bodygroup = {} },
	["Top"] = { type = "Model", model = "models/hunter/blocks/cube1x150x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(11.878, 1.361, -8.426), angle = Angle(0, 87, 10), size = Vector(0.037, 0.14, 0.054), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} },
	["Top2"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "Top", pos = Vector(0, -1.505, -2.258), angle = Angle(0, 90, 180), size = Vector(0.071, 0.035, 0.046), color = Color(255, 255, 255, 255), surpresslightning = false, material = "metal2", skin = 0, bodygroup = {} }
}

function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	
	if( (CurTime() < self.SIT + 5) --[[ || (self:IsSprinting() && !self:GetReloading() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) )]] ) && (CurTime() > self:GetNextSecondaryFire()) then
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(0,0,-10), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(0,10,0), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(0,10,0), FrameTime()*3)
	else
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(0,0,0), FrameTime()*10)
	end
end

function SWEP:Think()
	self:WatThink()
	self:WatInterruptedReloadThink()
	if (self:Clip1() > 0) and self:GetOwner():KeyDown(IN_ATTACK) and not self:GetReloading() then
		self.VElements.TurnMag.angle.yaw = self.VElements.TurnMag.angle.yaw + 30 * FrameTime()
	end
end

--[[
local function HeadshotBonus(target, hitgroup, dmg)
	--print(dmg:GetInflictor())
	if hitgroup == HITGROUP_HEAD and dmg:GetInflictor().WaT_LAN22 then
		dmg:SetDamageBonus(dmg:GetInflictor().BonusDamage)
	end
	--print(dmg:GetDamage())
end

hook.Add("ScalePlayerDamage", "WaT_LAN22_HeadshotBonus_Player", HeadshotBonus)
hook.Add("ScaleNPCDamage", "WaT_LAN22_HeadshotBonus_NPC", HeadshotBonus)
]]-- 
--Didn't quite work out like I had planned, turns out the inflictor is actually the player as opposed to the SWEP.

local function LANFireBullets(entity, bulletData)
	local wep = entity:GetActiveWeapon()
	if wep.WaT_LAN22 then
		bulletData.Callback = function(attacker, trace, dmg)
				print(trace.HitGroup)
				if trace.HitGroup == HITGROUP_HEAD then
					dmg:SetDamage(wep.BonusDamage)
				end
			end
		return true
	end
end
hook.Add("EntityFireBullets", "WaT_LAN22_FireBullets", LANFireBullets)
