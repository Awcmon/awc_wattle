
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Shotgun"
SWEP.Category 					= "Wattle HL2"
SWEP.Base 						= "weapon_wattlebase_bullet_shotgun"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_shotgun.mdl"
SWEP.WorldModel					= "models/weapons/w_shotgun.mdl"
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

SWEP.Primary.ClipSize			= 6
SWEP.Primary.DefaultClip 		= 36
SWEP.Primary.Ammo 				= "buckshot"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "crossbow"

SWEP.Primary.Damage 			= 20
SWEP.Primary.DamageFalloff		= 0.1
SWEP.Primary.Sound				= Sound("Weapon_Shotgun.Single")
SWEP.Primary.NumShots			= 6
SWEP.Primary.Delay				= 60/70
SWEP.Primary.Cone				= 0.02
SWEP.Primary.ClumpCone			= 0.01
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 15
SWEP.RecoilPitchMul 			= 0.5
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 10
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.1
SWEP.SpreadRecoveryTime 		= 0.6
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.05
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.01
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(3.522, -2.518, -0.754), Vector(3.522, -0.518, -0.754), Vector(3.522, -2.518, -0.754) }
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

function SWEP:ShootEffects()
	if(!self.CVFireAnimIroned || (self.CVFireAnimIroned && !self:IsAiming())) then
		self.Weapon:SendWeaponAnim( ACT_VM_PRIMARYATTACK ) -- View model animation
	end
	
	self.Owner:SetAnimation( PLAYER_ATTACK1 ) -- 3rd Person Animation
	
	self.Weapon:EmitSound( self.Primary.Sound )
		
	if(!IsFirstTimePredicted()) then return end
	self:WatMuzzleEffects()

	timer.Simple( 0.4, function()
		if (CLIENT) then return end
		if(!self:IsValid()) then return end
		if(!self.Owner:IsValid()) then return end
		if(!self.Weapon:IsValid()) then return end
		self.Weapon:SendWeaponAnim( ACT_SHOTGUN_PUMP )
		self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav")
	end)
end

//Sorry, messy
function SWEP:SecondaryAttack()
	if(!IsValid(self)) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
	
	if(self:Clip1() <= 1) then
		self:PrimaryAttack()
		return
	end
	
	if(self.Owner:IsPlayer()) then
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
	
	if ( self.Owner:IsNPC() ) then return end
	
	self:OnPrimaryAttack()
	
	local recTime
	local coneAdd
	/*
	if(!self:IsCrouching()) then
		recTime = self.SpreadRecoveryTime
		coneAdd = self.SpreadConeAdd
	else
		recTime = self.SpreadRecoveryTimeCrouch
		coneAdd = self.SpreadConeAddCrouch
	end
	*/
	
	recTime = self.SpreadRecoveryTime
	coneAdd = self.SpreadConeAdd
	
	self:SetCone( math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( math.log10(math.exp(1)) * recTime ) ), self.Primary.Cone, 1000 ) )

	self:WatShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots*2, self:GetCone()*2 + self:SpreadMovementAdditive() )

	self:SetCone(self:GetCone() + coneAdd)
	
	self:TakePrimaryAmmo( 2 )

	self:Recoil()
	
	self:ShootEffects()
	
	if(self.SetFATOnShoot) then
		//self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		//self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()\
		self:SetFAT(CurTime() + self.Primary.Delay)
		self.FAT = CurTime() + self.Primary.Delay
	end
	
	self:SetLST( CurTime() )
end
