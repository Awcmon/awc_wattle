
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "M1 Garand"
SWEP.Category 					= "Wattle DoD:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/v_garand.mdl"
SWEP.WorldModel					= "models/weapons/w_garand.mdl"
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

SWEP.Primary.ClipSize			= 8
SWEP.Primary.DefaultClip 		= 80
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

SWEP.Primary.Damage 			= 110
SWEP.Primary.DamageFalloff		= 0.0001
SWEP.Primary.Sound				= Sound("Weapon_Garand.Shoot")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/400
SWEP.Primary.Cone				= 0.00001
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 4
SWEP.RecoilPitchMul 			= 1
SWEP.RecoilYawAdd 				= 2
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 1.25
SWEP.SpreadConeAddCrouch 		= 0.01
SWEP.SpreadRecoveryTimeCrouch 	= 1

SWEP.SpreadModVel 				= 0.08
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.04
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1

SWEP.VMPosOffset 				= Vector(-3.3, 2, 3.5)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-1.111, -1.118, -12.12) - Vector(-3.3, 2, 3.5), Vector(-1.111, 0.118, -3.12) - Vector(-3.3, 2, 3.5), Vector(-1.111, -1.118, -12.12) - Vector(-3.3, 2, 3.5) }
SWEP.SprintAng					= { Angle(10.435, 38.009, -20.748), Angle(13.435, 42.009, -26.748), Angle(10.435, 52.009, -20.748) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(10.229, -12.091, -1.801) + Vector(-3.3, 2, 3.5), Vector(0.36, -8.553, -11.716) + Vector(-3.3, 2, 3.5) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 26.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.95, 6, 5.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 20

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 45
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {
	["ValveBiped.bolt"] = { scale = Vector(1, 1, 1), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:OnPrimaryAttack()
	if( self:Clip1() <= 1 ) then 
		self:EjectClip()
	end
end

function SWEP:EjectClip()
		// --Shamelessly stolen from Mad Cow
		if (SERVER) then
		local clip = ents.Create("ent_garand_clip_effect")

		self.Owner:EmitSound("Weapon_Garand.ClipDing")

		//local angleofeject = Angle(self.Owner:EyeAngles()) + Angle(0,0,85)
		local angleofeject = self.Owner:EyeAngles():Up()

		//clip:SetAngles(angleofeject)
		clip:SetAngles(angleofeject:Angle())

//		if (self:GetIronsights() == false) then
			local pos = self.Owner:GetShootPos()
				pos = pos + self.Owner:GetForward() * 10
				pos = pos + self.Owner:GetRight() * 5
				pos = pos + self.Owner:GetUp() * -1
				
				if(self:IsAiming()) then
					pos = pos + self.Owner:GetRight() * self.VMPosOffset.x + self.Owner:GetForward() * self.VMPosOffset.y + self.Owner:GetUp() * self.VMPosOffset.z
				end
			clip:SetPos(pos)
//		else
//			clip:SetPos (self.Owner:EyePos() + (self.Owner:GetAimVector()))
//		end

		clip:SetOwner(self.Owner)
		clip:SetPhysicsAttacker(self.Owner)
		clip:Spawn()
		clip:Activate()

		self.Owner:SetAnimation(PLAYER_ATTACK1)

		local phys = clip:GetPhysicsObject()
		//phys:SetVelocity(angleofeject * 42)
		//phys:SetVelocity(self.Owner:GetAimVector() * 42)
		phys:SetVelocity(self.Owner:EyeAngles():Up() * 70 + self.Owner:GetVelocity())
		phys:AddAngleVelocity(Vector(0, 500, 0))
	end
end

function SWEP:Reload()
	if(self:Clip1() > 0) then return end
	self:WatReload(ACT_VM_RELOAD)
end

function SWEP:WatViewModelCalcViewFireAnimIroned( ply, origin, angles, fov )

	if(!self.CVFireAnimIroned) then return self.cvfaiviewmodel end

	if ((self.CVFAIOldLST != self:GetLST()) && self:IsAiming()) then
		self.ViewModelBoneMods["ValveBiped.bolt"].pos.z = -2.8
		self.cvfaiviewmodel.origin.y = math.Approach(self.cvfaiviewmodel.origin.y, -5, 5)
		self.CVFAIOldLST = self:GetLST()
	end
	
	self.ViewModelBoneMods["ValveBiped.bolt"].pos.z = math.Approach(self.ViewModelBoneMods["ValveBiped.bolt"].pos.z, 0, FrameTime()*15)
	self.cvfaiviewmodel.origin.y = SmoothApproach(self.cvfaiviewmodel.origin.y, 0, FrameTime()*10)
	
	return self.cvfaiviewmodel
end

