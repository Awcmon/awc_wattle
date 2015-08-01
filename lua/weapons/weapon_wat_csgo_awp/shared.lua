
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "AWP"
SWEP.Category 					= "Wattle CS:GO"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_csgo_awp.mdl"
SWEP.WorldModel					= "models/weapons/w_snip_awp.mdl"
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
SWEP.Primary.DefaultClip 		= 70
SWEP.Primary.Ammo 				= "357"
SWEP.Primary.Automatic 			= true

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 160
SWEP.Primary.DamageFalloff		= 0.0005
SWEP.Primary.Sound				= Sound("Weapon_CAWP.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/41
SWEP.Primary.Cone				= 0.00005
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 6
SWEP.RecoilPitchMul 			= 0.175
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.0025
SWEP.SpreadRecoveryTime 		= 0.5
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0.3
SWEP.SpreadModVelMax 			= 0.0002
SWEP.SpreadModInAir				= 0.075
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 2.1

SWEP.VMPosOffset 				= Vector(1,-3,-1)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(0.5,-5.5,-4), Vector(0.5,-5.5,-4), Vector(0.5,-5.5,-4) }
SWEP.SprintAng					= { Angle(-12,32,-35), Angle(-6,35,-35), Angle(-12,38,-35) }
SWEP.WalkPos 					= { Vector(-0.5,0,0), Vector(0,0,0.5), Vector(0.5,0,0) }
SWEP.WalkAng					= { Angle(-0.5,-0.5,-1), Angle(0.5,0,0), Angle(-0.5,0.5,0.5) }
SWEP.InspectPos 				= { Vector(8.883, 0.089, 0), Vector(-10.7, -1.153, 3.655) }
SWEP.InspectAng 				= { Angle(5.678, 38.159, 17.649), Angle(-7.246, -8.81, -23.761) }
SWEP.IronSightsPos 				= Vector(-5.281, -5.026, 0.239)
SWEP.IronSightsAng 				= Angle(0.3, 2.5, 0)
SWEP.SwayPosDiv					= 30
SWEP.SwayAngDiv					= 13

SWEP.UseIrons					= true
SWEP.UseScope					= true
SWEP.Zoom 						= 60
SWEP.SetFATOnShoot 				= true
SWEP.CVFireAnimIroned			= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}
