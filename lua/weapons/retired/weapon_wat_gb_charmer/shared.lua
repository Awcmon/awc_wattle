
AddCSLuaFile( "shared.lua" )

local SoundData = {
	name = "Weapon_Charmer.Clipout",
	channel = CHAN_ITEM,
	volume = "1.0",
	pitch = "PITCH_NORM",

	sound = "weapons/charmer/charmer_clipout.wav"
}
sound.Add(SoundData)

local SoundData = {
	name = "Weapon_Charmer.Clipin",
	channel = CHAN_ITEM,
	volume = "1.0",
	pitch = "PITCH_NORM",

	sound = "weapons/charmer/charmer_clipout.wav"
}
sound.Add(SoundData)

local SoundData = {
	name = "Weapon_Charmer.Slideback",
	channel = CHAN_ITEM,
	volume = "1.0",
	pitch = "PITCH_NORM",

	sound = "weapons/charmer/charmer_slideback.wav"
}
sound.Add(SoundData)
	
local SoundData = {
	name = "Weapon_Charmer.Single",
	channel = CHAN_WEAPON,
//	volume = "1.0",
//	pitch = "PITCH_NORM",

	sound = "weapons/charmer/charmer-1.wav"
}
sound.Add(SoundData)



---------
SWEP.PrintName 					= "The Charmer"
SWEP.Category 					= "Wattle GB"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/weapons/v_charmer.mdl"
SWEP.WorldModel			= "models/weapons/w_smg_mp5.mdl"
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

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= false
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 30
SWEP.Primary.Sound				= Sound("Weapon_Charmer.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/450
SWEP.Primary.Cone				= 0.005
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd = 0.4
SWEP.RecoilPitchMul = 0.2
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd = 0.5
SWEP.RecoilYawMul = 0.05

SWEP.SpreadConeAdd 				= 0.0055
SWEP.SpreadRecoveryTime 		= 1
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.0001
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.1
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.6

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.951, -0.127, -0.361), Vector(-0.851, -0.327, 1), Vector(-0.751, -0.527, -0.361) }
SWEP.SprintAng					= { Angle(-19.212, -34.609, 29.861), Angle(-17.212, -29.609, 29.861), Angle(-19.212, -26.609, 29.861) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(-6.783, -4.347, -1.617), Vector(8.487, -0.23, 3.203) }
SWEP.InspectAng 				= { Angle(7.227, -56.422, 0), Angle(0, 0, 19.18) }
SWEP.IronSightsPos 				= Vector(4.599, 0, 2.279)
SWEP.IronSightsAng 				= Angle(-0.017, 0, 0)
SWEP.SwayPosDiv					= 45
SWEP.SwayAngDiv					= 10

SWEP.UseIrons					= true
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}
