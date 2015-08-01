
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "AKS-74"
SWEP.Category 					= "Wattle GB"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/weapons/v_rif_ak74.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_ak47.mdl"
SWEP.ViewModelFlip 				= true
SWEP.ViewModelFOV 				= 71

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
SWEP.SlotPos 					= 10
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= false
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 55
SWEP.Primary.Sound				= Sound("Weapon_AK47.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/650
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd = 1.2
SWEP.RecoilPitchMul = 0.2
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd = 0.5
SWEP.RecoilYawMul = 0.05

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.0002
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.1
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.65

SWEP.VMPosOffset 				= Vector(-1,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.951, -0.127, -0.361), Vector(-0.851, -0.327, 0.361), Vector(-0.751, -0.527, -0.361) }
SWEP.SprintAng					= { Angle(-19.212, -34.609, 29.861), Angle(-17.212, -29.609, 29.861), Angle(-19.212, -26.609, 29.861) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(-9.341, -0.769, 4.01), Vector(6.215, 3.038, 1.2) }
SWEP.InspectAng 				= { Angle(0, -60.627, -20.592), Angle(0, 0, 25.93) }
SWEP.IronSightsPos 				= Vector(2.069, -3.335, 1.182)
SWEP.IronSightsAng 				= Angle(0.01, 0, 0)
SWEP.SwayPosDiv					= 80
SWEP.SwayAngDiv					= 20

//SWEP.SprintPos	 				= { Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033) }
//SWEP.SprintAng					= { Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381) }
//SWEP.SprintPos	 				= { Vector(10, -3, -5), Vector(10, -3, -5), Vector(10, -3, -5) }
//SWEP.SprintAng					= { Angle(41, 62, 42), Angle(41, 62, 42), Angle(41, 62, 42) }

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {"Semi"}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:SecondaryAttack()
	if(CurTime() < self:GetNextSecondaryFire()) then return end

	self:SetNextPrimaryFire(CurTime() + 0.35)
	self:SetNextSecondaryFire(CurTime() + 0.35)

	if(IsFirstTimePredicted()) then
		self.Owner:EmitSound("weapons/smg1/switch_single.wav")
	end
	
	if(self:GetSemi()) then
		self.Primary.Automatic = true
		self:SetSemi(false)
		self.VMPosOffset = Vector(0,0,0)
	else
		self.Primary.Automatic = false
		self:SetSemi(true)
		self.VMPosOffset = Vector(-1,0,0)
	end
end

SWEP.OldSemi = false
function SWEP:WatCalcViewThink( ply, origin, angles, fov )
	if(self.OldSemi != self:GetSemi()) then
		if(self:GetSemi()) then
			self.VMPosOffset = Vector(0,0,0)
		else
			self.VMPosOffset = Vector(-1,0,0)
		end
		self.OldSemi = self:GetSemi()
	end
end
