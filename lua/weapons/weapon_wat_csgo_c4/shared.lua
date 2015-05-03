
AddCSLuaFile( "shared.lua" )
local C4_CONFIGDATA = C4_CONFIGDATA or {}
SWEP.PrintName			= "C4"			
SWEP.Slot				= 2
SWEP.SlotPos			= 1


SWEP.ViewModelFOV		= 57
SWEP.ViewModelFlip		= false

SWEP.HoldType			= "camera"
SWEP.Base				= "weapon_wattlebase"
//SWEP.Category			= ""

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.ViewModel 			= "models/weapons/c_csgo_c4.mdl"
SWEP.WorldModel			= "models/weapons/w_c4.mdl"
SWEP.UseHands = true

SWEP.Weight				= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

SWEP.Primary.Sound			= Sound("Weapon_357.Single")
SWEP.Primary.Damage			= 1000
SWEP.Primary.ClipSize		= 1
SWEP.Primary.Delay			= 1
SWEP.Primary.DefaultClip	= 2
SWEP.Primary.Automatic		= true
SWEP.Primary.Ammo			= "Thumper"

SWEP.Secondary.Automatic	= false
SWEP.Secondary.Ammo			= "none"

SWEP.PlantRange = 64

SWEP.DTFloats = {"Planting", "DeployFinishTime"} 

function SWEP:Deploy()
	if self:GetOwner():GetAmmoCount(self.Primary.Ammo) < 1 then self:GetOwner():ChatPrint("You have no more C4.") return false end
	self:Reload()
	self:SetPlanting(false)
	self:WatDeploy()
	return true
end

function SWEP:CanPlant()
	local trace = self:GetOwner():GetEyeTrace()
	if trace.Hit and (trace.HitPos:Distance(self:GetOwner():GetShootPos()) < self.PlantRange ) then
		return (not (trace.Entity:IsNPC() or trace.Entity:IsPlayer()))
	end
	return (self:Clip1() > 0)
end

function SWEP:PrimaryAttack()
	if not self:GetPlanting() and self:CanPlant() then
		self:SetNextPrimaryFire(CurTime() + self.Primary.Delay)

		self:SetPlanting(true)
		--self:SetLST(CurTime())
		self:SendWeaponAnim(ACT_VM_PRIMARYATTACK)
		self:SetFAT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime())
	end
end

function SWEP:Think()
	//if not self:GetOwner():KeyDown(IN_ATTACK) then self:SetPlanting(false) end
	if self:GetPlanting() and self:GetOwner():KeyDown(IN_ATTACK) and (self:GetFAT() <= CurTime()) and self:CanPlant() then
		self:CreateBomb()
		self:SetClip1(self:Clip1() - 1)
		
		//timer.Simple(0, function() 
			if SERVER and IsValid(self) and (self:GetOwner():GetAmmoCount(self.Primary.Ammo) < 1) then self:GetOwner():ConCommand("lastinv") return end 
		//end)
		self:Reload()
		self:SetPlanting(false)
	elseif not self:GetOwner():KeyDown(IN_ATTACK) or not self:CanPlant() or not self:GetPlanting() then
		self:SetPlanting(false)
		if self:GetDeployFinishTime() <= CurTime() then
			self:SendWeaponAnim(ACT_VM_IDLE)
			--self:SetFAT(self:GetOwner():GetViewModel():SequenceDuration() + CurTime())
		end
	end
end

function SWEP:Reload()
	if self:Clip1() < 1 and (self:GetOwner():GetAmmoCount(self.Primary.Ammo) > 1) then
		self:DefaultReload(ACT_VM_DRAW)
	end
end

function SWEP:CreateBomb()
	if self:CanPlant() and SERVER then
		local trace = self:GetOwner():GetEyeTrace()
		local c4 = ents.Create("ent_nop_c4")
		--local c4 = ents.Create("ent_sf_c4")
		c4:SetPos(trace.HitPos + trace.HitNormal)
		trace.HitNormal.z = trace.HitNormal.z * -1
		c4:SetAngles( (trace.HitNormal):Angle() - Angle(90,180,0) )

		c4.BlastDamage = self.Primary.Damage or c4.BlastDamage or 1000

		c4.Owner = self:GetOwner()
		c4:SetOwner(game.GetWorld())

		if c4.CPPISetOwner then
			c4.CPPISetOwner(game.GetWorld())
		end

		c4:Spawn()

			--node:Spawn()
			node.IsC4CooldownNode = true
			node.C4_TimeOfCooldown = CurTime()
			SafeRemoveEntityDelayed( node, C4_CONFIGDATA.PlantCoolDownTime or 30 )

		--c4:SetMaterial("models/weapons/csgo/c4")

		if IsValid(trace.Entity:GetPhysicsObject()) and IsValid(c4:GetPhysicsObject()) then
			constraint.Weld(c4, trace.Entity, 0, trace.PhysicsBone, 0, true, false)
		end
	end
end
