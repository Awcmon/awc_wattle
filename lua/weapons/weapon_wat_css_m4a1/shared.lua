
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "M4A1"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_m4a1.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_m4a1.mdl"
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
SWEP.Slot 						= 1
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage 			= 35
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_M4A1.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/750
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1
SWEP.RecoilPitchMul 			= 0.14
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.065
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.075
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.9

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(0.75-1,0,-0.5), Vector(1-1,0,0.5), Vector(1.25-1,0,-0.5) }
SWEP.WalkAng					= { Angle(0,0,0), Angle(0,0,0), Angle(0,0,0) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-5.921, -2.708, 2.599)
SWEP.IronSightsAng 				= Angle(0.057, -0.029, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 11

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= { "Silenced" }
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}


function SWEP:Deploy()
	self:WatDeploy()
	if(self:GetSilenced()) then
		self.Weapon:SendWeaponAnim( ACT_VM_DRAW_SILENCED )
	else
		self.Weapon:SendWeaponAnim( ACT_VM_DRAW )
	end
	return true
end

function SWEP:Reload()
	if(self:GetSilenced()) then
		self:WatReload(ACT_VM_RELOAD_SILENCED)
	else
		self:WatReload(ACT_VM_RELOAD)
	end
end

function SWEP:SecondaryAttack()
	
//	if ( !self:CanSecondaryAttack() ) then return end
	if(CurTime() < self:GetNextSecondaryFire()) then return end
	
	self:SetNextSecondaryFire( CurTime() + 3 )
	self:SetNextPrimaryFire( CurTime() + 3 )
	self:SetFAT(CurTime() + 3)
	self.FAT = CurTime() + 3
	
	if(!self:GetSilenced()) then
		self:SendWeaponAnim(ACT_VM_ATTACH_SILENCER)
		self.Primary.MuzzleEffects		= { "effect_wat_muzzle_smoke" }
		self.Primary.Sound = "Weapon_M4A1.Silenced"
		self:SetSilenced(true)
	else
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		self.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }
		self.Primary.Sound = "Weapon_M4A1.Single"
		self:SetSilenced(false)
	end
end

function SWEP:ShootEffects()

	if(self:GetSilenced()) then
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK_SILENCED )
	else
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK )
	end
	self.Owner:SetAnimation( PLAYER_ATTACK1 )
	
	self.Weapon:EmitSound( self.Primary.Sound )
		
	if(!IsFirstTimePredicted()) then return end
	self:WatMuzzleEffects()
end
