
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "G3SG1"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_snip_g3sg1.mdl"
SWEP.WorldModel					= "models/weapons/w_snip_g3sg1.mdl"
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

SWEP.Primary.ClipSize			= 20
SWEP.Primary.DefaultClip 		= 80
SWEP.Primary.Ammo 				= "357"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage 			= 55
SWEP.Primary.DamageFalloff		= 0.00005
SWEP.Primary.Sound				= Sound("Weapon_G3SG1.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/500
SWEP.Primary.Cone				= 0.0005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 3.5
SWEP.RecoilPitchMul 			= 0.175
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 2
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.15
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.1
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 3.15

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(0.5,-2.5-4,-4), Vector(0.5,-2.5-4,-4), Vector(0.5,-2.5-4,-4) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,0,-1)*0.5, Vector(0,-1,1)*0.5, Vector(0.5,0,-1)*0.5 }
SWEP.WalkAng					= { Angle(-0.5,1,-2)*0.5, Angle(0.5,0,2)*0.5, Angle(-0.5,-1,3)*0.5 }
SWEP.InspectPos 				= { Vector(8.883, -4, 0), Vector(-10.7, -1.153, 3.655) }
SWEP.InspectAng 				= { Angle(5.678, 38.159, 17.649), Angle(-7.246, -8.81, -23.761) }
SWEP.IronSightsPos 				= Vector(-7.841, -12.705, 2.559)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 13

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 65
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:DrawScopeReticule(x, y)
	local wr = ScrW()/1280
	local hr = ScrH()/960
	
	//Standard scope reticule
	surface.SetDrawColor( 0, 0, 0, 255 )
	surface.DrawLine( x + 1000, y, x, y )
	surface.DrawLine( x - 1000, y, x, y )
	surface.DrawLine( x, y - 1000, x, y )
	surface.DrawLine( x, y + 1000, x, y )
	
	//Draw those 6 dangly lines
	for i = -3,3 do
		int, remainder = math.modf( i/2 )
		surface.DrawLine( x + i*(ScrW()/50), y, x + i*(ScrW()/50), y + (ScrW()/100) + (0.5-math.abs(remainder))*(ScrW()/100) )
	end
	
	//Draw thick edge bars
	local rectDist = ScrW()/8
	local rectWidth = ScrW()/200
	for i = -math.Round(rectWidth/2, 0), math.Round(rectWidth/2, 0) do
		surface.DrawLine( x + 1000, y + i, x + rectDist, y + i )
	end
	for i = -math.Round(rectWidth/2, 0), math.Round(rectWidth/2, 0) do
		surface.DrawLine( x - ScrW(), y + i, x - rectDist, y + i )
	end
	for i = -math.Round(rectWidth/2, 0), math.Round(rectWidth/2, 0) do
		surface.DrawLine( x + i, y + ScrW(), x + i, y + rectDist )
	end
end
