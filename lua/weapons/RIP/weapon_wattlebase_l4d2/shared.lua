
AddCSLuaFile( "shared.lua" )

SWEP.Wattle 					= true
---------
SWEP.PrintName 					= "Wattle Base L4D2"
SWEP.Category 					= "Wattle"
SWEP.Base 						= "weapon_wattlebase"
SWEP.Spawnable 					= false
SWEP.AdminOnly 					= false
SWEP.m_WeaponDeploySpeed 		= 1

SWEP.Author 					= "Awcmon"
SWEP.Contact 					= ""
SWEP.Purpose 					= ""
SWEP.Instructions 				= ""

SWEP.ViewModel 					= "models/weapons/v_pistol.mdl" 
SWEP.WorldModel 				= "models/weapons/w_pistol.mdl" 
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
SWEP.DrawCrosshair 				= true
SWEP.Slot 						= 0
SWEP.SlotPos 					= 10
//SWEP.WepSelection 				= 
SWEP.CSMuzzleFlashes 			= true
SWEP.CSMuzzleX 					= false

SWEP.Primary.ClipSize			= -1
SWEP.Primary.DefaultClip 		= -1
SWEP.Primary.Ammo 				= "none"
SWEP.Primary.Automatic 			= false

SWEP.Secondary.ClipSize 		= -1
SWEP.Secondary.DefaultClip 		= -1
SWEP.Secondary.Ammo 			= "none"
SWEP.Secondary.Automatic 		= false

SWEP.UseHands 					= true
SWEP.AccurateCrosshair 			= true
---------
SWEP.AWCL4D2 					= true

SWEP.HoldType 					= "ar2"

SWEP.Primary.Damage				= 42
SWEP.Primary.Sound				= ""
SWEP.Primary.NumShots			= 1
SWEP.Primary.Delay				= 1
SWEP.Primary.Cone				= 0.01
SWEP.Primary.Tracer				= 0
SWEP.Primary.TracerName			= "Tracer"
SWEP.Primary.MuzzleEffects		= { "effect_wat_muzzle_flash", "effect_wat_muzzle_smoke", "effect_wat_muzzle_sparks" }

SWEP.ReloadClipInTime			= 0

SWEP.VMPosOffset 				= Vector(0,0,0)
SWEP.VMAngOffset				= Angle(0,0,0)
SWEP.SprintPos	 				= { Vector(5,0,0), Vector(4,1.5,1), Vector(1,3,-2) }
SWEP.SprintAng					= { Angle(-8,15,10), Angle(-3,20,-20), Angle(-8,25,5) }
SWEP.WalkPos 					= { Vector(-1,0,0), Vector(0,0,1), Vector(1,0,0) }
SWEP.WalkAng					= { Angle(-1,-1,-2), Angle(1,0,0), Angle(-1,1,1) }
SWEP.InspectPos 				= { Vector(-5.503, 0.18, -2.201), Vector(5.627, 0.495, 2.073) }
SWEP.InspectAng 				= { Angle(14.199, -39.6, -10), Angle(0.001, 0.001, 39.21) }
SWEP.IronSightsPos 				= Vector(-6.24, -1.5, -0.08)
SWEP.IronSightsAng 				= Angle(0, 0, 0)

SWEP.UseIrons					= false
SWEP.UseScope					= false
SWEP.Zoom 						= 50
SWEP.SetFATOnShoot 				= false

SWEP.DTFloats = {}
SWEP.DTBools = {}
SWEP.DTInts = {}

SWEP.ViewModelBoneMods = {}
SWEP.VElements = {}
SWEP.WElements = {}

if (CLIENT) then

	function L4D2PostDrawViewModel( vm, ply, weapon )
		if ( weapon.AWCL4D2 ) then
			local hands = LocalPlayer():GetHands()
			if ( IsValid( hands ) ) then
//				hands:SetModel( "models/weapons/arms/v_arms_bill.mdl" )
				hands:SetModel( "models/weapons/arms/v_arms_gambler_new.mdl" )
				hands:DrawModel() 
			end
		elseif ( weapon.UseHands || !weapon:IsScripted()) then
			local hands = LocalPlayer():GetHands()
			if( hands:IsValid() ) then
				local cl_playermodel = ply:GetInfo( "cl_playermodel" )
				local info = player_manager.TranslatePlayerHands( cl_playermodel )
				if ( info ) then
					hands:SetModel( info.model )
					hands:SetSkin( info.skin )
					hands:SetBodyGroups( info.body )
				end
			end
		end
	end
	hook.Add("PostDrawViewModel", "L4D2PostDrawViewModel", L4D2PostDrawViewModel)

end
