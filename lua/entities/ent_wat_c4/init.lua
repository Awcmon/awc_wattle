AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
include("shared.lua")

ENT.BlastDamage = 500
ENT.Fuse = 30

/*---------------------------------------------------------
   Name: ENT:Initialize()
---------------------------------------------------------*/
function ENT:Initialize()

	self.Owner = self.Entity.Owner

	if !IsValid(self.Owner) then
		self:Remove()
		return
	end

	self.Entity:SetModel("models/weapons/csgo_world/w_c4_planted.mdl")
	self.Entity:PhysicsInit(SOLID_VPHYSICS)
	self.Entity:SetMoveType(MOVETYPE_VPHYSICS)
	self.Entity:SetSolid(SOLID_VPHYSICS)
	self.Entity:DrawShadow(false)

	self.Entity:SetCollisionGroup(COLLISION_GROUP_WEAPON)
	
	local phys = self.Entity:GetPhysicsObject()

	if phys:IsValid() then
		phys:Wake()
	end

	self.ThinkTimer = CurTime() + (self.Fuse or 5)
end

/*---------------------------------------------------------
   Name: ENT:Think()
---------------------------------------------------------*/
function ENT:Think()
	if self.ThinkTimer < CurTime() then
		SafeRemoveEntityDelayed(self, .01)
		self:Explosion()
	end
end

/*---------------------------------------------------------
   Name: ENT:Explosion()
---------------------------------------------------------*/
function ENT:Explosion()
if not IsValid(self) then return end

local RedBloodEffect = {"explosion_silo","explosion_silo"}
local BloodTrail = ents.Create( "info_particle_system" )
BloodTrail:SetKeyValue( "effect_name", table.Random(RedBloodEffect) )
BloodTrail:SetKeyValue( "start_active", tostring( 1 ) )
BloodTrail:Spawn()
BloodTrail:Activate()
BloodTrail:Fire( "Kill", nil, 0.2 )
BloodTrail:SetPos(self.Entity:GetPos())
	
	util.BlastDamage(self, self:GetOwner() or self, self.Entity:GetPos(), 1000, self.BlastDamage)
	
	local shake = ents.Create("env_shake")
		shake:SetOwner(self.Owner)
		shake:SetPos(self.Entity:GetPos())
		shake:SetKeyValue("amplitude", "2000")	// Power of the shake
		shake:SetKeyValue("radius", "500")		// Radius of the shake
		shake:SetKeyValue("duration", "2.5")	// Time of shake
		shake:SetKeyValue("frequency", "255")	// How har should the screenshake be
		shake:SetKeyValue("spawnflags", "4")	// Spawnflags(In Air)
		shake:Spawn()
		shake:Activate()
		shake:Fire("StartShake", "", 0)

	local explo = ents.Create("env_explosion")
		explo:SetOwner(self.Owner)
		explo:SetPos(self.Entity:GetPos())
		explo:SetKeyValue("iMagnitude", "0")
		explo:Spawn()
		explo:Activate()
		explo:Fire("Explode", "", 0)

	//self.Entity:EmitSound("csgo/c4/explode1.wav",400)
	self.Entity:Remove()
end
