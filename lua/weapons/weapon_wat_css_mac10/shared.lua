
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Mac-10"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_smg_mac10.mdl"
SWEP.WorldModel					= "models/weapons/w_smg_mac10.mdl"
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
//SWEP.RenderGroup 				= 
SWEP.Slot 						= 2
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 42
SWEP.Primary.DamageFalloff		= 0.3
SWEP.Primary.Sound				= Sound("Weapon_Mac10.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/1090
SWEP.Primary.Cone				= 0.0075
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.75
SWEP.RecoilPitchMul 			= 0.05
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.3
SWEP.RecoilYawMul 				= 0.01

SWEP.SpreadConeAdd 				= 0.005
SWEP.SpreadRecoveryTime 		= 1
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.01
SWEP.SpreadModVelMax 			= 0.0001
SWEP.SpreadModInAir				= 0.03
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.5, -19.5, -16), Vector(3, -17.5, -15), Vector(3.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.5,0,0), Vector(0,0,0.5), Vector(0.5,0,0) }
SWEP.WalkAng					= { Angle(-0.5,-0.5,-1), Angle(0.5,0,0), Angle(-0.5,0.5,0.5) }
SWEP.InspectPos 				= { Vector(16.149, -20, -4.721), Vector(1.736, -9.172, -12.464) }
SWEP.InspectAng 				= { Angle(70, 14.902, 48.02), Angle(24.268, 42, -13.905) }
SWEP.IronSightsPos 				= Vector(4.599, 0, 2.279)
SWEP.IronSightsAng 				= Angle(-0.017, 0, 0)
SWEP.SwayPosDiv					= 35
SWEP.SwayAngDiv					= 12

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	
	if( (CurTime() < self.SIT + 5) || (self:IsSprinting() && !self:GetReloading() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) ) ) && (CurTime() > self:GetNextSecondaryFire()) then
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(-20,0,-20), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(-20,0,-20), FrameTime()*3)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(-20,0,-20), FrameTime()*3)
	else
		self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_UpperArm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Forearm"].pos, Vector(0,0,0), FrameTime()*10)
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos = SmoothApproachVector(self.ViewModelBoneMods["ValveBiped.Bip01_L_Hand"].pos, Vector(0,0,0), FrameTime()*10)
	end
end
