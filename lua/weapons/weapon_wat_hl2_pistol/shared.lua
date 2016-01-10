
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "Pistol"
SWEP.Category 					= "Wattle HL2"
SWEP.Base 						= "weapon_wattlebase_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel					= "models/weapons/c_pistol.mdl"
SWEP.WorldModel					= "models/weapons/w_pistol.mdl"
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

SWEP.Primary.ClipSize			= 18
SWEP.Primary.DefaultClip 		= 90
SWEP.Primary.Ammo 				= "pistol"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "pistol"

SWEP.Primary.Damage 			= 30
SWEP.Primary.DamageFalloff		= 0.075
SWEP.Primary.Sound				= Sound("Weapon_Pistol.Single")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/450
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.ClumpCone			= 0
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.RecoilPitchAdd 			= 2
SWEP.RecoilPitchMul 			= 0.5
SWEP.RecoilPitchMulAddMax		= 10
SWEP.RecoilYawAdd 				= 0.5
SWEP.RecoilYawMul 				= 0.05

SWEP.SpreadConeAdd 				= 0.02
SWEP.SpreadRecoveryTime 		= 0.5
SWEP.SpreadConeAddCrouch 		= 0.0015
SWEP.SpreadRecoveryTimeCrouch 	= 0.2

SWEP.SpreadModVel 				= 0
SWEP.SpreadModVelMax 			= 0
SWEP.SpreadModInAir				= 0.005
SWEP.SpreadModCrouch 			= 0.0002

SWEP.ReloadClipInTime			= 0.75

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(2.5, -19.5, -16), Vector(3, -17.5, -15), Vector(3.5, -19.5, -16) }
SWEP.SprintAng					= { Angle(70, 1, 0), Angle(70, 0, 0), Angle(70, -1.5, 0) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= { Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,1.5) }
SWEP.InspectPos 				= { Vector(16.149, -22, -4.721), Vector(3.08, -18.543, -16.634) }
SWEP.InspectAng 				= { Angle(70, 14.902, 48.02), Angle(57.903, 28.409, 0) }
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
SWEP.DTBools 					= { "Silenced" }
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

//Original Sprint
//Vector(3, -18.5, -15)

