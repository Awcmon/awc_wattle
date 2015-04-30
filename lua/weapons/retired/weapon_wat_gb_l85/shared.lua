
AddCSLuaFile( "shared.lua" )



	local SoundData = {
		name = "Weapon_L85.magin",
		channel = CHAN_ITEM,
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/magin.wav"
	}
	sound.Add(SoundData)

	local SoundData = {
		name = "Weapon_L85.magout",
		channel = CHAN_ITEM,
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/magout.wav"
	}
	sound.Add(SoundData)

	local SoundData = {
		name = "Weapon_L85.boltslap",
		channel = CHAN_ITEM,
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/boltslap.wav"
	}
	sound.Add(SoundData)

	local SoundData = {
		name = "Weapon_L85.boltpull",
		channel = CHAN_ITEM,
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/boltpull.wav"
	}
	sound.Add(SoundData)

	local SoundData = {
		name = "Weapon_L85.cloth",
		channel = "CHAN_ITEM",
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/cloth.wav"
	}
	sound.Add(SoundData)

	local SoundData = {
		name = "Weapon_L85.Tap",
		channel = CHAN_ITEM,
		volume = "1.0",
		pitch = "PITCH_NORM",

		sound = "weapons/L85A2/tap.wav"
	}
	sound.Add(SoundData)
		
	local SoundData = {
		name = "Weapon_L85.Single",
		channel = CHAN_WEAPON,
//		volume = "1.0",
//		pitch = "PITCH_NORM",
	
		sound = "weapons/L85A2/l85-1.wav"
	}
	sound.Add(SoundData)



---------
SWEP.PrintName 					= "L85A2"
SWEP.Category 					= "Wattle GB"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/weapons/v_rif_l85.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_aug.mdl"
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
SWEP.CSMuzzleFlashes 			= false
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "smg1"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 40
SWEP.Primary.Sound				= Sound("Weapon_L85.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/650
SWEP.Primary.Cone				= 0.0005
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash3prong", "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.ReloadClipInTime			= 1.3

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.951, -0.127, -0.361), Vector(-0.851, -0.327, 0.361), Vector(-0.751, -0.527, -0.361) }
SWEP.SprintAng					= { Angle(-19.212, -34.609, 29.861), Angle(-17.212, -29.609, 29.861), Angle(-19.212, -26.609, 29.861) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(-9.341, -0.769, 4.01), Vector(6.215, 3.038, 1.2) }
SWEP.InspectAng 				= { Angle(0, -60.627, -20.592), Angle(0, 0, 19.93) }
SWEP.IronSightsPos 				= Vector(2.599, -3.661, 0.439)
SWEP.IronSightsAng 				= Angle(0, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

function SWEP:DrawScopeReticule(x, y)
	surface.SetDrawColor( 0, 0, 0, 255 )
	
	//The triangle
	for i = -math.Round(ScrW()/80,0), math.Round(ScrW()/80,0) do
//		surface.SetDrawColor( 255, 0, 40, 255 )
		surface.DrawLine( x+i, y + ScrW()/30, x, y )
		
		//Black lines
		if(math.abs(i) > ScrW()/300) then
//			surface.SetDrawColor( 0, 0, 0, 255 )
			for k = 1, 5 do
				surface.DrawLine( x+i, y + ScrW()/30, x+i*(3-(k*0.1)), y + ScrW()/2 )
			end
		end
		
	end
end

//02.15.15, FOV 57
//SWEP.InspectPos 				= { Vector(-5.503, 0.18, -2.201), Vector(5.627, 0.495, 2.073) }
//SWEP.InspectAng 				= { Angle(14.199, -39.6, -10), Angle(0.001, 0.001, 39.21) }


//SWEP.SprintPos	 				= { Vector(-0.851, -0.327, -0.361), Vector(-0.851, -0.327, -0.361), Vector(-0.851, -0.327, -0.361) }
//SWEP.SprintAng					= { Angle(-17.212, -29.609, 29.861), Angle(-17.212, -29.609, 29.861), Angle(-17.212, -29.609, 29.861) }

//Vector(-0.851, 1.751, -0.058)
//Angle(-17.021, -34.637, 29.861)

/*
Vector(-5,3,3)
Angle(-20,-42,-5)
*/

