
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "C4 Timed Explosive"
SWEP.Category 					= "Wattle CS:GO"
SWEP.Base 						= "weapon_wattlebase"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "BFG"
SWEP.Contact 					= ""
SWEP.Purpose 					= "Much Thanks to Bugboy1028"
SWEP.Instructions 				= "After planting, there are 30 seconds on the fuse."

SWEP.ViewModel 					= "models/weapons/c_csgo_c4.mdl"
SWEP.WorldModel					= "models/weapons/w_c4.mdl"
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
SWEP.Slot 						= 4
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip 		= 2
SWEP.Primary.Ammo 				= "thumper"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= true
---------
SWEP.HoldType 					= "camera"

SWEP.Primary.Damage				= 1000
SWEP.Primary.Sound				= ""
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"

SWEP.ReloadClipInTime			= 0

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(5,0,0), Vector(4,1.5,1), Vector(1,3,-2) }
SWEP.SprintAng					= { Angle(-8,15,10), Angle(-3,20,-20), Angle(-8,25,5) }
SWEP.WalkPos 					= { Vector(-1,0,0), Vector(0,0,1), Vector(1,0,0) }
SWEP.WalkAng					= { Angle(-1,-1,-2), Angle(1,0,0), Angle(-1,1,1) }
SWEP.InspectPos 				= { Vector(-5.503, 0.18, -2.201), Vector(5.627, 0.495, 2.073) }
SWEP.InspectAng 				= { Angle(14.199, -39.6, -10), Angle(0.001, 0.001, 39.21) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 50
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats = {"DeployFinishTime"}
SWEP.DTBools = {"Planting"} 
SWEP.DTInts = {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

--
SWEP.PlantRange = 72
SWEP.IronSightsPos = Vector(0, -20, -20)
SWEP.IronSightsAng = Vector(0, 0, 0)

function SWEP:Deploy()
	if self:GetOwner():GetAmmoCount(self.Primary.Ammo) < 1 then 
		self:GetOwner():ChatPrint("You have no more C4.") 
		self.VMPosOffset = Vector(0, -20, -20)
		return false
	else
		self.VMPosOffset = Vector(0,0,0)
	end
	self:SetReloading(false)
	self:SetFRT(CurTime())
	self:SetPlanting(false)
	self:WatDeploy()
	return true
end

function SWEP:CanPlant()
	local trace = self:GetOwner():GetEyeTrace()
	if self:GetOwner():GetAmmoCount(self.Primary.Ammo) < 1 then return false end
	if trace.Hit and (trace.HitPos:Distance(self:GetOwner():GetShootPos()) < self.PlantRange ) then
		return (not (trace.Entity:IsNPC() or trace.Entity:IsPlayer()))
	end
	return false
end

function SWEP:PrimaryAttack()
	if not self:GetPlanting() and self:CanPlant() and not self:GetReloading() then
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

		self:SetPlanting(true)
		--self:SetLST(CurTime())
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		self:SetFAT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime() - .75)
		--self:SetFRT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime())
	end
end

function SWEP:Think()
	if self:GetOwner():GetAmmoCount(self.Primary.Ammo) > 0 then self.VMPosOffset = Vector(0,0,0) end
	//if not self:GetOwner():KeyDown(IN_ATTACK) then self:SetPlanting(false) end
	if self:GetPlanting() and self:GetOwner():KeyDown(IN_ATTACK) and (self:GetFAT() <= CurTime()) and self:CanPlant() and not self:GetReloading() then
		self:CreateBomb()
		self:GetOwner():SetAmmo( self:GetOwner():GetAmmoCount(self.Primary.Ammo) - 1, self.Primary.Ammo )	
		//timer.Simple(0, function() 
			if SERVER and IsValid(self) and (self:GetOwner():GetAmmoCount(self.Primary.Ammo) < 1) then self:GetOwner():ConCommand("lastinv") return end 
		//end)
		self:SetReloading(true)
	elseif self:GetReloading() and self:GetPlanting() then
		self:SetPlanting(false)
		self:SendWeaponAnim(ACT_VM_DRAW)
		self:SetFRT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime())			
	elseif (not self:GetOwner():KeyDown(IN_ATTACK) or not self:CanPlant() or not self:GetPlanting()) and (self:GetFRT() < CurTime()) then
		self:SetPlanting(false)
		self:SetReloading(false)
		if self:GetDeployFinishTime() <= CurTime() then
			self:SendWeaponAnim(ACT_VM_IDLE)
			--self:SetFAT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime())
		end
	end
end

function SWEP:CreateBomb()
	if self:CanPlant() and SERVER then
		local trace = self:GetOwner():GetEyeTrace()
		local c4 = ents.Create("ent_wat_c4")
		--local c4 = ents.Create("ent_sf_c4")
		c4:SetPos(trace.HitPos + trace.HitNormal)
		trace.HitNormal.z = trace.HitNormal.z * -1
		c4:SetAngles( (trace.HitNormal):Angle() - Angle(90,180,0) )

		c4.BlastDamage = self.Primary.Damage or c4.BlastDamage or 1000

		c4.Owner = self:GetOwner()
		c4:SetOwner(self:GetOwner())

		if c4.CPPISetOwner then
			c4.CPPISetOwner(game.GetWorld())
		end

		c4:Spawn()
		--c4:SetMaterial("models/weapons/csgo/c4")

		if IsValid(trace.Entity:GetPhysicsObject()) and IsValid(c4:GetPhysicsObject()) then
			constraint.Weld(c4, trace.Entity, 0, trace.PhysicsBone, 0, true, false)
		end
	end
end
