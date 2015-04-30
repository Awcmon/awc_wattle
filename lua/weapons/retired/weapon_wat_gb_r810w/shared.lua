
AddCSLuaFile( "shared.lua" )



local SoundData = {
	name = "Weapon_Neo.Clipout",
	channel = CHAN_ITEM,
	sound = "weapons/r810w/r810w_clipout.wav"
}
sound.Add(SoundData)

local SoundData = {
	name = "Weapon_Neo.Clipin",
	channel = CHAN_ITEM,
	sound = "weapons/r810w/r810w_clipin.wav"
}
sound.Add(SoundData)

local SoundData = {
	name = "Weapon_Neo.Bolt",
	channel = CHAN_ITEM,
	sound = "weapons/r810w/r810w_bolt.wav"
}
sound.Add(SoundData)
		
local SoundData = {
	name = "Weapon_Neo.Single",
	channel = CHAN_WEAPON,
	sound = "weapons/r810w/r810w-1.wav"
}
sound.Add(SoundData)



---------
SWEP.PrintName 					= "R810w Neobychnaya"
SWEP.Category 					= "Wattle GB"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/weapons/v_snip_r810w.mdl"
SWEP.WorldModel			= "models/weapons/w_snip_awp.mdl"
SWEP.ViewModelFlip 				= true
SWEP.ViewModelFOV 				= 71

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
SWEP.SlotPos 					= 10
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 10
SWEP.Primary.DefaultClip 		= 90
SWEP.Primary.Ammo 				= "ar2"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 120
SWEP.Primary.Sound				= Sound("Weapon_Neo.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/50
SWEP.Primary.Cone				= 0.00005
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.ReloadClipInTime			= 2.2

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-8.5, -10, -5.7), Vector(-8.5, -7, -5), Vector(-8.5, -10, -5.7) }
SWEP.SprintAng					= { Angle(37.5, -58, -39), Angle(37.5, -61.5, -39), Angle(37.5, -63, -39) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(-9.424, -4.47, -0.743), Vector(6.651, 0.275, 1.343) }
SWEP.InspectAng 				= { Angle(18.002, -54.452, -21.427), Angle(0, 0, 25.253) }
SWEP.IronSightsPos				= Vector(2.96, 0, 0.479)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

//SWEP.SprintPos	 				= { Vector(-8.5, -8, -5.7), Vector(-8.5, -8, -5.7), Vector(-8.5, -8, -5.7) }
//SWEP.SprintAng					= { Angle(37.5, -61.5, -39), Angle(37.5, -61.5, -39), Angle(37.5, -61.5, -39) }

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 80
SWEP.SetFATOnShoot 				= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:DrawScopeReticule(x, y)
	surface.SetDrawColor( 255, 0, 0, 255 )
	surface.DrawLine(x, y, x, y+ScrW())
	surface.DrawLine(x, y, x+ScrW(), y)
	surface.DrawLine(x, y, x, y-ScrW())
	surface.DrawLine(x, y, x-ScrW(), y)
	
	surface.SetDrawColor( 0, 0, 0, 255 )
	local Width1 = ScrW()/1600
	local Width2 = ScrW()/200
	local Gap1 = ScrW()/120
	local Gap2 = ScrW()/12
	for i = -math.Round(Width1,0), math.Round(Width1,0) do
		surface.DrawLine(x+i, y+Gap1, x+i, y+ScrW())
		surface.DrawLine(x+Gap1, y+i, x+ScrW(), y+i)
		surface.DrawLine(x+i, y-Gap1, x+i, y-ScrW())
		surface.DrawLine(x-Gap1, y+i, x-ScrW(), y+i)
	end
	for i = -math.Round(Width2,0), math.Round(Width2,0) do
		surface.DrawLine(x+i, y+Gap2, x+i, y+ScrW())
		surface.DrawLine(x+Gap2, y+i, x+ScrW(), y+i)
		surface.DrawLine(x+i, y-Gap2, x+i, y-ScrW())
		surface.DrawLine(x-Gap2, y+i, x-ScrW(), y+i)
	end
end

