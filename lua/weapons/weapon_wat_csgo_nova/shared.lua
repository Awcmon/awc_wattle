
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Nova"
SWEP.Category 					= "Wattle CS:GO"
SWEP.Base 						= "weapon_wattlebase_bullet_shotgun"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_csgo_nova.mdl"
SWEP.WorldModel					= "models/weapons/w_shot_m3super90.mdl"
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

SWEP.Primary.ClipSize			= 7
SWEP.Primary.DefaultClip 		= 42
SWEP.Primary.Ammo 				= "buckshot"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "shotgun"

SWEP.Primary.Damage 			= 25
SWEP.Primary.DamageFalloff		= 0.2
SWEP.Primary.Sound				= Sound("Weapon_cnova.Single")
SWEP.Primary.NumShots			= 8
SWEP.Primary.Delay				= 60/68
SWEP.Primary.Cone				= 0.0075
SWEP.Primary.ClumpCone			= 0.015
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 5
SWEP.RecoilPitchMul 			= 0.14
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.01
SWEP.SpreadRecoveryTime 		= 0.7
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.02
SWEP.SpreadModVelMax 			= 0.02
SWEP.SpreadModInAir				= 0.015
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 1.4

SWEP.VMPosOffset 				= Vector(0,-5,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5,-2.5-5,-3), Vector(-0.5,-2.5-5,-3), Vector(-0.5,-2.5-5,-3) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,-1,-1), Vector(0,0,1), Vector(0.5,-1,-1) }
SWEP.WalkAng					= { Angle(-0.5,1,-2)*0.5, Angle(0.5,0,2)*0.5, Angle(-0.5,-1,3)*0.5 }
SWEP.InspectPos 				= { Vector(9.104, -8.75, -6.04), Vector(-9.947, -0.403, 2.441) }
SWEP.InspectAng 				= { Angle(15.173, 52.056, 0), Angle(0, 0, -27.774) }
SWEP.IronSightsPos 				= Vector(-4.724, -7.507, 0.796)
SWEP.IronSightsAng 				= Angle(-0.343, 0.043, 0)
SWEP.SwayPosDiv					= 40
SWEP.SwayAngDiv					= 15

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 20
SWEP.SetFATOnShoot 				= true

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}


