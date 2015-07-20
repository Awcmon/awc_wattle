
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "M1A1 Thompson"
SWEP.Category 					= "Wattle DoD:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/v_thompson.mdl"
SWEP.WorldModel					= "models/weapons/w_thompson.mdl"
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

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 180
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 45
SWEP.Primary.DamageFalloff		= 0.1
SWEP.Primary.Sound				= Sound("Weapon_Thompson.Shoot")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/700
SWEP.Primary.Cone				= 0.0025
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 2
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 1
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.007
SWEP.SpreadRecoveryTime 		= 0.5
SWEP.SpreadConeAddCrouch 		= 0.01
SWEP.SpreadRecoveryTimeCrouch 	= 1

SWEP.SpreadModVel 				= 0.035
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.04
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.8

SWEP.VMPosOffset 				= Vector(0, 0, 0)
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

SWEP.UseIrons					= false
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

SWEP.HitDistance = 100
local HitSound = Sound( "Melee.Hit" )
function SWEP:SecondaryAttack()
	self.Weapon:SetNextSecondaryFire( CurTime() + 0.5 )
	self.Weapon:SetNextPrimaryFire( CurTime() + 1 )

	self:SendWeaponAnim(ACT_VM_SECONDARYATTACK)
	local AnimationTime = (self.Owner:GetViewModel():SequenceDuration())
	self:SetFAT(CurTime() + AnimationTime)
	self.FAT = CurTime() + AnimationTime
	self:EmitSound("Weapon_Knife.Swing")
		
	if(SERVER) then
		local dmginfo = DamageInfo()
		dmginfo:SetDamageType( DMG_BULLET )
		dmginfo:SetAttacker( self.Owner )
		dmginfo:SetDamageForce( self.Owner:GetRight() * 49125 + self.Owner:GetForward() * 99984 )
		dmginfo:SetInflictor(self)
		self.Owner:LagCompensation( true )
		local fwdEnts = ents.FindInCone( self.Owner:EyePos()-(self.Owner:GetAimVector()*30), self.Owner:GetAimVector(), 80, 45)
		table.RemoveByValue(fwdEnts, self.Owner)
		table.RemoveByValue(fwdEnts, self)
		table.RemoveByValue(fwdEnts, self.ViewModel)
		table.RemoveByValue(fwdEnts, self.Owner:GetViewModel())

//			print(table.ToString(fwdEnts))
		
		for k, ent in pairs( fwdEnts ) do
			if(IsValid(ent)) then
				if(math.abs(self.Owner:EyeAngles().yaw-ent:EyeAngles().yaw)<70) then
					dmginfo:SetDamage( 1000 )
				else
					dmginfo:SetDamage( math.random( 30, 40 ) )
				end
				dmginfo:SetDamagePosition( ent:EyePos() )
				timer.Simple( math.Clamp((k - 1) * .05, 0, .3) , function() if(IsValid(ent)) then ent:EmitSound( "Weapon_Punch.HitPlayer" ) end end)
				ent:SetVelocity(Vector(self.Owner:GetAimVector().x,self.Owner:GetAimVector().y,0.5)*1500)
				ent:TakeDamageInfo( dmginfo )
			end
		end
		self.Owner:LagCompensation( false )
		local tr = util.TraceLine( {
			start = self.Owner:GetShootPos(),
			endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 80,
			filter = self.Owner
		} )
		
		if (tr.Entity:IsWorld()) then
			if(tr.Hit) then
				self.Owner:EmitSound( "Weapon_Punch.HitWorld" ) 
			end
		end
		
	end
end
