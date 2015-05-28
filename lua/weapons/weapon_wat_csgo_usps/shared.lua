
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "USP-S"
SWEP.Category 					= "Wattle CS:GO"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_csgo_usp.mdl"
SWEP.WorldModel					= "models/weapons/w_pist_usp_silencer.mdl"
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

SWEP.Primary.ClipSize			= 12
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 30
SWEP.Primary.DamageFalloff		= 0.0005
SWEP.Primary.Sound				= Sound("Weapon_CUSP.Silenced")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/450
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_smoke" }

SWEP.RecoilPitchAdd 			= 1
SWEP.RecoilPitchMul 			= 0.5
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.005
SWEP.SpreadRecoveryTime 		= 0.8
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.005
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 0.9

SWEP.VMPosOffset 				= Vector(0.5,0,-1)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.828, -10.838, -10.518)+Vector(-0.5, -1, 0), Vector(2.828, -10.838, -10.518)+Vector(0, 2, 0), Vector(2.828, -10.838, -10.518)+Vector(0.5, -1, 0) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(10.534, -6.751, 0.247), Vector(-11.7, -0.073, 0.519) }
SWEP.InspectAng 				= { Angle(20.006, 40.09, 19.408), Angle(18.61, -1.061, -62.477) }
SWEP.IronSightsPos 				= Vector(-2.32, 0, 1.12)
SWEP.IronSightsAng 				= Angle(-1.29, 0, 0)
SWEP.SwayPosDiv					= 50
SWEP.SwayAngDiv					= 11

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["slide"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["frame"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_UpperArm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Forearm"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Bip01_L_Hand"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["v_weapon.USP_Silencer"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:ShootEffects()

	self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- 3rd Person Animation
	
	self.Weapon:EmitSound( self.Primary.Sound )
		
	if(!IsFirstTimePredicted()) then return end
	self:WatMuzzleEffects()
	
end

function SWEP:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )

	if (self.CVFAIOldLST != self:GetLST()) then
		self.ViewModelBoneMods["slide"].pos.x = -2
		self.cvfaiviewmodel.origin.y = math.Approach(self.cvfaiviewmodel.origin.y, -1.5, 1.5)
		self.cvfaiviewmodel.origin.z = math.Approach(self.cvfaiviewmodel.origin.z, -3, 0.5)
		self.cvfaiviewmodel.angles.pitch = math.Approach(self.cvfaiviewmodel.angles.pitch, 20, 5)
		self.CVFAIOldLST = self:GetLST()
	end
	
	self.ViewModelBoneMods["slide"].pos.x = math.Approach(self.ViewModelBoneMods["slide"].pos.x, 0, FrameTime()*15)
	self.cvfaiviewmodel.origin.y = SmoothApproach(self.cvfaiviewmodel.origin.y, 0, FrameTime()*10)
	self.cvfaiviewmodel.origin.z = SmoothApproach(self.cvfaiviewmodel.origin.z, 0, FrameTime()*10)
	self.cvfaiviewmodel.angles.pitch = SmoothApproach(self.cvfaiviewmodel.angles.pitch, 0, FrameTime()*10)
	
	return self.cvfaiviewmodel
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
end


