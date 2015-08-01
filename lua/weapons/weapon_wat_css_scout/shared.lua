
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Steyr Scout"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_snip_scout.mdl"
SWEP.WorldModel					= "models/weapons/w_snip_scout.mdl"
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

SWEP.Primary.ClipSize			= 10
SWEP.Primary.DefaultClip 		= 100
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

SWEP.Primary.Damage 			= 78
SWEP.Primary.DamageFalloff		= 0.00025
SWEP.Primary.Sound				= Sound("Weapon_Scout.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/50
SWEP.Primary.Cone				= 0.0005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "effect_wat_tracer_smoke"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1.5
SWEP.RecoilPitchMul 			= 0.175
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.5
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.085
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.075
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.6

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(0.5,-2.5-4,-4), Vector(0.5,-2.5-4,-4), Vector(0.5,-2.5-4,-4) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,0,-1)*0.5, Vector(0,-1,1)*0.5, Vector(0.5,0,-1)*0.5 }
SWEP.WalkAng					= { Angle(-0.5,1,-2)*0.5, Angle(0.5,0,2)*0.5, Angle(-0.5,-1,3)*0.5 }
SWEP.InspectPos 				= { Vector(8.883, -4, 0), Vector(-10.7, -1.153, 3.655) }
SWEP.InspectAng 				= { Angle(5.678, 38.159, 17.649), Angle(-7.246, -8.81, -23.761) }
SWEP.IronSightsPos 				= Vector(-5.281, -5.026, 0.239)
SWEP.IronSightsAng 				= Angle(0.3, 2.5, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 13

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 65
SWEP.SetFATOnShoot 				= true
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
	
	local clen = 16*wr		//Crosshair length
	local gap = 16*wr
	local lgap = 360*wr

	//Crosshair
	surface.SetDrawColor( 255, 0, 0, 255 )
	surface.DrawLine( x + clen, y, x - clen, y )
	surface.DrawLine( x, y + clen, x, y - clen )
	
	//Fancy lines
	surface.SetDrawColor( 0, 0, 0, 255 )
	ADrawLine( x, y + ScrW(), x, y + (clen+gap), 1, 150 )
	ADrawLine( x, y - ScrW(), x, y - (clen+gap), 1, 150 )
	ADrawLine( x+ ScrW(), y, x + (clen+gap), y, 1, 150 )
	ADrawLine( x- ScrW(), y, x - (clen+gap), y, 1, 150 )
	//Draw thick side lines
	ADrawLine( x, y - ScrW(), x, y - (clen+lgap), 10, 0 )
	ADrawLine( x+ ScrW(), y, x + (clen+lgap), y, 10, 0 )
	ADrawLine( x- ScrW(), y, x - (clen+lgap), y, 10, 0 )
	//Right side windage stuff
	for i = 0, 6 do
		local height
		if(i%2 == 1) then
			height = 10*wr
		else
			height = 15*wr
		end
		local disp = ((clen+gap)+(gap*i*3))	//displacement
		ADrawLine( x + disp, y - height, x + disp, y + height, 1, 175)
	end
	
	//Left side windage stuff
	for i = 0, 6 do
		local height
		if(i%2 == 1) then
			height = 10*wr
		else
			height = 15*wr
		end
		local disp = -((clen+gap)+(gap*i*3))	//displacement
		ADrawLine( x + disp, y - height, x + disp, y + height, 1, 175)
	end
	
	//Top windage stuff
	for i = 0, 6 do
		local height
		if(i%2 == 1) then
			height = 10*wr
		else
			height = 15*wr
		end
		local disp = -((clen+gap)+(gap*i*3))	//displacement
		ADrawLine( x - height, y + disp, x + height, y + disp, 1, 175)
	end
	
	//Bottom windage stuff
	for i = 0, 8 do
		local height
		if(i%2 == 1) then
			height = 10*wr
		else
			height = 15*wr
		end
		local disp = ((clen+gap)+(gap*i*3))	//displacement
		ADrawLine( x - height, y + disp, x + height, y + disp, 1, 175)
	end
end
