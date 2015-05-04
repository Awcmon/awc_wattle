
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "AR34"
SWEP.Category 					= "Wattle Sci-Fi"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_rif_famas.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_famas.mdl"
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

SWEP.Primary.ClipSize			= 36
SWEP.Primary.DefaultClip 		= 144
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 36
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_FAMAS.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/320
SWEP.Primary.Cone				= 0.001
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash3prong", "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.4
SWEP.RecoilPitchMul 			= 0.1
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.005
SWEP.SpreadRecoveryTime 		= 0.2
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.125
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.05
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.5

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

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= false
//EBT = EndBurstTime
SWEP.DTFloats 					= {"EBT"}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {"BurstProgress"}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {
	["scope++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0.094, 0, 0.763), angle = Angle(-90.43, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["ammocounter+"] = { type = "Quad", bone = "v_weapon", rel = "ammocounter", pos = Vector(0, 0.5, 0), angle = Angle(180, -180, -180), size = 0.0032, draw_func = nil},
	["Screen"] = { type = "Model", model = "models/hunter/blocks/cube075x2x025.mdl", bone = "v_weapon.famas", rel = "", pos = Vector(0.061, -3.401, 9.199), angle = Angle(0, 0, 16), size = Vector(0.023, 0.032, 0.023), color = Color(0, 0, 0, 255), surpresslightning = false, material = "Debug/debugdrawflat", skin = 0, bodygroup = {} },
	["scope++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, 0, -0.144), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.039), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["ammocounter"] = { type = "Quad", bone = "v_weapon", rel = "Screen", pos = Vector(0, 0, -0.171), angle = Angle(180, 0, 1), size = 0.007, draw_func = nil},
	["scope+"] = { type = "Model", model = "models/hunter/blocks/cube05x1x025.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, 0.694, 1.463), angle = Angle(0, 0, 90), size = Vector(0.021, 0.035, 0.046), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon.famas", rel = "", pos = Vector(0.048, -5.651, 9.545), angle = Angle(0, 0, 0), size = Vector(0.039, 0.039, 0.039), color = Color(25, 25, 25, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope+++++++"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, 0, 0), angle = Angle(180, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(77, 184, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["scope+++"] = { type = "Model", model = "models/props_c17/lampshade001a.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, 0, 1.988), angle = Angle(0, 0, 180), size = Vector(0.075, 0.075, 0.254), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, 0, 3.112), angle = Angle(0, 0, 180), size = Vector(0.014, 0.014, 0.014), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "v_weapon", rel = "scope", pos = Vector(0, -0.091, 1.125), angle = Angle(180, 0, -90.475), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["scope++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0.094, 0, 0.763), angle = Angle(-90.43, 0, 0), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} },
	["scope+"] = { type = "Model", model = "models/hunter/blocks/cube05x1x025.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(0, 0.694, 1.463), angle = Angle(0, 0, 90), size = Vector(0.021, 0.035, 0.046), color = Color(50, 50, 50, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope++++++++"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0, 0, 3.181), angle = Angle(0, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(77, 184, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["scope++++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.091, 0.899, -10), angle = Angle(-10, 0, 0), size = Vector(0.012, 0.012, 0.012), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(2.273, 0.899, -8.75), angle = Angle(100, 180, 0), size = Vector(0.039, 0.039, 0.039), color = Color(25, 25, 25, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope+++++++"] = { type = "Model", model = "models/props_phx/construct/metal_dome360.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0, 0, 0.25), angle = Angle(180, 0, 0), size = Vector(0.009, 0.009, 0.009), color = Color(77, 184, 255, 255), surpresslightning = false, material = "phoenix_storms/gear", skin = 0, bodygroup = {} },
	["scope+++"] = { type = "Model", model = "models/props_c17/lampshade001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0, 0, 1.988), angle = Angle(0, 0, 180), size = Vector(0.075, 0.075, 0.254), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope++++"] = { type = "Model", model = "models/hunter/tubes/tube2x2x1.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0, 0, 3.112), angle = Angle(0, 0, 180), size = Vector(0.014, 0.014, 0.014), color = Color(40, 40, 40, 255), surpresslightning = false, material = "models/props_debris/building_template010a", skin = 0, bodygroup = {} },
	["scope+++++"] = { type = "Model", model = "models/props_c17/oildrum001.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "scope", pos = Vector(0, -0.091, 1.125), angle = Angle(180, 0, -90.475), size = Vector(0.016, 0.016, 0.016), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/weapons/v_stunbaton/w_shaft01a", skin = 0, bodygroup = {} }
}

function SWEP:Initialize()

	self:WatInitialize()

	self.VElements["ammocounter"].draw_func = function( weapon )
             
        draw.SimpleText(""..weapon:Clip1(), "CV", 0, 0, Color(self:GetBurstProgress()*85,255-self:GetBurstProgress()*85,255-self:GetBurstProgress()*85,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
     
    end
		
	self.VElements["ammocounter+"].draw_func = function( weapon )
             
        draw.SimpleText(""..math.Round(self:Ammo1()/36), "CV", 0, 0, Color(0,255,255,255), TEXT_ALIGN_CENTER, TEXT_ALIGN_TOP)
     
    end

end

function SWEP:DrawScopeReticule(x, y)
	local gap = (self:CalculateCone() + self:SpreadMovementAdditive())*ScrW()

	surface.SetDrawColor( 0, 0, 0, 255 )
	
	surface.DrawLine( x + 1000, y, x+gap, y )
	surface.DrawLine( x - 1000, y, x-gap, y )
	surface.DrawLine( x, y - 1000, x, y-gap )
	surface.DrawLine( x, y + 1000, x, y+gap )
	
	//DIAMOND THING 1
	surface.SetDrawColor( 0, 255, 255, 255 )
	local rad = gap
	local pid2 = math.pi/2
	for i = 0, 3 do
		local ang = pid2*i
		for k = 0, 1 do
			local angsep = math.pi/6
			surface.DrawLine(x+math.cos(ang+angsep*(k-1))*rad, y+math.sin(ang+angsep*(k-1))*rad, x+math.cos(ang+angsep*k)*rad, y+math.sin(ang+angsep*k)*rad)
		end
	end
	//surface.DrawCircle(x, y, gap, Color(0,255,255,255))
	
	/*Diamond thing 2
	local rad = ScrW()/10	//radius of the entire thing
	local lrad = ScrW()/30	//local radius of a corner
	local pid2 = math.pi/2
	local pid4 = math.pi/4
	for i = 0, 3 do
		local ang = pid2*i
		local lang = ang-math.pi
		for k = 0, 1 do
			local x1,y1,x2,y2
			x1 = x+ math.cos(ang)*rad 
			y1 = y+ math.sin(ang)*rad
			x2 = x1 + math.cos(lang-pid4+pid2*k)*lrad
			y2 = y1 + math.sin(lang-pid4+pid2*k)*lrad
			surface.DrawLine(x1,y1,x2,y2)
		end
	end*/
	
end

SWEP.CyclicRate = 60/900
function SWEP:PrimaryAttack()
	if(!IsValid(self)) then return end
	if ( !self:CanPrimaryAttack() && self.Owner:IsPlayer() ) then return end
	if ( self:GetReloading() ) then return end
	if ( self:IsSprinting() ) then return end
/*	
	if(self.Owner:IsPlayer()) then
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay )
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
	*/
	if ( self.Owner:IsNPC() ) then return end
	
	if(self:GetBurstProgress() == 0) then
		self:SetBurstProgress(1)
		self:SetEBT(CurTime()+self.CyclicRate*4)
	end
end

function SWEP:ShootBullet()
	
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
	
	if(IsFirstTimePredicted()) then
		self:ShootEffects()
	end
	
	if(self.SetFATOnShoot) then
		self:SetFAT(CurTime() + self.Owner:GetViewModel():SequenceDuration())
		self.FAT = CurTime() + self.Owner:GetViewModel():SequenceDuration()
	end
	
	self:SetLST( CurTime() )
end

function SWEP:Think()
	self:WatThink()
	self:WatInterruptedReloadThink()
	if(!IsValid(self)) then return end
	
	if(CurTime() > self:GetEBT()) then
		self:SetBurstProgress(0)
	end
	
	if(self:GetBurstProgress() == 0) then return end
	
	if(self:GetBurstProgress() <= 3) then
		if(CurTime() > self:GetNextPrimaryFire()) then
			if(self:Clip1() <= 0) then self:SetBurstProgress(0) return end
			self:SetNextPrimaryFire( CurTime() + self.CyclicRate )
			self:ShootBullet()
			self:SetBurstProgress(self:GetBurstProgress() + 1)
		end
	else
		self:SetBurstProgress(0)
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	end
end
