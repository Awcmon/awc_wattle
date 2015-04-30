
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "USP"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_pist_usp.mdl"
SWEP.WorldModel					= "models/weapons/w_pist_usp.mdl"
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

SWEP.Primary.ClipSize			= 12
SWEP.Primary.DefaultClip 		= 72
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "pistol"

SWEP.Primary.Damage 			= 30
SWEP.Primary.DamageFalloff		= 0.0005
SWEP.Primary.Sound				= Sound("Weapon_USP.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/450
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd = 1.2
SWEP.RecoilPitchMul = 0.2
SWEP.RecoilYawAdd = 0.5
SWEP.RecoilYawMul = 0.05

SWEP.SpreadConeAdd 				= 0.005
SWEP.SpreadRecoveryTime 		= 0.8
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.005
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.6

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.5, -19.5, -16), Vector(3, -17.5, -15), Vector(3.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(12.486, -7.711, -0.457), Vector(1.736, -3.172, -12.464) }
SWEP.InspectAng 				= { Angle(15.713, 31.607, -0.935), Angle(24.268, 12.053, -13.905) }
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

SWEP.ViewModelBoneMods = {
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
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
		self.Primary.Sound = "Weapon_USP.SilencedShot"
//		self.ViewModelBoneMods["v_weapon.USP_Silencer"].scale = Vector(1, 1, 1)
		self:SetSilenced(true)
//		self.WorldModel = "models/weapons/w_pist_usp_silencer.mdl" 
//		self.Weapon:SetModel( "models/weapons/w_pist_usp_silencer.mdl" )
	else
		self:SendWeaponAnim(ACT_VM_DETACH_SILENCER)
		self.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }
		self.Primary.Sound = "Weapon_USP.Single"
//		self.ViewModelBoneMods["v_weapon.USP_Silencer"].scale = Vector(0.009, 0.009, 0.009)
		self:SetSilenced(false)
//		self.WorldModel = "models/weapons/w_pist_usp.mdl"
//		self.Weapon:SetModel( "models/weapons/w_pist_usp.mdl" )
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

	if( !self:GetSilenced() && (CurTime() > self:GetNextSecondaryFire()) ) then
		self.ViewModelBoneMods["v_weapon.USP_Silencer"].scale = Vector(0.009, 0.009, 0.009)
	else
		self.ViewModelBoneMods["v_weapon.USP_Silencer"].scale = Vector(1, 1, 1)
	end
end

//Original Sprint
//Vector(3, -18.5, -15)

