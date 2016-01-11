
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "AR2"
SWEP.Category 					= "Wattle HL2"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_irifle.mdl"
SWEP.WorldModel					= "models/weapons/w_irifle.mdl"
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
SWEP.Primary.Ammo 				= "ar2"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "crossbow"

SWEP.Primary.Damage 			= 40
SWEP.Primary.DamageFalloff		= 0.00025
SWEP.Primary.Sound				= Sound("Weapon_AR2.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/600
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 1
SWEP.Primary.TracerName			= "AR2Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.8
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.007
SWEP.SpreadRecoveryTime 		= 0.6
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.06
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.005
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 0.8

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(3.522, -4.518, -0.754), Vector(3.522, -2.518, -0.754), Vector(3.522, -4.518, -0.754) }
SWEP.SprintAng					= { Angle(-9.03, 18.458, -1.721), Angle(-11.03, 20.458, -1.721), Angle(-9.03, 22.458, -1.721) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(16.149, -20, -4.721), Vector(-5.054, -13.341, -14.683) }
SWEP.InspectAng 				= { Angle(70, 14.902, 48.02), Angle(30.319, 44.328, -34.658) }
SWEP.IronSightsPos 				= Vector(-8.921, -2.708, 2.599)
SWEP.IronSightsAng 				= Angle(0.057, -0.029, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 11

SWEP.UseIrons					= false
SWEP.UseScope					= true
SWEP.Zoom 						= 55
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

/*
function SWEP:SecondaryAttack()
	if(!IsValid(self)) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
	
	if(self.Owner:IsPlayer()) then
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
	
	if ( self.Owner:IsNPC() ) then return end
	
	self:OnPrimaryAttack()
	
	local recTime
	local coneAdd
	
	recTime = self.SpreadRecoveryTime
	coneAdd = self.SpreadConeAdd
	
	self:SetCone( math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( math.log10(math.exp(1)) * recTime ) ), self.Primary.Cone, 1000 ) )

	//I'm so sorry
	//self:WatShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self:GetCone() + self:SpreadMovementAdditive() )
	ply = self.Owner
	if(!self.Owner:IsNPC()) then
		math.randomseed(CurTime())
	end
	local dir = Vector(0,0,0)
	local cone = self:GetCone() + self:SpreadMovementAdditive() 
	if(ply:IsPlayer()) then
		dir = (self.Owner:GetAimVector():Angle() + self.Owner:GetViewPunchAngles()):Forward() + Vector(math.Rand(-cone, cone), math.Rand(-cone, cone), math.Rand(-cone, cone))
	else
		dir = ply:GetAimVector()
	end

	if SERVER then
		local bolt = ents.Create("prop_combine_ball")
		bolt:SetPos(self:GetOwner():GetShootPos())
		bolt:SetAngles(dir:Angle())
		bolt:SetOwner(self:GetOwner())
		//bolt.m_iDamage = self.Primary.Damage
		//bolt:SetKeyValue("m_iDamage", "200")
		bolt:Spawn()

		bolt:SetVelocity(bolt:GetAngles():Forward() * 30000)
	end

	self:SetCone(self:GetCone() + coneAdd)
	
	self:TakePrimaryAmmo( 1 )

	self:Recoil()
	
	self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK ) -- View model animation
	self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- 3rd Person Animation
	self.Weapon:EmitSound( self.Primary.Sound )
	
	if(self.SetFATOnShoot) then
		//self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		//self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()\
		self:SetFAT(CurTime() + self.Primary.Delay)
		self.FAT = CurTime() + self.Primary.Delay
	end
	
	self:SetLST( CurTime() )
end
*/