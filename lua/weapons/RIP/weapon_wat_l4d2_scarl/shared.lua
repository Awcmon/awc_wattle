
AddCSLuaFile( "shared.lua" )

---------
SWEP.PrintName 					= "SCAR-L"
SWEP.Category 					= "Wattle L4D2"
SWEP.Base 						= "weapon_wattlebase_l4d2_bullet"
SWEP.Spawnable 					= true
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel			= "models/v_models/v_desert_rifle.mdl"
SWEP.WorldModel			= "models/weapons/w_rif_m4a1.mdl"
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

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= false
---------
SWEP.HoldType = "ar2"

SWEP.Primary.Damage 			= 55
SWEP.Primary.Sound				= Sound("Rifle_Desert.Fire")
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 60/600
SWEP.Primary.Cone				= 0.0015
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"

SWEP.ReloadClipInTime			= 1.9

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(10, -3, -5), Vector(9, -6, -6), Vector(10, -3, -5) }
SWEP.SprintAng					= { Angle(41, 57, 42), Angle(39, 58, 42), Angle(41, 59, 42) }
SWEP.WalkPos 					= { Vector(-0.15,0,0), Vector(0,0,0.5), Vector(0.15,0,0) }
SWEP.WalkAng					= {  Angle(-0.5,0.5,-1), Angle(0,0,0), Angle(-0.5,-0.5,0.5) }
SWEP.InspectPos 				= { Vector(11.208, 0.472, -0.675), Vector(-5.253, 2.663, 1.73) }
SWEP.InspectAng 				= { Angle(12.067, 56.402, 18.287), Angle(0, 0, -36.32) }
SWEP.IronSightsPos 				= Vector(-1.122, -1.361, 0.51)
SWEP.IronSightsAng 				= Angle(-0.015, 0, 0)

//SWEP.SprintPos	 				= { Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033), Vector(10.468, -2.633, -5.033) }
//SWEP.SprintAng					= { Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381), Angle(40.645, 61.626, 42.381) }
//SWEP.SprintPos	 				= { Vector(10, -3, -5), Vector(10, -3, -5), Vector(10, -3, -5) }
//SWEP.SprintAng					= { Angle(41, 62, 42), Angle(41, 62, 42), Angle(41, 62, 42) }

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 30
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats 					= {}
SWEP.DTBools 					= {}
SWEP.DTInts 					= {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}
