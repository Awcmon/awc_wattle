
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "K98k"
SWEP.Category 					= "Wattle DoD:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/v_k98.mdl"
SWEP.WorldModel					= "models/weapons/w_k98.mdl"
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

SWEP.Primary.ClipSize			= 5
SWEP.Primary.DefaultClip 		= 60
SWEP.Primary.Ammo 				= "357"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 140
SWEP.Primary.DamageFalloff		= 0.0001
SWEP.Primary.Sound				= Sound("Weapon_Kar.Shoot")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/50
SWEP.Primary.Cone				= 0.00001
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 3
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 3
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 0.2
SWEP.SpreadConeAddCrouch 		= 0.1
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.02
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.75

SWEP.VMPosOffset 				= Vector(0,-3,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(6.579, -15.004, -12.903), Vector(6.579, -15.004, -12.903), Vector(6.579, -15.004, -12.903) }
SWEP.SprintAng					= { Angle(0, 0, 0), Angle(0, 0, 0), Angle(0, 0, 0) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(10.229, -12.091, -1.801), Vector(0.36, -8.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 26.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.675, -3.5, 3.85)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 20

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= true
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_Clavicle"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(77.11, 0, 0) }
}
SWEP.VElements = {}
SWEP.WElements = {}


function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	if( (self:IsSprinting() && !self:GetReloading() && (CurTime() + (ply:Ping()/1000) > self:GetFAT()) ) ) && (CurTime() > self:GetNextSecondaryFire()) then
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Clavicle"].angle = SmoothApproachAngle(self.ViewModelBoneMods["ValveBiped.Bip01_L_Clavicle"].angle, Angle(77.11, 0, 0), FrameTime()*2)
	else
		self.ViewModelBoneMods["ValveBiped.Bip01_L_Clavicle"].angle = SmoothApproachAngle(self.ViewModelBoneMods["ValveBiped.Bip01_L_Clavicle"].angle, Angle(0, 0, 0), FrameTime()*10)
	end
end
