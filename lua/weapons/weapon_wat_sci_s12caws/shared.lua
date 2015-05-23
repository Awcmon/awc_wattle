
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "S12 CAWS"
SWEP.Category 					= "Wattle Sci-Fi"
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
SWEP.Slot 						= 2
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 12
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "buckshot"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= true

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 10
SWEP.Primary.DamageFalloff		= 0.01
SWEP.Primary.Sound				= Sound("weapons/shotgun/shotgun_fire6.wav")
SWEP.Primary.NumShots			= 12
SWEP.Primary.Delay				= 60/120
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0.03
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.4
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 0.5
SWEP.SpreadConeAddCrouch 		= 0.1
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.02
SWEP.SpreadModVelMax 			= 0.225
SWEP.SpreadModInAir				= 0.02
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.65

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2), Angle(0.5,0,2), Angle(-0.5,-1,3) }
SWEP.InspectPos 				= { Vector(12.229, -7.091, -5.801), Vector(0.36, -4.553, -11.716) }
SWEP.InspectAng 				= { Angle(28.993, 44.664, 18.545), Angle(38.395, 0, 0) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 12

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {"ShellsLoaded"}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {
	["tritiumglow+"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01", rel = "tritium+", pos = Vector(0.319, 0, 0.4), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["tritium++"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01", rel = "rail_detail", pos = Vector(-2.106, -0.422, -0.601), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["tritium"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01", rel = "rail_detail", pos = Vector(8, 0, -0.35), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel_compensator"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0.009, 0.8, 6.926), angle = Angle(0, 0, 0), size = Vector(0.041, 0.029, 0.247), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "ValveBiped.Bip01", rel = "rail_backmount2", pos = Vector(0, 6.32, -0.02), angle = Angle(0, 0, 0), size = Vector(0.032, 0.118, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["rail_detail"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01", rel = "rail", pos = Vector(0, -2.771, 0.55), angle = Angle(180, 90, 0), size = Vector(0.039, 0.009, 0.05), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["rail_frontmount"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "ValveBiped.Bip01", rel = "rail", pos = Vector(0, 5.9, -0.77), angle = Angle(0, 0, 90), size = Vector(0.032, 0.024, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["ghostring"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01", rel = "rail_detail", pos = Vector(-2, 0, -0.281), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["rail_backmount"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Gun", rel = "", pos = Vector(0, -2.079, -4.849), angle = Angle(90, 0, -90), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["tritium+"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01", rel = "rail_detail", pos = Vector(-2.106, 0.421, -0.601), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["tritiumglow"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01", rel = "tritium", pos = Vector(0.319, 0, 0.2), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["tritiumglow++"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01", rel = "tritium++", pos = Vector(0.319, 0, 0.4), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["rail_backmount2"] = { type = "Model", model = "models/hunter/triangles/1x05x1.mdl", bone = "ValveBiped.Bip01", rel = "rail_backmount", pos = Vector(0.693, 0, 1.1), angle = Angle(0, 90, 0), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["tritiumglow+"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "tritium+", pos = Vector(0.319, 0, 0.4), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["tritium++"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_detail", pos = Vector(-2.106, -0.422, -0.601), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["tritium"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_detail", pos = Vector(8, 0, -0.35), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["barrel_compensator"] = { type = "Model", model = "models/hunter/misc/roundthing2.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(23.607, 0.791, -5.974), angle = Angle(0, 90, 97.666), size = Vector(0.041, 0.025, 0.104), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/metalset_1-2", skin = 0, bodygroup = {} },
	["rail"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_backmount2", pos = Vector(0, 6.32, -0.02), angle = Angle(0, 0, 0), size = Vector(0.032, 0.118, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["rail_backmount2"] = { type = "Model", model = "models/hunter/triangles/1x05x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_backmount", pos = Vector(0.693, 0, 1.1), angle = Angle(0, 90, 0), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["rail_frontmount"] = { type = "Model", model = "models/hunter/blocks/cube1x2x05.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail", pos = Vector(0, 5.9, -0.77), angle = Angle(0, 0, 90), size = Vector(0.032, 0.024, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["ghostring"] = { type = "Model", model = "models/hunter/tubes/tube1x1x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_detail", pos = Vector(-2, 0, -0.281), angle = Angle(90, 0, 0), size = Vector(0.012, 0.012, 0.009), color = Color(255, 255, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["tritiumglow++"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "tritium++", pos = Vector(0.319, 0, 0.4), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["tritium+"] = { type = "Model", model = "models/items/battery.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail_detail", pos = Vector(-2.106, 0.421, -0.601), angle = Angle(0, 180, 0), size = Vector(0.079, 0.079, 0.079), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["tritiumglow"] = { type = "Sprite", sprite = "sprites/glow04", bone = "ValveBiped.Bip01_R_Hand", rel = "tritium", pos = Vector(0.319, 0, 0.2), size = { x = 0.7, y = 0.7 }, color = Color(0, 255, 200, 255), nocull = true, additive = true, vertexalpha = true, vertexcolor = true, ignorez = false},
	["rail_backmount"] = { type = "Model", model = "models/hunter/triangles/trapezium3x3x1c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10.086, 1.274, -6.908), angle = Angle(-5.202, 1.067, 177.419), size = Vector(0.032, 0.032, 0.032), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} },
	["rail_detail"] = { type = "Model", model = "models/props_phx/trains/tracks/track_2x.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "rail", pos = Vector(0, -2.771, 0.55), angle = Angle(180, 90, 0), size = Vector(0.009, 0.05, 0.039), color = Color(150, 150, 150, 255), surpresslightning = false, material = "models/props_canal/canal_bridge_railing_01c", skin = 0, bodygroup = {} }
}

function SWEP:PrimaryAttack()
	if(!IsValid(self)) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
	
	if(self.Owner:IsPlayer()) then
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
	
	if ( self.Owner:IsNPC() ) then return end
	
	local recTime
	local coneAdd
	if(!self:IsCrouching()) then
		recTime = self.SpreadRecoveryTime
		coneAdd = self.SpreadConeAdd
	else
		recTime = self.SpreadRecoveryTimeCrouch
		coneAdd = self.SpreadConeAddCrouch
	end

	self:SetCone( math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( math.log10(math.exp(1)) * recTime ) ), self.Primary.Cone, 1000 ) )

	self:WatShootBullet( self.Primary.Damage, self.Primary.Recoil, self.Primary.NumShots, self:GetCone() + self:SpreadMovementAdditive() )

	self:SetCone(self:GetCone() + coneAdd)
	
	self:TakePrimaryAmmo( 1 )

	self:Recoil()
	
	self:ShootEffects()
	
	timer.Simple( 0.1, function()
		if (CLIENT) then return end
		if(!self:IsValid()) then return end
		if(!self.Owner:IsValid()) then return end
		if(!self.Weapon:IsValid()) then return end
		self.Weapon:SendWeaponAnim( ACT_SHOTGUN_PUMP )
		self.Owner:EmitSound("weapons/shotgun/shotgun_cock.wav")
	end)
	
	if(self.SetFATOnShoot) then
		//self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		//self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()\
		self:SetFAT(CurTime() + self.Primary.Delay)
		self.FAT = CurTime() + self.Primary.Delay
	end
	
	self:SetLST( CurTime() )
end


function SWEP:SecondaryAttack()

	if(!IsValid(self)) then return end
	if (self:Clip1() <= 0) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
	
	if(self:Clip1() > 0) then
		self:SetNextSecondaryFire( CurTime() + 0.2 )
		self:SetNextPrimaryFire( CurTime() + 0.2 )

		self.Weapon:SendWeaponAnim( ACT_SHOTGUN_PUMP )

		self.Weapon:EmitSound("weapons/shotgun/shotgun_cock.wav")
		
		if(SERVER) then
			self:TakePrimaryAmmo( 1 )
		end
		self:SetShellsLoaded(self:GetShellsLoaded() + 1)
	end
end

function SWEP:Think()
	self:WatThink()
	self:ReloadThink()

	//Secondary func think
	if((self:GetShellsLoaded() > 0 && !self.Owner:KeyDown(IN_ATTACK2)) || (self.Owner:KeyDown(IN_ATTACK2) && self:Clip1() == 0 && self:GetShellsLoaded() > 0) || (self.Owner:KeyDown(IN_ATTACK2) && self.Owner:KeyDown(IN_SPEED) && self:GetShellsLoaded() > 0)) then
	
//		if ( !self:CanPrimaryAttack() ) then return end
	
		// Play shoot sound
		for i = 0, self:GetShellsLoaded() do
			timer.Simple( i*0.005, function()
				self:EmitSound( self.Primary.Sound )
			end)
		end

		self:SetNextSecondaryFire( CurTime() + 1.5 )
		self:SetNextPrimaryFire( CurTime() + 1.5 )
		
		if(SERVER) then
			self.Owner:SetLocalVelocity(self.Owner:GetVelocity() + self.Owner:GetAimVector()*((self:GetShellsLoaded())*-150))
		end
		
		self:WatShootBullet( self.Primary.Damage * self:GetShellsLoaded(), self.Primary.Recoil, self.Primary.NumShots, self:GetCone() + self:SpreadMovementAdditive() )
	
		//Bug where it sometimes fires twice for some odd reason and this eems to stop that damn bug.
		self:SetShellsLoaded(0)

		
	end

end
