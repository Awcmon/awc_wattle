
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Dual Berettas"
SWEP.Category 					= "Wattle CS:S"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= "Max Payne"
SWEP.Instructions 				= "Whack the sucka"

SWEP.ViewModel					= "models/weapons/cstrike/c_pist_elite.mdl"
SWEP.WorldModel					= "models/weapons/w_pist_elite.mdl"
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
SWEP.Slot 						= 1
SWEP.SlotPos 					= 1
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= 30
SWEP.Primary.DefaultClip 		= 120
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType 					= "duel"

SWEP.Primary.Damage 			= 35
SWEP.Primary.DamageFalloff		= 0.03
SWEP.Primary.Sound				= Sound("Weapon_Elite.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/1000
SWEP.Primary.Cone				= 0.006
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 1.5
SWEP.RecoilPitchMul 			= 0.2
SWEP.RecoilPitchMulAddMax		= 3
SWEP.RecoilYawAdd 				= 1
SWEP.RecoilYawMul 				= 0.02

SWEP.SpreadConeAdd 				= 0.0075
SWEP.SpreadRecoveryTime 		= 0.8
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.62

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(-0.5, -19.5, -16), Vector(0, -17.5, -15), Vector(0.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(12.486, -7.711, -0.457), Vector(1.736, -3.172, -12.464) }
SWEP.InspectAng 				= { Angle(15.713, 31.607, -0.935), Angle(24.268, 12.053, -13.905) }
SWEP.IronSightsPos 				= Vector(-5.921, -2.708, 2.599)
SWEP.IronSightsAng 				= Angle(0.057, -0.029, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 11

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}
