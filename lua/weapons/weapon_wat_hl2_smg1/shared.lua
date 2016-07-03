
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "SMG1"
SWEP.Category 					= "Wattle HL2"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_smg1.mdl"
SWEP.WorldModel					= "models/weapons/w_smg1.mdl"
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
SWEP.HoldType 					= "smg"

SWEP.Primary.Damage 			= 25
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_SMG1.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/800
SWEP.Primary.Cone				= 0.003
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.5
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.3
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.03
SWEP.SpreadModVelMax 			= 0.0001
SWEP.SpreadModInAir				= 0.03
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 0.95

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(3.522, -0.518, -0.754), Vector(3.522, 2.518, -0.754), Vector(3.522, -0.518, -0.754) }
SWEP.SprintAng					= { Angle(-9.03, 18.458, -1.721), Angle(-11.03, 20.458, -1.721), Angle(-9.03, 22.458, -1.721) }
SWEP.WalkPos 					= { Vector(-0.5,0,0), Vector(0,0,0.5), Vector(0.5,0,0) }
SWEP.WalkAng					= { Angle(-0.5,-0.5,-1), Angle(0.5,0,0), Angle(-0.5,0.5,0.5) }
SWEP.InspectPos 				= { Vector(4.193, -0.713, -3.876), Vector(-11.336, 0.141, 3.638) }
SWEP.InspectAng 				= { Angle(11.142, 32.567, 0), Angle(0, -0.013, -39.793) }
SWEP.IronSightsPos 				= Vector(-4.724, -7.507, 0.796)
SWEP.IronSightsAng 				= Angle(-0.343, 0.043, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 15

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
--[[SWEP.VElements = {
	["silencer"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "Frame", rel = "", pos = Vector(32.473, 0.004, 4.677), angle = Angle(90.065, 0, 0), size = Vector(0.059, 0.059, 0.259), color = Color(62, 62, 64, 255), surpresslightning = false, material = ""/*"phoenix_storms/gear"*/, skin = 0, bodygroup = {} }
}]]--
SWEP.WElements = {}
/*
function SWEP:SecondaryAttack()

	if( self.Owner:KeyDown(IN_SPEED) ) then return end

	if(CurTime() < self:GetNextSecondaryFire()) then return end
	
	self:SetNextSecondaryFire( CurTime() + 3 )
	self:SetNextPrimaryFire( CurTime() + 3 )
	self:SetFAT(CurTime() + 3)
	self.FAT = CurTime() + 3
	
	if (SERVER) then
		
		local grenade = ents.Create("ent_wat_smggren")
			grenade:SetPos(self.Owner:GetShootPos() + self.Owner:GetAimVector() * 50 + self.Owner:GetRight()*10)
			grenade:SetAngles(self.Owner:EyeAngles())
			grenade:SetOwner(self.Owner)
			
			grenade.Damage = 150
			grenade.Radius = 200
		grenade:Spawn()
		
		local phys = grenade:GetPhysicsObject()
		
		phys:ApplyForceCenter(self.Owner:GetAimVector()*50000)
		
	end
	
	if ( self.Owner:IsNPC() ) then return end
end
*/