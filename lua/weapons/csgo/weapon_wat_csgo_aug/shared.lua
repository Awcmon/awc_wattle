
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "AUG"
SWEP.Category 					= "Wattle CS:GO"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_csgo_aug.mdl"
SWEP.WorldModel					= "models/weapons/w_rif_aug.mdl"
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
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage 			= 39
SWEP.Primary.DamageFalloff		= 0.001
SWEP.Primary.Sound				= Sound("Weapon_caug.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/666
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 0.8
SWEP.RecoilPitchMul 			= 0.3
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.3
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.0775
SWEP.SpreadModVelMax 			= 0.0775
SWEP.SpreadModInAir				= 0.075
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2

SWEP.VMPosOffset 				= Vector(0,-2,-1)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3), Vector(-0.5,-2.5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,0,0), Vector(0,0,0.5), Vector(0.5,0,0) }
SWEP.WalkAng					= { Angle(-0.5,-0.5,-1), Angle(0.5,0,0), Angle(-0.5,0.5,0.5) }
SWEP.InspectPos 				= { Vector(4.193, -0.713, -3.876), Vector(-11.336, 0.141, 3.638) }
SWEP.InspectAng 				= { Angle(11.142, 32.567, 0), Angle(0, -0.013, -39.793) }
SWEP.IronSightsPos 				= Vector(-4.573, -0.438, 0.56)
SWEP.IronSightsAng 				= Angle(-0.730, 1.639, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 15

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 50
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}
/*
function SWEP:DrawCrosshairs(alpha)
	local ply = LocalPlayer()

	local hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*0.45):Forward()*10000)
	
	local coords = hitpos:ToScreen()
	
	local x = coords.x
	local y = coords.y

	
	gap = 3
	
	length = 4

	surface.SetDrawColor( 255, 255, 255, alpha )
		
	surface.DrawLine( x - length - gap, y, x - gap, y )
	surface.DrawLine( x + length + gap, y, x + gap, y )
	surface.DrawLine( x, y - length - gap, x, y - gap )
	surface.DrawLine( x, y + length + gap, x, y + gap )

	surface.SetDrawColor( 0, 0, 0, alpha )

	surface.DrawLine( x - length - gap, y+1, x - gap, y+1 )
	surface.DrawLine( x + length + gap, y+1, x + gap, y+1 )
	surface.DrawLine( x+1, y - length - gap, x+1, y - gap )
	surface.DrawLine( x+1, y + length + gap, x+1, y + gap )

	surface.DrawLine( x - length - gap, y-1, x - gap, y-1 )
	surface.DrawLine( x + length + gap, y-1, x + gap, y-1 )
	surface.DrawLine( x-1, y - length - gap, x-1, y - gap )
	surface.DrawLine( x-1, y + length + gap, x-1, y + gap )
	
	if((alpha < 50) && (self:GetFAT() < CurTime())) then
		hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*0.8):Forward()*10000)
	
		coords = hitpos:ToScreen()
		
		x = coords.x
		y = coords.y
	
		surface.SetDrawColor( 0, 255, 0, 255 )
		surface.SetTexture(surface.GetTextureID("effects/redflare"))
		surface.DrawTexturedRect(x-(ScrW()/40), y-(ScrW()/40), ScrW()/20, ScrW()/20)
	end
	
end
*/

function SWEP:WatDrawCrosshair(alpha)
	local ply = LocalPlayer()

	local hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*(WatRecoilTrack)):Forward()*10000)
	
	local coords = hitpos:ToScreen()
	
	local x = coords.x
	local y = coords.y
	/*
	self.DynCone = math.Clamp( self:GetCone() * math.exp( -(CurTime() - self:GetLST()) / ( self.RecoveryTime ) ), self.Primary.Cone, 1000 )
	
	if(CrOldLST != self:GetLST()) then
//		self.DynCone = self:GetCone()
//		print("Synced!")
		self.DynCone = self.DynCone + self.ConeAdd
		CrOldLST = self:GetLST()
	end
	*/
	gap = (self:CalculateCone() + self:SpreadMovementAdditive())*ScrW()
	
	length = 10

	surface.SetDrawColor( 255, 255, 255, alpha )
		
	surface.DrawLine( x - length - gap, y, x - gap, y )
	surface.DrawLine( x + length + gap, y, x + gap, y )
	surface.DrawLine( x, y - length - gap, x, y - gap )
	surface.DrawLine( x, y + length + gap, x, y + gap )

	surface.SetDrawColor( 0, 0, 0, alpha )

	surface.DrawLine( x - length - gap, y+1, x - gap, y+1 )
	surface.DrawLine( x + length + gap, y+1, x + gap, y+1 )
	surface.DrawLine( x+1, y - length - gap, x+1, y - gap )
	surface.DrawLine( x+1, y + length + gap, x+1, y + gap )

	surface.DrawLine( x - length - gap, y-1, x - gap, y-1 )
	surface.DrawLine( x + length + gap, y-1, x + gap, y-1 )
	surface.DrawLine( x-1, y - length - gap, x-1, y - gap )
	surface.DrawLine( x-1, y + length + gap, x-1, y + gap )
	
	if((alpha < 50) && (self:GetFAT() < CurTime())) then
		hitpos = (ply:GetShootPos() + (ply:GetAimVector():Angle() + ply:GetViewPunchAngles()*0.8):Forward()*10000)
	
		coords = hitpos:ToScreen()
		
		x = coords.x
		y = coords.y
	
		surface.SetDrawColor( 0, 255, 0, 255 )
		surface.SetTexture(surface.GetTextureID("effects/redflare"))
		surface.DrawTexturedRect(x-(ScrW()/40), y-(ScrW()/40), ScrW()/20, ScrW()/20)
	end
	
end
