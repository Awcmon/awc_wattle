
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "XM1014"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet_shotgun"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/cstrike/c_shot_xm1014.mdl"
SWEP.WorldModel					= "models/weapons/w_shot_xm1014.mdl"
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
SWEP.Primary.DefaultClip 		= 32
SWEP.Primary.Ammo 				= "buckshot"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "shotgun"

SWEP.Primary.Damage 			= 13
SWEP.Primary.DamageFalloff		= 0.05
SWEP.Primary.Sound				= Sound("Weapon_XM1014.Single")
SWEP.Primary.NumShots			= 6
SWEP.Primary.Delay				= 60/240
SWEP.Primary.Cone				= 0.01
SWEP.Primary.ClumpCone			= 0.03
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 8
SWEP.RecoilPitchMul 			= 0.14
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.025

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 0.6
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.055
SWEP.SpreadModVelMax 			= 0.05
SWEP.SpreadModInAir				= 0.055
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
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}


